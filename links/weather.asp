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
<title>Weather<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="keywords"
content="weather, weahter, wx, forecast, forcast, radar, dopler, doppler, satellite, satelite<%=sKwdTitle%>">
<meta name="description"
content="Weather resources including forecasts, radar, satellite links<%=sDescTitle%>">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_news.css"
media="screen">
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1news.asp;;News & Events" & vbLF _
		&	"weather.asp;;Weather" & sNavTitle
	NavBack sPages, sLocArgx
	
	sPages = "weather_current.asp;;Current Conditions" & vbLF _
		&	"weather_forecast.asp;;4/7-day Forecasts" & vbLF _
		&	"weather_forecast_maps.asp;;5-day Maps" & vbLF _
		&	"weather_forecast_all.asp;;Forecasts (All)" & vbLF _
		&	"weather_radar.asp;;Radar (Local)" & vbLF _
		&	"weather_radar_region.asp;;Radar (Regional)" & vbLF _
		&	"weather_radar_all.asp;;Radar (All)" & vbLF _
		&	"weather_warnings.asp;;Storm Warnings"

	NavPages sPages, sLocArgx, "news"


%>


      <%IF 0 < Len( sLocation ) THEN%>
      <p align="center"><a href="weather.asp?loc=">Other Locations</a></p>
      <%END IF%>
      <p align="center"><strong>Related Pages:</strong><br>
      <a href="news.asp?<%=sLocArgx%>">News</a><br>
      <a href="television.asp?<%=sLocArgx%>">Television</a></p>

    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="470"><img src="images/weather.jpg" alt="Weather"
      width="468" height="83">
      <table border="0" cellspacing="4" cellpadding="0">
        <tr>
          <td bgcolor="#000000">
          <!--webbot bot="Include"
            u-include="_private/other/moonphas.htm" tag="BODY" startspan -->

<table border="0" cellpadding="3" width="100%" cellspacing="0">
  <tr>
    <td valign="middle" align="center" bgcolor="#000000" width="1"><img
    src="images/moon/lunardot.gif" id="LunarDot" name="LunarDot" WIDTH="1" HEIGHT="1"></td>
    <td valign="middle" align="center" bgcolor="#000000"><script language="JavaScript">
<!--

var gnMoonAge = 0;
var gsMoonPhase = "";
var gsMoonString = "";
var goDateNow = new Date();
var kLunarCycle = 29.530588853;
var kTimezoneOffset = goDateNow.getTimezoneOffset() * 60 * 1000;
var kTimezoneOffsetDay = goDateNow.getTimezoneOffset() / 60 / 24;
var goDateNowUTC = new Date(goDateNow.getTime() + kTimezoneOffset);

function calcMoonAge( year, month, day, hour, minutes )
{
	var YY = year;
	var MM = month;
	var DD = day;
	var HR = hour;
	var MN = minutes;
	var GGG = 1;
	var JD = 0;
	var S = 1;
	var A = 0;
	var J1 = 0;
	var J = 0;
	var V = 0;
	var IP = 0;

	with ( Math )
	{  
		HR = HR + (MN / 60);
		GGG = 1;
		if ( YY <= 1585 )
			GGG = 0;
		JD = -1 * floor(7 * (floor((MM + 9) / 12) + YY) / 4);
		S = 1;
		if ( (MM - 9) < 0 )
			S=-1;
		A = abs(MM - 9);
		J1 = floor(YY + S * floor(A / 7));
		J1 = -1 * floor((floor(J1 / 100) + 1) * 3 / 4);
		JD = JD + floor(275 * MM / 9) + DD + (GGG * J1);
		JD = JD + 1721027 + 2 * GGG + 367 * YY - 0.5;
		J = JD + (HR / 24);
	}
		
	/* Calculate Illumination (synodic) phase */
	
	/*P2 = 2 * 3.141592654;*/
	V = (J-2451550.1) / kLunarCycle;
	IP = normalizeValue( V );
	return IP * kLunarCycle;
}

function normalizeValue( v )
{
	var nValue = v - Math.floor(v); 
	if ( nValue < 0 )
		nValue = nValue + 1;
	return nValue;
}


