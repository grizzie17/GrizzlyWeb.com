<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\locationnames.asp"-->
<!--#include file="_private\navigation.asp"-->
<%
DIM	sPageTitle
DIM	sNavTitle
DIM	sKwdTitle
DIM	sDescTitle

sPageTitle = ""
sDescTitle = ""
IF 0 < Len(sLocationName) THEN
	sPageTitle = " - " & sLocationName
	sDescTitle = " for " & sLocationName & " and vicinity"
END IF

sNavTitle = ""
sKwdTitle = ""
IF 0 < Len(sLocationFullName) THEN
	sNavTitle = "<br>" & sLocationFullName
	sKwdTitle = ", " & LCase(sLocationAbbrevName) & ", " & UCase(sLocationAbbrevName) & ", " & sLocationFullName
END IF

%>
<html>

<head>
<title>Weather Forecast Summary<%=sPageTitle%> - Grizzly Web Links</title>
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta name="keywords"
content="weather, wx, forecast, forecasts, forcast, day planner, planners<%=sKwdTitle%>">
<meta name="description" content="Weather Forecast Summary<%=sDescTitle%>">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_news.css" media="screen">
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<script language="javascript">
<!--
function open(u,n,o)
{
	return null;
}
//-->
</script>

<table border="0" width="620" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include" u-include="_private/nav/0root.asp"
      tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan --><%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1news.asp;;News & Events" & vbLF _
		&	"weather.asp;;Weather" & vbLF _
		&	"weather_forecast_all.asp;;Weather Forecasts (All)" & sNavTitle
	NavBack sPages, sLocArgx

%>


    </td>
    <td width="470" valign="top"><img src="images/weather_forecast.jpg" alt="Weather - Forecast"
      border="0" hspace="1" vspace="1" width="468" height="167"><!--webbot bot="Include"
      u-include="_private/nav/weather_navbar2.asp" tag="BODY" startspan -->

<%
	DIM	sCurrentPath
	DIM	sCurrentFile
	DIM	i

	sCurrentPath = LCase( Request.ServerVariables( "URL" ) )
	i = InStrRev( sCurrentPath, "/", -1, vbTextCompare )
	sCurrentFile = Mid( sCurrentPath, i+1 )
%>

<%
SUB makeWXNavBar
%>

<table border="0" width="100%" cellpadding="0">
  <tr>
    <%
IF sCurrentFile <> "weather_current.asp" THEN
	Response.Write "<th><a href=""weather_current.asp?" & sLocArgx & """><span class=small>Current</span></a></th>" & vbCRLF
	Response.Write "<td width=5><img src=""../images/000000.gif"" WIDTH=1 HEIGHT=1></td>" & vbCRLF
END IF
IF sCurrentFile <> "weather_forecast.asp" THEN
	Response.Write "<th><a href=""weather_forecast.asp?" & sLocArgx & """><span class=small>4/7 Day Forecast</span></a></th>" & vbCRLF
	Response.Write "<td width=5><img src=""../images/000000.gif"" WIDTH=1 HEIGHT=1></td>" & vbCRLF
END IF
IF sCurrentFile <> "weather_forecast_maps.asp" THEN
	Response.Write "<th><a href=""weather_forecast_maps.asp?" & sLocArgx & """><span class=small>5 Day Maps</span></a></th>" & vbCRLF
	Response.Write "<td width=5><img src=""../images/000000.gif"" WIDTH=1 HEIGHT=1></td>" & vbCRLF
END IF
IF sCurrentFile <> "weather_radar.asp" THEN
	Response.Write "<th><a href=""weather_radar.asp?" & sLocArgx & """><span class=small>Local Radar</span></a></th>" & vbCRLF
END IF
IF sCurrentFile <> "weather_radar_region.asp" THEN
	Response.Write "<td width=5><img src=""../images/000000.gif"" WIDTH=1 HEIGHT=1></td>" & vbCRLF
	Response.Write "<th><a href=""weather_radar_region.asp?" & sLocArgx & """><span class=small>Regional Radar</span></a></th>" & vbCRLF
END IF
IF sCurrentFile <> "weather_warnings.asp" THEN
	Response.Write "<td width=5><img src=""../images/000000.gif"" WIDTH=1 HEIGHT=1></td>" & vbCRLF
	Response.Write "<th><a href=""weather_warnings.asp?" & sLocArgx & """><span class=small>Warnings</span></a></th>" & vbCRLF
END IF
    %>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0" height="3">
  <tr>
    <td bgcolor="#CC9966" class="news" height="3"><img
      src="../images/000000.gif" height="1" width="1"></td>
  </tr>
</table>
<%
END SUB
makeWXNavBar
%>

