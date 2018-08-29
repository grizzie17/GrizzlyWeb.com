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


SUB rssweather_fetchHTTP( sContent, sMime, sURL, sQuery, bBinary )

	DIM	nStatus
	DIM	oHTTP
	
	sContent = ""
	bBinary = FALSE
	sMime = ""

	ON ERROR Resume Next
	SET oHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP.6.0")
	IF Nothing IS oHTTP THEN
		ON ERROR GOTO 0
		sContent = ""
		EXIT SUB
	END IF
	
	oHTTP.Open "HEAD", sURL, False
	oHTTP.Send
	IF 0 = Err.Number THEN
	
		nStatus = CINT(oHTTP.Status)
		
		IF 200 = nStatus  OR  202 = nStatus THEN
	
			oHTTP.Open "GET", sURL, False
			'oHTTP.SetRequestHeader "Referer", "http://localhost/test.asp"
			oHTTP.SetRequestHeader "User-Agent", Request.ServerVariables("HTTP_USER_AGENT")
			oHTTP.Send
			IF 0 = Err.Number THEN
				nStatus = CINT(oHTTP.Status)
				
				IF 200 = nStatus  OR  0 = nStatus THEN
				
					DIM	sNewMime
					
					sNewMime = oHTTP.getRequestHeader( "Content-Type" )
					bBinary = FALSE
					SELECT CASE sNewMime
					CASE "","text/xml"
						sContent = oHTTP.ResponseXML.xml
						sMime = "text/xml"
					CASE "text/txt"
						sContent = oHTTP.ResponseText
						sMime = "text/txt"
					CASE "image/gif"
						bBinary = TRUE
						sContent = oHTTP.responseBody
						sMime = "image/gif"
					CASE ELSE
						sContent = oHTTP.ResponseText
						sMime = "text/txt"
					END SELECT
								
				END IF
			END IF
		
		END IF
	END IF
	
	SET oHTTP = Nothing
	ON Error GOTO 0

END SUB


FUNCTION rssweather_assureCacheFolder()

	DIM	sCGIBIN
	sCGIBIN = findAppData()
	
	DIM	sCacheFolder
	sCacheFolder = g_oFSO.BuildPath( sCGIBIN, "cache\rss" )
	
	IF createFolderHierarchy( sCacheFolder ) THEN
		rssweather_assureCacheFolder = sCacheFolder
	ELSE
		rssweather_assureCacheFolder = ""
	END IF

END FUNCTION




FUNCTION rssweather_getXML( sLocal, sURL, sRefer )

	SET rssweather_getXML = Nothing

	DIM	sFolder
	
	sFolder = rssweather_assureCacheFolder()
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
	
		DIM	sContent
		DIM	sMime
		DIM	bBinary
		
		rssweather_fetchHTTP sContent, sMime, sURL, "", bBinary
		
		IF 0 < LEN(sContent) THEN
		
			IF LEN(sContent) < 20 THEN
				sXMLFile = ""
			ELSE
			
				IF g_oFSO.FileExists( sXMLFile ) THEN
					g_oFSO.DeleteFile sXMLFile, TRUE
				END IF
				
				DIM	oFile
				'ON ERROR Resume Next
				'SET oFile = g_oFSO.CreateTextFile( sXMLFile, TRUE, -1 )
				'IF NOT Nothing IS oFile THEN
					'DIM	i, j
					'i = INSTR( sText, "<!DOCTYPE rss" )
					''IF 0 < i THEN
					'	j = INSTR( i+1, sText, ">" )
					'	sText = LEFT(sText,i-1) & MID(sText,j+1)
					'END IF
					'i = INSTR( sText, "encoding=""UTF-8""" )
					'IF 0 < i THEN
					'	sText = REPLACE( sText, " encoding=""UTF-8""", "" )
					'END IF
					'i = INSTR( sText, "encoding=""iso-8859-1""" )
					'IF 0 < i THEN
					'	sText = REPLACE( sText, " encoding=""iso-8859-1""", "" )
					'END IF
					'i = INSTR( sText, "encoding=""ISO-8859-1""" )
					'IF 0 < i THEN
					'	sText = REPLACE( sText, " encoding=""ISO-8859-1""", "" )
					'END IF
					'oFile.Write sContent
					'oFile.Close
					'SET oFile = Nothing
				'ELSE
				'	'sXMLFile = ""
				'END IF
				'ON ERROR Goto 0
			END IF
		
		END IF

	ELSE
	

		IF g_oFSO.FileExists( sXMLFile ) THEN
		
			SET oFile = g_oFSO.OpenTextFile( sXMLFile, 1 )
			IF NOT Nothing IS oFile THEN
				sContent = oFile.ReadAll
				oFile.Close
				SET oFile = Nothing
			END IF
		
		END IF

	END IF
	
	IF "" <> sXMLFile  AND  0 < LEN(sContent) THEN
	
		DIM	oXML
		SET oXML = Server.CreateObject("msxml2.DOMDocument")
		
		oXML.async = false
		oXML.resolveExternals = false
		oXML.loadXML( sContent )
		IF oXML.parseError.errorCode <> 0  AND  -1072898035 <> oXML.parseError.errorCode THEN
			Response.Write "Error in XML file: " & sLocal & "<br>" & vbCRLF
			Response.Write "- Code: " & oXML.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "- Reason: " & oXML.parseError.reason & "<br>" & vbCRLF
			Response.Write "- Line: " & oXML.parseError.line & "<br>" & vbCRLF
			SET oXML = Nothing
			EXIT FUNCTION
		ELSE
			IF bFetch  AND  "" <> sXMLFile THEN
				ON ERROR RESUME NEXT
				oXML.save sXMLFile
				ON ERROR GOTO 0
			END IF
		END IF
		SET rssweather_getXML = oXML
		SET oXML = Nothing
	END IF

END FUNCTION


SUB rssweather2( sLocal, sURL )

	ON ERROR Goto 0
	
	
	DIM	oXML
	
	SET oXML = rssweather_getXML( sLocal, sURL , "" )
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