function getMoonPhase( nAge )
{
	if ( nAge < 0.5 ) return "New Moon";
	if ( nAge < 1.5 ) return "Past New";
	if ( nAge < kLunarCycle*0.25 - 1 ) return "Waxing Cresent";
	if ( nAge < kLunarCycle*0.25 + 1 ) return "First Quarter";
	if ( nAge < kLunarCycle*0.5 - 1.5 ) return "Waxing Gibbous";
	if ( nAge < kLunarCycle*0.5 - .5 ) return "Near Full";
	if ( nAge < kLunarCycle*0.5 + .5 ) return "Full Moon";
	if ( nAge < kLunarCycle*0.5 + 1.5 ) return "Past Full";
	if ( nAge < kLunarCycle*0.75 - 1 ) return "Waning Gibbous";
	if ( nAge < kLunarCycle*0.75 + 1 ) return "Last Quarter";
	if ( nAge < kLunarCycle - 1.5 ) return "Waning Cresent";
	if ( nAge < kLunarCycle - .5 ) return "Near New";
	return "New Moon";
}

monthNames = new Array(13);
monthNames[1]  = "Jan";
monthNames[2]  = "Feb";
monthNames[3]  = "Mar";
monthNames[4]  = "Apr";
monthNames[5]  = "May";
monthNames[6]  = "Jun";
monthNames[7]  = "Jul";
monthNames[8]  = "Aug";
monthNames[9]  = "Sep";
monthNames[10] = "Oct";
monthNames[11] = "Nov";
monthNames[12] = "Dec";

function getLongDate( dateObj )
{
	var theMonth = monthNames[dateObj.getMonth()+1];
	var theDate = dateObj.getDate();
	var theYear = dateObj.getYear();
	var sDate = "";
	var sHours = "";
	var sMins = "";
	if ( theYear < 1000 )
		theYear += 1900;
	if ( theDate < 10 )
		sDate = "0" + theDate;
	else
		sDate = "" + theDate;
	var theHours = dateObj.getHours();
	if ( theHours < 10 )
		sHours = "0" + theHours;
	else
		sHours = "" + theHours
	var theMinutes = dateObj.getMinutes();
	if ( theMinutes < 10 )
		sMins = "0" + theMinutes;
	else
		sMins = "" + theMinutes;
	return "" + sDate + "-" + theMonth + "-" + theYear + " " + sHours + ":" + sMins;
}
		
function getNextFull( moonAge )
{	
	var currMilSecs = goDateNowUTC.getTime();
	var daysToGo = kLunarCycle/2.0 - moonAge;
	while( daysToGo < 0.5 )
	{
		daysToGo = daysToGo + kLunarCycle;
	}
	var milSecsToGo = daysToGo*24*60*60*1000;
	var nextMoonTime = currMilSecs + milSecsToGo;
	var nextMoonDate = new Date(nextMoonTime);
	return nextMoonDate;
}

function getNextNew( moonAge )
{	
	var currMilSecs = goDateNowUTC.getTime();
	var daysToGo = kLunarCycle - moonAge;
	while( daysToGo < 0.5 )
	{
		daysToGo = daysToGo + kLunarCycle;
	}
	var milSecsToGo = daysToGo*24*60*60*1000;
	var nextMoonTime = currMilSecs + milSecsToGo;
	var nextMoonDate = new Date(nextMoonTime);
	return nextMoonDate;
}