<!--webbot bot="Include" i-checksum="18144" endspan --><%IF 0 < Len( sLocation ) THEN%>
      <table border="0" cellpadding="2">
        <tr>
          <th align="left" class="small"><a href="weather_forecast_all.asp?loc=">Other Locations</a></th>
        </tr>
      </table>
      <%
ELSE
	buildLocationTable()
END IF
      %>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/wx_forecast_yahoo.htm" tag="BODY" startspan -->



<script language="JavaScript">
<!--

var browserName = navigator.appName;
var browserAgent = navigator.userAgent;
var browserVer = parseInt(navigator.appVersion);
var xIFrames = false;
var xILayer = false;
var nOpenIFrameWindow = 0;

	if ( browserName == "Netscape" )
	{
		if ( 3 < browserVer )
			xILayer = true;
	}
	else if ( browserName == "Microsoft Internet Explorer"
			||	browserName == "MSIE" )
	{
		xIFrames = true;
	}
	else if ( browserAgent == "" )	// this is a bug in MSIE
	{
		xIFrames = true;
	}


function makeIFrameNormal( sLabel, sPath, nHeight )
{
	document.writeln( '<iframe height="' + nHeight + '" width="100%" scrolling="NO" src="' + sPath + '">' );
	document.writeln( '<ilayer height="' + nHeight + '" width="100%" src="'+ sPath +'">' );
		document.writeln( '<a href="' + sPath + '" target="_blank">' + sLabel + '</a><br>' );
	document.writeln( '</ilayer>' );
	document.writeln( '</iframe>' );
}

var xOpenIFrameW = 20;
var yOpenIFrameW = 0;
function openIFrameWindow( sLocation, nHeight )
{
	var wS, hS;
	var x, y;
	var w, h;
	var s;
	
	if ( window.screen )
	{
		if ( screen.availHeight )
		{
			wS = screen.availWidth;
			hS = screen.availHeight-50;
		}
		else
		{
			wS = screen.width;
			hS = screen.height - 800;
		}
	}
	else
	{
		wS = 800;
		hS = 600;
	}
	hS -= yOpenIFrameW;
	if ( hS-40 < nHeight )
		h = hS-40;
	else
		h = nHeight;
	h += 40;	// title bar + status line
	w = 800;
	if ( wS < w )
		w = wS;
	x = xOpenIFrameW;
	y = yOpenIFrameW;
	xOpenIFrameW += 25;
	yOpenIFrameW += 20;
	++nOpenIFrameWindow;
	s = "width=" + w + ",height=" + h + ",left=" + x + ",top=" + y + ",resizable=yes,scrollbars=yes,status=yes";
	window.open( sLocation, "IFrameWindow" + nOpenIFrameWindow, s );
}

//function open( sLocation )
//{
//}

//function open( sLocation, sName )
//{
//}

//function open( sLocation, sName, sOptions )
//{
//}


function makeIFrameWindow( sLabel, sPath, nHeight )
{
	var s = 'openIFrameWindow( "' + sPath + '", ' + nHeight + ' )';
	var n = nOpenIFrameWindow + 1;
	if ( n < 1 )
		n = 1;
	else if ( 4 < n )
		n = 4;
	setTimeout( s, n*2000 );
	document.writeln( '<a href="' + sPath + '" target="_blank">' + sLabel + '</a><br>' );
}


function makeIFrameX( sLabel, sPath, nHeight )
{
	document.writeln( '<iframe height="' + nHeight + '" width="100%" scrolling="NO" src="' + sPath + '">' );
		document.writeln( '<a href="' + sPath + '" target="_blank">' + sLabel + '</a><br>' );
	document.writeln( '</iframe>' );
}

function makeIFrame( sLabel, sPath, nHeight )
{
	if ( document.layers )
	{
		//makeIFrameX( sLabel, sPath, nHeight );
		makeIFrameWindow( sLabel, sPath, nHeight );
	}
	else
	{
		makeIFrameNormal( sLabel, sPath, nHeight );
	}
}




//-->
</script>



<script language="JavaScript">
<!--

function makeIFrameYahoo( sLocation )
{
	makeIFrame( "Yahoo forecast", "http://weather.yahoo.com/forecast/US" + sLocation + "_f.html", 1550 );
}

function makeIFrameWeatherChannel( sLocation )
{
	makeIFrame( "Weather Channel forecast", "http://www.weather.com/weather/local/US" + sLocation, 1200 );
}

//-->
</script>

<!--webbot bot="Include" i-checksum="10488" endspan --><%
IF 0 < Len(sLocation) THEN
%>

<hr>
<table border="0" width="100%" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="news">4/7 Day Planners</th>
  </tr>
