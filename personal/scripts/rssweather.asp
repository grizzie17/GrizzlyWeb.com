<%


SUB makeWeatherStyles()
%>

<style type="text/css">

.weatherCurrentTemp
{
	font-family: sans-serif;
}

.weatherCurrentText
{
	font-family: sans-serif;
}


.weatherForecastDay
{
	position: relative;
	font-family: sans-serif;
}

.weatherForecastText
{
	font-family: sans-serif;
}

.weatherForecastHigh
{
	color: red;
	font-family: sans-serif;
}

.weatherForecastLow
{
	color: blue;
	font-family: sans-serif;
}




</style>

<%
END SUB




SUB rssweather( sZip )

	ON ERROR Goto 0
	
	
	DIM	oXML
	
'	SET oXML = rss_getXMLCached( "YahooWeather" & sZip & ".xml", _
'					"http://xml.weather.yahoo.com/forecastrss?p=" & sZip , "", _
'					"h", 2, "d" )
	SET oXML = rss_getXML( "YahooWeather" & sZip & ".xml", "http://xml.weather.yahoo.com/forecastrss?p=" & sZip , "" )
	IF NOT Nothing IS oXML THEN

		DIM oXSL
		SET oXSL = Server.CreateObject("msxml2.DOMDocument.6.0")
		oXSL.async = FALSE
		oXSL.setProperty "ProhibitDTD", false
		oXSL.setProperty "ResolveExternals", true
		oXSL.setProperty "AllowDocumentFunction", true
		oXSL.setProperty "AllowXsltScript", true
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

FUNCTION rssAWSWeatherStream( sZip )

	rssAWSWeatherStream = ""

	ON ERROR Goto 0
	
	
	DIM	oXMLCurr
	DIM	oXMLFore
	DIM	oXMLAlrt
	DIM	sTextCurr
	DIM	sTextFore
	DIM	sTextAlrt
	DIM oXSL
	
	sTextCurr = ""
	sTextFore = ""
	
	SET oXMLAlrt = rss_getXMLCached( "AWSWxAlert" & sZip & ".xml", _
					"http://api.wxbug.net/getAlertsRSS.aspx?ACode=A7585877882&zipcode=" & sZip & "&unittype=0" , "", _
					"n", 20, "d" )
	SET oXMLCurr = rss_getXMLCached( "AWSWxCurrent" & sZip & ".xml", _
					"http://api.wxbug.net/getLiveWeatherRSS.aspx?ACode=A7585877882&zipcode=" & sZip & "&unittype=0" , "", _
					"n", 20, "d" )
	SET oXMLFore = rss_getXMLCached( "AWSWxForecast" & sZip & ".xml", _
					"http://api.wxbug.net/getForecastRSS.aspx?ACode=A7585877882&zipcode=" & sZip & "&unittype=0" , "", _
					"h", 2, "d" )
	IF NOT Nothing IS oXMLAlrt THEN

		SET oXSL = Server.CreateObject("msxml2.DOMDocument.6.0")
		oXSL.async = FALSE
		oXSL.setProperty "ProhibitDTD", false
		oXSL.setProperty "ResolveExternals", true
		oXSL.setProperty "AllowDocumentFunction", true
		oXSL.setProperty "AllowXsltScript", true
		oXSL.load( Server.MapPath( "scripts/rssawswxalert.xslt" ) )
		IF oXSL.parseError.errorCode <> 0 THEN
			Response.Write "Error in XSLT file:<br>" & vbCRLF
			Response.Write "Error Code: " & oXSL.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "Error Reason: " & oXSL.parseError.reason & "<br>" & vbCRLF
			Response.Write "Error Line: " & oXSL.parseError.line & "<br>" & vbCRLF
		END IF

		sTextAlrt = oXMLAlrt.transformNode(oXSL)
		
		SET oXSL = Nothing
		SET oXMLAlrt = Nothing
	
	END IF
	IF NOT Nothing IS oXMLCurr THEN

		SET oXSL = Server.CreateObject("msxml2.DOMDocument.6.0")
		oXSL.async = FALSE
		oXSL.setProperty "ProhibitDTD", false
		oXSL.setProperty "ResolveExternals", true
		oXSL.setProperty "AllowDocumentFunction", true
		oXSL.setProperty "AllowXsltScript", true
		oXSL.load( Server.MapPath( "scripts/rssawswxcurrent.xslt" ) )
		IF oXSL.parseError.errorCode <> 0 THEN
			Response.Write "Error in XSLT file:<br>" & vbCRLF
			Response.Write "Error Code: " & oXSL.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "Error Reason: " & oXSL.parseError.reason & "<br>" & vbCRLF
			Response.Write "Error Line: " & oXSL.parseError.line & "<br>" & vbCRLF
		END IF

		sTextCurr = oXMLCurr.transformNode(oXSL)
		
		SET oXSL = Nothing
		SET oXMLCurr = Nothing
	

	END IF
	IF NOT Nothing IS oXMLFore THEN

		SET oXSL = Server.CreateObject("msxml2.DOMDocument.6.0")
		oXSL.async = FALSE
		oXSL.setProperty "ProhibitDTD", false
		oXSL.setProperty "ResolveExternals", true
		oXSL.setProperty "AllowDocumentFunction", true
		oXSL.setProperty "AllowXsltScript", true
		oXSL.load( Server.MapPath( "scripts/rssawswxforecast.xslt" ) )
		IF oXSL.parseError.errorCode <> 0 THEN
			Response.Write "Error in XSLT file:<br>" & vbCRLF
			Response.Write "Error Code: " & oXSL.parseError.errorCode & "<br>" & vbCRLF
			Response.Write "Error Reason: " & oXSL.parseError.reason & "<br>" & vbCRLF
			Response.Write "Error Line: " & oXSL.parseError.line & "<br>" & vbCRLF
		END IF

		sTextFore = oXMLFore.transformNode(oXSL)
		
		SET oXSL = Nothing
		SET oXMLFore = Nothing
	

	END IF
	IF "" <> sTextCurr  OR  "" <> sTextFore THEN
		rssAWSWeatherStream = "" _
			&	"<div class=""rssweather"">" & vbCRLF _
			&	sTextCurr _
			&	sTextAlrt _
			&	sTextFore _
			&	"</div>" & vbCRLF
	END IF
	
END FUNCTION

SUB rssweatheraws( sZip )

	DIM	s
	s = ""
	DIM	sFile
	sFile = "AWSWxCurrent" & sZip & ".htm"

	DIM	oFile
	SET oFile = cache_openTextFile( "rss", sFile, "n", 20, "h" )
	IF NOT Nothing IS oFile THEN
		s = oFile.ReadAll
		oFile.Close
		SET oFile = Nothing
	ELSE
		s = rssAWSWeatherStream( sZip )
		IF "" <> s THEN
			SET oFile = cache_makeFile( "rss", sFile )
			IF NOT Nothing IS oFile THEN
				oFile.Write s
				oFile.Close
				SET oFile = Nothing
			END IF
		END IF
	END IF
	IF "" <> s THEN
		Response.Write s
	END IF
END SUB



%>