function writeMoonGIF()
{
	var thePict;
	var n = 0;
	var sn = "";

	if ( document.all )
		thePict = document.all.LunarDot;
	else if ( document.images )
		thePict = document.images["LunarDot"];
	else
		return;

	n = Math.ceil(gnMoonAge - 0.5);
	if ( 29.25 < gnMoonAge )
		n = 0;
	else if ( n < 0 )
		n = 0;
	if ( n < 10 )
		sn = "0" + n;
	else
		sn = "" + n;
	var thePictSrc = thePict.src;
	var sTemp = thePictSrc.substring( 0, thePictSrc.indexOf("/images"));
	document.write('<a href="' + sTemp + '/moon.htm" target="_self">');
	document.write('<img src="' + sTemp + '/images/moon/mm' + sn + '.gif" alt="Moon Phase" border="0">');
	document.write('</a>');
}


	var theYear = goDateNowUTC.getYear();
	var theMonth = goDateNowUTC.getMonth()+1;
	var theDay = goDateNowUTC.getDate();
	var theHour = goDateNowUTC.getHours();
	var theMinutes = goDateNowUTC.getMinutes();

	if ( theYear < 1000 )
		theYear += 1900;

	gnMoonAge = calcMoonAge( theYear, theMonth, theDay, theHour, theMinutes );
	gsMoonPhase = getMoonPhase( gnMoonAge );
	if ( 29.53 < gnMoonAge)
		gnMoonAge = 0;

	gsMoonString = '<table border="0" cellspacing="0" cellpadding="0">';
	gsMoonString += '<tr><td colspan="2">';
	gsMoonString += '<font face="Arial,Helvetica" color="#FFFFFF"><b>' + gsMoonPhase + '</b></font>';
	gsMoonString += '<td></tr>';
	/*gsMoonString += "Lunar age: " + gnMoonAge + "<br>";*/

	var dateNew = getNextNew( gnMoonAge );
	var dateFull = getNextFull( gnMoonAge );

	if ( dateNew < dateFull )
	{
		gsMoonString += '<tr>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">Next New:&nbsp;</font></td>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">' + getLongDate(dateNew) + '</font></td>';
		gsMoonString += '</tr><tr>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">Next Full:&nbsp;</font></td>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">' + getLongDate(dateFull) + '</font></td>';
		gsMoonString += '</tr>';
	}
	else
	{
		gsMoonString += '<tr>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">Next Full:&nbsp;</font></td>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">' + getLongDate(dateFull) + '</font></td>';
		gsMoonString += '</tr><tr>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">Next New:&nbsp;</font></td>';
		gsMoonString += '<td><font face="Arial,Helvetica" color="#FFFFFF" size="1">' + getLongDate(dateNew) + '</font></td>';
		gsMoonString += '</tr>';
	}
	gsMoonString += "</table>";


	writeMoonGIF();
//-->
</script></td>
    <td bgcolor="#000000" style="font-family: sans-serif"><script language="JavaScript"><!--
		document.write(gsMoonString);
//--></script></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="26961" endspan -->

          </td>
        </tr>
      </table>
      <%
IF Len( sLocation ) < 1 THEN
	buildLocationTable()