</table>
<%includeBody( "location\" & sLocation & "\weather_forecast.asp" )%>
<%END IF%>

<!--hr>
<table border="0" width="100%" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="news">Today's &amp; Tomorrow's Forecast</th>
  </tr>
</table>
<p><img src="http://www.weather.com/images/maps/forecast/pmfcst_440x275.gif" width="50%"
alt="This afternoon's forecast map"><img
src="http://www.weather.com/images/maps/forecast/tomhigh_440x275.gif" width="50%"
alt="Today's Highs"></p>
<p><img src="http://www.weather.com/images/maps/forecast/amfcst_440x275.gif" width="440"
height="275" alt="Tomorrow morning's forecast map"></p-->
<hr>
<table border="0" width="100%" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="news">Five Day Forecast Maps</th>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/wx_forecast_maps.asp" tag="BODY" startspan -->

<%
FUNCTION forecastMapName( n )
''http://image.weather.com/images/maps/forecast/trend6_600x405.jpg

	IF n < 6 THEN
		forecastMapName = "fore" & n
	ELSE
		forecastMapName = "trend" & n
	END IF
END FUNCTION
FUNCTION forecastPageName( n )
	IF 1 = n THEN
		forecastPageName = "index"
	ELSE
		forecastPageName = "usnationalweather" & LCASE(weekdayname(n,false,2))
	END IF
END FUNCTION

FUNCTION hiMapName( n, nCount )
	IF 1 = nCount THEN
		hiMapName = "index"
	ELSE
		hiMapName = "usweatherday" & nCount
	END IF
END FUNCTION
FUNCTION loMapName( n, nCount )
	IF 1 = nCount THEN
		loMapName = "usweathertonight"
	ELSE
		loMapName = "usweathernight" & nCount
	END IF
END FUNCTION
FUNCTION jetstreamMapName( n, nCount )
	IF 1 = n THEN
		jetstreamMapName = LCASE(weekdayname(n,false,2)) & "usjetstreamforecast"
	ELSE
		jetstreamMapName = LCASE(weekdayname(n,false,2)) & "usjetstream"
	END IF
END FUNCTION

SUB outputWeatherMaps
	DIM	dNow
	DIM	nWD
	DIM	nHour
	DIM	aNum(7)
	DIM	i,j,n
	DIM	nCount
	
	aNum(1) = "one"
	aNum(2) = "two"
	aNum(3) = "three"
	aNum(4) = "four"
	aNum(5) = "five"
	aNum(6) = "six"
	aNum(7) = "seven"
	
	dNow = Now
	nHour = Hour(dNow)
	nCount = 1
	
	nWD = Weekday( dNow ) - 1
	IF nWD < 1 THEN nWD = nWD + 7	' shift to account for weather.com 1=monday
	IF 17 < nHour THEN
		nWD = nWD + 1
		IF 7 < nWD THEN nWD = nWD - 7
		nCount = nCount + 1
	END IF
	
	i = nWD + 2
	DO WHILE nWD < i
		n = nWD
		IF 7 < n THEN n = n - 7
%>
<p align="center"><%
IF 1 = nCount  AND  13 < nHour  AND  nHour <= 17 THEN
'http://image.weather.com/images/maps/forecast/trend6_600x405.jpg
%><a
href="http://www.weather.com/maps/maptype/forecastsusnational/useveningforecast_large.html"
target="_top"><img
src="scripts/picture.asp?URL=http://image.weather.com/images/maps/forecast/useveningforecast_600x405.jpg"
width="46%" nosave></a><a
href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=loMapName(n,nCount)%>_large.html" target="_top"><img
src="scripts/picture.asp?URL=http://image.weather.com/web/forecast/us_wxlo<%=nCount%>_large_usen_600.jpg"
width="46%" nosave></a><%
'http://image.weather.com/web/forecast/us_wxlo1_large_usen_600.jpg
ELSE
%><a
href="http://www.weather.com/maps/maptype/weeklyplannerusnational/<%=forecastPageName(n)%>_large.html"
target="_top"><img
src="scripts/picture.asp?URL=http://image.weather.com/images/maps/forecast/<%=forecastMapName(n)%>_600x405.jpg"
width="46%" nosave></a><a
href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=hiMapName(n,nCount)%>_large.html" target="_top"><img
src="scripts/picture.asp?URL=http://image.weather.com/web/forecast/us_wxhi<%=nCount%>_small_usen.jpg"
width="46%" nosave></a><%
END IF
%><br>
<a href="http://www.weather.com/maps/maptype/weeklyplannerusnational/<%=forecastPageName(n)%>_large.html">Forecast</a>
 <a href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=hiMapName(n,nCount)%>_large.html">Highs</a>
 <a href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=loMapName(n,nCount)%>_large.html">Lows</a>
 <a href="http://www.weather.com/maps/activity/aviation/<%=jetstreamMapName(n,nCount)%>_large.html">Jet
Stream</a></p>
<%
		nWD = nWD + 1
		nCount = nCount + 1
	LOOP

%>
<p align="center"><%
	
	i = nWD + 3
	j = nWD
	
	DO WHILE j < i
		n = j
		IF 7 < n THEN n = n - 7
%><a
href="http://www.weather.com/maps/maptype/weeklyplannerusnational/<%=forecastPageName(n)%>_large.html"
target="_top"><img
src="scripts/picture.asp?URL=http://image.weather.com/images/maps/forecast/<%=forecastMapName(n)%>_277x187.jpg"
width="31%" nosave></a><%
		j = j + 1
	LOOP
%><br>
<%
	
	j = nWD
	DO WHILE j < i
		n = j
		IF 7 < n THEN n = n - 7
%>
 <a
href="http://www.weather.com/maps/maptype/weeklyplannerusnational/usnationalweather<%=LCASE(weekdayname(n,false,2))%>_large.html">Forecast</a>
 <a href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=hiMapName(n,nCount)%>_large.html">Highs</a>
 <a href="http://www.weather.com/maps/maptype/tendayforecastusnational/<%=loMapName(n,nCount)%>_large.html">Lows</a>
 <a href="http://www.weather.com/maps/activity/aviation/<%=jetstreamMapName(n,nCount)%>_large.html">Jet
Stream</a>
<%
		j = j + 1
		nCount = nCount + 1
		IF j < i THEN
%>&nbsp;&nbsp;//&nbsp;&nbsp;<%
		END IF
	LOOP
%></p>
<%
END SUB
outputWeatherMaps
%>



<!--webbot bot="Include" i-checksum="48420" endspan --><!--webbot
bot="Include" u-include="_private/other/wx_bottom.htm" tag="BODY" startspan -->

<div style="position: relative; visibility: hidden; display: none">
  

<div align="center">
  <center>
  <table border="0" cellspacing="4" style="border: 1px solid #FFCC00">
    <tr>
      <td align="center" colspan="3"><font face="Arial,Helvetica" size="1"><span
        style="font-family: sans-serif">Best viewed with a</span></font><br>
        <img src="images/browsers/v4browser_ani.gif"
        alt="Version 4 or later Browser" id="VerBrowser" name="VerBrowser"
        border="0" width="90" height="30"><br>
        <font face="Arial,Helvetica" size="1"><span
        style="font-family: sans-serif">Such as</span></font></td>
    </tr>
    <tr>
      <td align="center">
		<a target="_top" href="http://www.microsoft.com/windows/ie/downloads/">
		<img src="images/browsers/ie4get_animated.gif"
        alt="Internet Explorer" border="0" width="88" height="31"></a></td>
      <td align="center"><font face="Arial,Helvetica" size="1"><span
        style="font-family: sans-serif">Or</span></font></td>
      <td align="center">
		<a target="_top" href="http://home.netscape.com/download/">
		<img src="images/browsers/netscape_now_static.gif"
        alt="Netscape Navigator" border="0" width="90" height="30"></a></td>
    </tr>
  </table>
  </center>
</div>


</div>
<p align="center"><font face="Arial,Helvetica" size="1"><span style="font-family: sans-serif">Optimized for<br>
</span></font><a href="http://www.microsoft.com/windows/ie/downloads/">
<img border="0" src="images/browsers/ie4get_animated.gif" width="88" height="31"></a></p>

<!--webbot bot="Include" i-checksum="33507" endspan --><!--webbot bot="Include"
u-include="../_private/include/footer.htm" tag="BODY" startspan -->


<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="5" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom">
      <form method="GET" name="SearchForm_bottom"
      action="submit/searchengine/grizzlyweblinks.asp">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
          <tr>
            <td><a href="submitlink.asp" class="small">Add
              Link...</a>&nbsp;&nbsp; <span class="small">*</span>&nbsp;&nbsp; <a
              href="comments.asp" class="small">Comments /
              Problems...</a></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    30 Sep 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none"
      href="../company/9copyright.htm"><font color="#CCCCCC" size="1">Copyright
      2004 Bear Consulting Group</font></a><font color="#CCCCCC" size="1"><a
      style="color: #CCCCCC; text-decoration: none"><br>
      </a><a href="../company/" style="color: #CCCCCC; TEXT-DECORATION: none">Service
      Provided by Bear Consulting Group</a></font></td>
  </tr>
</table>




<!--webbot bot="Include" i-checksum="59332" endspan -->


</body>

</html>