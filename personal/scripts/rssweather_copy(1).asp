<%


SUB makeWeatherStyles()
%>

<style type="text/css">

.weatherCurrentTemp
{
	font-size: 24px;
	font-family: sans-serif;
}

.weatherCurrentText
{
	font-size: 12px;
	font-family: sans-serif;
}


.weatherForecastDay
{
	position: relative;
	font-size: 18px;
	font-family: sans-serif;
	width: 200px;
}

.weatherForecastText
{
	font-size: 12px;
	font-family: sans-serif;
}

.weatherForecastHigh
{
	color: red;
	font-size: 16px;
	font-family: sans-serif;
}

.weatherForecastLow
{
	color: blue;
	font-size: 14px;
	font-family: sans-serif;
}




</style>

<%
END SUB


FUNCTION rssweather_getXML( sLocal, sURL, sRefer )

	SET rssweather_getXML = Nothing

	DIM	sFolder
	
	sFolder = rss_getFolder()
	IF "" = sFolder THEN
		EXIT FUNCTION
	END IF
	
	DIM sXMLFile
	sXMLFile = sFolder & "\" & sLocal
	
	DIM oXMLFile
	
	DIM	bFetch
	bFetch = FALSE
	
	IF g_oFSO.FileExists( sXMLFile ) THEN
		SET oXMLFile = g_oFSO.GetFile( sXMLFile )
		IF 30 < ABS(DATEDIFF( "n", oXMLFile.DateLastModified, NOW )) THEN
			bFetch = TRUE
		ELSEIF oXMLFile.Size < 20 THEN
			bFetch = TRUE
		END IF
		SET oXMLFile = Nothing
	ELSE
		'sXMLFile = ""
		bFetch = TRUE
	END IF
	
	IF bFetch THEN
		DIM	oHTTP
		DIM	nRS
		
		Set oHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP.3.0")
		oHTTP.Open "GET", sURL, False
		IF "" <> sRefer THEN
			oHTTP.SetRequestHeader "Referer", sRefer
		END IF
		oHTTP.SetRequestHeader "User-Agent", Request.ServerVariables("HTTP_USER_AGENT")
		ON ERROR RESUME NEXT
		oHTTP.Send
		ON ERROR GOTO 0
		DO
			nRS = oHTTP.readyState
		LOOP UNTIL nRS = 4

		IF 200 = oHTTP.Status THEN

		
			DIM	sText
			sText = oHTTP.responseXML.xml
			'sText = oHTTP.responseText
			
			'Response.Write Server.HTMLEncode(sText)
			
			IF LEN(sText) < 20 THEN
				
				sText = oHTTP.responseText
				sText = REPLACE( sText, "&", "&amp;" )
				sText = REPLACE( sText, "&amp;amp;", "&amp;" )
				sText = REPLACE( sText, "&amp;#", "&#" )
	
			END IF
			IF LEN(sText) < 20 THEN
			
				IF NOT g_oFSO.FileExists( sXMLFile ) THEN
					'Response.Write Server.HTMLEncode(sXMLFile)
					sXMLFile = ""
				END IF
			
			ELSE
			
				IF g_oFSO.FileExists( sXMLFile ) THEN
					g_oFSO.DeleteFile sXMLFile, TRUE
				END IF
		
				DIM	oFile
				SET oFile = g_oFSO.CreateTextFile( sXMLFile, TRUE, -1 )
				IF NOT Nothing IS oFile THEN
					DIM	i, j
					i = INSTR( sText, "<!DOCTYPE rss" )
					IF 0 < i THEN
						j = INSTR( i+1, sText, ">" )
						sText = LEFT(sText,i-1) & MID(sText,j+1)
					END IF
					i = INSTR( sText, "encoding=""UTF-8""" )
					IF 0 < i THEN
						sText = REPLACE( sText, " encoding=""UTF-8""", "" )
					END IF
					i = INSTR( sText, "encoding=""iso-8859-1""" )
					IF 0 < i THEN
						sText = REPLACE( sText, " encoding=""iso-8859-1""", "" )
					END IF
					i = INSTR( sText, "encoding=""ISO-8859-1""" )
					IF 0 < i THEN
						sText = REPLACE( sText, " encoding=""ISO-8859-1""", "" )
					END IF
					oFile.Write sText
					oFile.Close
					SET oFile = Nothing
				ELSE
					sXMLFile = ""
				END IF
	
			END IF
		END IF
		SET oHTTP = Nothing
		
	END IF
	
	IF "" <> sXMLFile THEN
	
		DIM	oXML
		SET oXML = Server.CreateObject("msxml2.DOMDocument")
		
		oXML.async = false
		oXML.resolveExternals = false
		oXML.load( sXMLFile )
		IF oXML.parseError.errorCode <> 0  AND  -1072898035 <> oXML.parseError.errorCode THEN
			Response.Write "Error in XML file: " & sXMLFile & "<br>" & vbCRLF
			Response.Write "Error Code: " & oXML.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "Error Reason: " & oXML.parseError.reason & "<br>" & vbCRLF
			Response.Write "Error Line: " & oXML.parseError.line & "<br>" & vbCRLF
			SET oXML = Nothing
			EXIT FUNCTION 
		END IF
		SET rssweather_getXML = oXML
		SET oXML = Nothing
	END IF

END FUNCTION


SUB rssweather( sZip )

	ON ERROR Goto 0
	
	
	DIM	oXML
	
	SET oXML = rssweather_getXML( "YahooWeather" & sZip & ".xml", "http://xml.weather.yahoo.com/forecastrss?p=" & sZip , "" )
	IF NOT Nothing IS oXML THEN

		DIM oXSL
		SET oXSL = Server.CreateObject("msxml2.DOMDocument")
		oXSL.async = FALSE
		oXSL.load( Server.MapPath( "scripts/rssweather.xslt" ) )
		IF oXSL.parseError.errorCode <> 0 THEN
			Response.Write "Error in XSLT file:<br>" & vbCRLF
			Response.Write "Error Code: " & oXSL.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "Error Reason: " & oXSL.parseError.reason & "<br>" & vbCRLF
			Response.Write "Error Line: " & oXSL.parseError.line & "<br>" & vbCRLF
		END IF

		DIM sText
		sText = oXML.transformNode(oXSL)
		IF 0 < LEN(sText) THEN
			Response.Write "<div class=""rssweather"">" & vbCRLF
			Response.Write sText
			Response.Write "</div>" & vbCRLF
		END IF
		
		SET oXSL = Nothing
		SET oXML = Nothing
	

	END IF
	
END SUB


%>