ELSE
	includeBody( "location\" & sLocation & "\weather_channel.asp" )
END IF
      %>
      <%
IF 1 < Len( sLocation ) THEN
	includeBody( "location\" & sLocation & "\weather.asp" )
END IF
      %>
      <table border="0" width="100%" cellpadding="0" cellspacing="4">
        <tr>
          <td class="gutter" bgcolor="#C0C0C0" colspan="3" height="1"><img
            border="0" src="../images/000000.gif"></td>
        </tr>
        <tr>
          <td width="50%" valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">General</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.absoluteweather.com/">Absolute Weather</a><br>
                  <a href="http://www.accuweather.com/wx/index.htm">Accu Weather</a>&nbsp;<br>
                  <a href="http://www.accuweather.com/adcbin/index.asp">AccuWeather
                  - Zoom Radar</a><br>
                  <a href="http://www.agriculturalweather.com/">Agricultural
                  Weather dot Com</a><br>
                  <a href="http://www.aviationweather.com/">aviation weather</a><br>
                  <a href="http://www.awc-kc.noaa.gov/index.html">Aviation
                  Weather Center</a><br>
                  <a href="http://cnn.com/WEATHER/">CNN Weather</a><br>
                  <a href="http://www.earthwatch.com/">EarthWatch</a>&nbsp;<br>
                  <a href="http://www.hamweather.com/">HamWeather</a><br>
                  <a
                  href="http://www.intellicast.com/LocalWeather/World/UnitedStates/Navigation/">INTeLLICAST</a>&nbsp;<br>
                  <a href="http://weather.noaa.gov/">NWS Internet Weather Source</a><br>
                  <a href="http://www.almanac.com/weather/weather.html">Old
                  Farmers Almanac</a><br>
                  <a href="http://www.rap.ucar.edu/weather/">Real-time weather
                  data</a><br>
                  <a href="http://www.theyr.com/">Theyr Weather&nbsp;forecast</a><br>
                  <a href="http://www.travelforecast.com/">TravelForecast.com</a><br>
                  <a href="http://weather.unisys.com/">Unisys Weather</a><br>
                  <a href="http://www.univ-wea.com/">Universal Weather</a> -
                  Aviation<br>
                  <a href="http://www.weather.com/">Weather Channel</a>&nbsp;<br>
                  <a href="http://theweathercompany.com/">Weather Company</a><br>
                  <a href="http://weather.gov/">Weather.gov</a><br>
                  <a href="http://cirrus.sprl.umich.edu/wxnet/">WeatherNet</a>&nbsp;<br>
                  <a href="http://www.weatheroffice.com/">WeatherOffice</a> -
                  Canada<br>
                  <a href="http://www.nxdc.com/weather/">Weather Resource</a><br>
                  <a href="http://www.wunderground.com/">Weather Underground</a>&nbsp;<br>
                  <a href="http://www.wxusa.com/">WxUSA</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">National Surface
                  Maps</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.weather.com/weather/maps/current/curwx_440x275.html">Current
                  Conditions</a> - Weather Channel<br>
                  <a
                  href="http://asp1.sbs.ohio-state.edu/text/wximages/us/natmap.gif">Current
                  Surface Analysis</a> - Ohio-State<br>
                  <a href="http://www.fema.gov/image98/tmap.gif">FEMA - Tornado
                  Activity</a><br>
                  <a href="http://www.fema.gov/image98/wmap.gif">FEMA - Wind
                  Zones</a>&nbsp;<br>
                  <a href="http://www.freeradar.com/">FreeRadar.com</a><br>
                  <a href="http://www.ems.psu.edu/wx/usstats/uswxstats.html">Hourly
                  U.S. Weather Stats</a> - Penn-State<br>
                  <a href="http://weather.unisys.com/surface/regional.html">Regional
                  Surface Maps</a> - UNISYS<br>
                  <a href="http://weather.unisys.com/surface/contour.html">Surface
                  Contour Plots</a> - UNISYS<br>
                  <a href="http://cirrus.sprl.umich.edu/wxnet/maps.htm">Weather
                  Maps</a> - U.Mich.</td>
              </tr>
            </table>
          </td>
          <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img
            border="0" src="../images/000000.gif"></td>
          <td width="50%" valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#FF9900" align="left"><font color="#000000">Severe
                  Weather</font></th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><strong><a
                  href="http://iwin.nws.noaa.gov/iwin/nationalwarnings.html">NWS
                  Warnings</a></strong><br>
                  <a href="http://www.skywarn.net/">SkyWarn.net</a><br>
                  <a href="http://www.stormdisplay.com/">Storm Display</a>
                  <br>
                  <a href="http://www.spc.noaa.gov/">Storm Prediction Center</a><br>
                  <a
                  href="http://www.earthwatch.com/STORMWATCH/SWUS2D.html"><em>StormWatch</em></a><em>&nbsp;<br>
                  </em><a href="http://www.met.tamu.edu/weather/warnings/">Texas
                  A&amp;M</a><em><br>
                  </em><a href="http://www.uswx.com/us/wx/">USWX Warnings</a>&nbsp;<br>
                  <a href="http://www.weather.com/breaking_weather/severe/">weather.com</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">Organizations</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.fema.gov/">Federal Emergency Management
                  Agency</a><br>
                  <a href="http://www.ncdc.noaa.gov/">National Climatic Data
                  Center</a><br>
                  <a href="http://www.noaa.gov/">NOAA</a>&nbsp;<br>
                  <a href="http://www.nws.noaa.gov/">National Weather Service</a>&nbsp;<br>
                  <a href="http://www.spc.noaa.gov/">Storm Prediction Center</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">Related
                  Information</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://members.tripod.com/~stormt1/page3.html">Cloud
                  Formations</a><br>
                  <a href="http://hoshi.cic.sfu.ca/~hazard/RECENT/warn.html">HazardNet</a><br>
                  <a href="http://www.xnet.com/~jjy/hiwc.htm">Heat Index &amp;
                  Wind Chill Charts</a><br>
                  <a href="http://www.flamedia.com/lightning/light.htm">LIVE
                  Lightning Tracker</a><br>
                  <a
                  href="http://www.weather24.com/local/mooncast/AL/HUNTSVILLE">Lunar
                  Phase</a>&nbsp;<br>
                  <a href="http://www.my-cast.com/">My-Cast Weather Intelligence</a><br>
                  <a href="http://www.spaceweather.com/">Space Weather Bureau</a><br>
                  <a href="http://www.geocities.com/CapeCanaveral/Lab/2430/">Tornadoes
                  and Tornado Research</a><br>
                  <a href="http://www.wunderground.com/tropical/">Tropical
                  Weather</a> - <small>Wx Undergrnd</small><br>
                  <a href="http://www.tvweather.com/">TVWeather.com</a><br>
                  <a href="http://www.twisters.com/weather.htm">Twisters.com</a><br>
                  <a href="http://cirrus.sprl.umich.edu/wxnet/wxcam.html">Weather
                  Cams</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">Directories
                  &amp; Rings</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.avweb.com/toc/weather.html">AVweb Weather on
                  the Web</a> <br>
                <a href="http://gowally.com/wx/radar.html">GoWally.com</a> - Live 
                Doppler Radars<br>
                  <a href="http://www.ifly.net/iw2.html">IFLY Aviation Weather
                  Links</a><br>
                  <a href="http://www.wvlightning.com/weblinks.html">Lightning Page - Lightning Links</a>&nbsp;<br>
                <a href="http://www.weatherimages.org/">Live Weather Images</a><br>
                  <a href="http://www.aristotle.net/~kj5nh/skywarn.html"> Skywarn Ring System</a><br>
                  <a href="http://www.search-beat.com/weather2.htm">The Weather
                  Beat</a><br>
                  <a href="http://www.srh.noaa.gov/tlh/wxhwy.html">Weather
                  Information Superhighway</a>&nbsp;&nbsp;<br>
                  <a href="http://www.wwol.org/webring.html">WWOL Webring</a><br>
                  <a href="http://www.wxusa.com/">WxUSA</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="news">Newsgroups</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="news:alt.binaries.pictures.weather">alt.binaries.pictures.weather</a><br>
                  <a href="news:alt.talk.weather">alt.talk.weather</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="4" cellspacing="0">
  <tr>
    <td width="100%">
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10007622"><img
      border="0" src="images/logos/allwall/10007622s.jpg"
      alt="In Association with art.com"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10007903"><img
      border="0" src="images/logos/allwall/10007903.jpg"
      alt="In Association with art.com"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?PD=10024036"><img
      border="0" src="images/logos/allwall/10024036.jpg"
      alt="In Association with art.com"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a
      href="submit/affiliate/allwall_com.asp?PD=10027787"><img
      border="0" src="images/logos/allwall/10027787s.jpg"
      alt="In Association with art.com"><br>
      <font face="sans-serif" size="1">Buy this poster at&nbsp;<br>
 art.com</font></a></p>
      <p align="center"><a href="submit/affiliate/allwall_com.asp?ID=1925"><font face="sans-serif" size="1">Buy
      Weather<br>
      &nbsp; posters at&nbsp;<br>
 art.com</font></a></p>
    </td>
  </tr>
</table>
<br clear="all">
<!--Webring code-->
<script language=javascript 
src="http://ss.webring.com/navbar?f=j;y=grizzlyweblinks;u=10014194">
    </script><noscript>
    <center>
<table bgcolor=gray cellspacing=0 border=2 bordercolor=red><tr>
<td><table cellpadding=2 cellspacing=0 border=0><tr><td align=center>
<font face=arial size=-1>This site is a member of WebRing. 
<br>To browse visit <a href="http://ss.webring.com/navbar?f=l;y=grizzlyweblinks;u=10014194">
Here</a>.</font></td></tr></table></td></tr></table>
</center></noscript>
<!--end Webring code-->

<!--webbot bot="Include" u-include="_private/nav/news_navbar.asp"
tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">News
    &amp; Events</span>&nbsp; </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="news"><a class="navigationsmall" href="comics.asp">Comics</a></th>
        <th bgcolor="#CC9966" class="news"><a class="navigationsmall" href="editorial.asp">Editorial &amp; Opinion</a></th>
        <th bgcolor="#CC9966" class="news"><a href="market.asp" class="navigationsmall">Marketplace</a></th>
        <th bgcolor="#CC9966" class="news"><a href="news.asp" class="navigationsmall">News</a></th>
        <th bgcolor="#CC9966" class="news"><a href="politics.asp" class="navigationsmall">Politics</a></th>
        <th bgcolor="#CC9966" class="news"><a href="sports.asp" class="navigationsmall">Sports</a></th>
        <th bgcolor="#CC9966" class="news"><a href="weather.asp" class="navigationsmall">Weather</a></th>
      </tr>
    </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img src="../images/pie_bl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img src="../images/pie_br.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="4253" endspan -->

<!--webbot bot="Include"
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