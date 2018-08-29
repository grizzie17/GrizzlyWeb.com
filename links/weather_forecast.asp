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

Response.Expires = 10	' minutes

%>
<html>

<head>
<title>Weather Forecast - 4/7day planners<%=sPageTitle%> - Grizzly Web Links</title>
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta name="keywords"
content="weather, wx, forecast, forecasts, forcast, day planner, planners<%=sKwdTitle%>">
<meta name="description" content="Weather Forecasts<%=sDescTitle%>">
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
		&	"weather_forecast.asp;;4/7-Day Forecasts" & sNavTitle
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
          <th align="left" class="small"><a href="weather_forecast.asp?loc=">Other Locations</a></th>
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
IF 0 < Len( sLocation ) THEN
	includeBody( "location\" & sLocation & "\weather_forecast.asp" )
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

<!--webbot bot="Include" i-checksum="33507" endspan --><!--webbot
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




<!--webbot bot="Include" i-checksum="59332" endspan -->


</body>

</html>