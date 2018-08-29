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
	sNavTitle = ",<br>" & sLocationFullName
	sKwdTitle = ", " & LCase(sLocationAbbrevName) & ", " & UCase(sLocationAbbrevName) & ", " & sLocationFullName
END IF

%>
<html>

<head>
<title>Weather - Current Conditions<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="Keywords"
content="current weather, wx, warnings, severe weather, stormwatch<%=sKwdTitle%>">
<meta name="description" content="Current weather conditions<%=sDescTitle%>">
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_news.css" media="screen">
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<!--webbot bot="Include" u-include="_private/makeiframe.htm" tag="BODY" startspan -->

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

<!--webbot bot="Include" endspan i-checksum="12867" -->

<script language="JavaScript">
<!--

function makeLinkAWS( sLocation )
{
	makeIFrame( "WeatherNET", "submit/wx/weathernet.asp?site=" + sLocation, 450 );
}

function makeLinkNWS( sLocation )
{
	makeIFrame( "NWS Current Weather Conditions", "http://weather.noaa.gov/weather/current/" + sLocation + ".html", 1750 );
}

//-->
</script>

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="150" rowspan="2">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="22514" -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1news.asp;;News & Events" & vbLF _
		&	"weather.asp;;Weather" & vbLF _
		&	"weather_current.asp;;Current Weather" & sNavTitle
	NavBack sPages, sLocArgx

%>

    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td width="470" valign="top"><img src="images/weather_current.jpg"
      alt="Weather - Current Conditions" border="0" hspace="1" vspace="1" width="468"
      height="88"><!--webbot bot="Include" u-include="_private/nav/weather_navbar2.asp"
      tag="BODY" startspan -->

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

<!--webbot bot="Include" endspan i-checksum="18144" -->

      <%IF 0 < Len( sLocation ) THEN%>
      <table border="0" cellpadding="2">
        <tr>
          <th align="left" class="small"><a href="weather_current.asp?loc=">Other Locations</a></th>
        </tr>
      </table>
      <%END IF%>
    </td>
  </tr>
  <tr>
    <td width="470" valign="bottom"><%
IF Len(sLocation) < 1 THEN
	buildLocationTable()
ELSE
	includeBody( "location\" & sLocation & "\weather_channel.asp" )
END IF
      %>
    </td>
  </tr>
</table>
<br clear="all">
<%
IF 0 < Len(sLocation) THEN
	includeBody( "location\" & sLocation & "\weather_current.asp" )
END IF
%>
<!--webbot bot="Include" u-include="_private/other/wx_bottom.htm" tag="BODY" startspan -->

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

<!--webbot bot="Include" endspan i-checksum="33507" -->

<!--webbot
bot="Include" u-include="../_private/include/footer.htm" tag="BODY" startspan -->


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




<!--webbot
bot="Include" endspan i-checksum="59332" -->


</body>

</html>