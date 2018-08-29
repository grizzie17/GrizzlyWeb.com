<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<%
	Response.Buffer = TRUE
	
	
	DIM sRedir
	DIM bDelayedReload
	DIM	sUserAgent
	DIM	bConfigLocation

	bConfigLocation = 0
	nLen = Request.QueryString("editloc").Count
	IF 0 < nLen THEN
		bConfigLocation = 1
	END IF
	bDelayedReload = 0
	sRedir = ""
	nLen = Request.QueryString("configloc").Count
	IF 0 < nLen THEN
		sLocation = Request.QueryString("configloc")

		' write back new cookie
		Response.Cookies("location") = sLocation
		Response.Cookies("location").Expires = Date + 365
		Response.Expires = 0
		IF 1 < Len( sLocation ) THEN
			sLocArg = "?loc=" & sLocation
		END IF

	'	sRedir = Request.QueryString("redirect")
	'	IF Len( sRedir ) < 1 THEN
	'		sRedir = "index.asp"
	'	END IF

		'sUserAgent = Request.ServerVariables("HTTP_USER_AGENT")
		'IF 0 = InStr(1, sUserAgent, "MSIE", 1 ) THEN
			bConfigLocation = 2
		'END IF

	'	IF 0 = bDelayedReload  AND  0 < Len( sRedir ) THEN
	'		Response.Redirect sRedir
	'	END IF



	END IF
%>
<%IF 0 = bConfigLocation THEN%>
<!--#include file="_private\locationnames.asp"-->
<%
DIM	sPageTitle
DIM	sNavTitle
DIM	sKwdTitle

sPageTitle = ""
IF 0 < Len(sLocationName) THEN
	sPageTitle = " - " & sLocationName
END IF

sNavTitle = ""
sKwdTitle = ""
IF 0 < Len(sLocationFullName) THEN
	sNavTitle = "<br>" & sLocationFullName
	sKwdTitle = ", " & LCase(sLocationAbbrevName) & ", " & UCase(sLocationAbbrevName) & ", " & sLocationFullName
END IF
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--DO--CTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"-->
<html>

<head>
<title>Grizzly Web Links<%=sPageTitle%></title>
<!--#include file="_private\ratings_meta_tags.asp"-->
<meta name="keywords"
content="grizzly, link, links, browse, portal, search, news, events, weather, comics, entertainment, home, family, money, market, finances, business, shopping, shop, sports, sport, recreation, reference, science, nature, technology, region, location, city, cities<%=sKwdTitle%>">
<meta name="description"
content="When searching the web becomes a bear -- Grizzly Web Links">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<base target="_top">
<link rel="stylesheet" title="Default Styles" href="0style.css">
<link rel="SHORTCUT ICON" href="../favicon.ico">
<script language="JavaScript" type="text/javascript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}
//-->
</script>
<script language="JavaScript1.2" type="text/javascript">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}

function open( sURL, sName, sFeatures )
{
}

function showModelessDialog( sURL, vArguments, sFeatures )
{
}

//-->
</script>
<script language="JavaScript" type="text/javascript">
<!--
function editLocation()
{
	replaceWindowURL( window, "index.asp?editloc=1" );
}
//-->
</script>
</head>

<body topmargin="0" leftmargin="0">

<table border="0" cellspacing="0" cellpadding="0" width="150" align="left">
  <tr>
    <td width="150" valign="top">
      <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan --><%
SUB buildNavigation
	DIM	sPageDir
'spages:::  url;class;title;tool-tips
	sPageDir = "1ent.asp;entertainment;Entertainment;Art, Books, Comics, Humor, Magazine Rack, Movies, Music, Performance, Radio, Science Fiction, Television, Trivia" & vbLF _
		&	"1home.asp;home;Home & Family;Genealogy, Health & Fitness, Home Maintenance, Kids Only, Lawn & Garden, Parenting, Religion, Teens" & vbLF _
		&	"1living.asp;living;Living;Fashion & Style, Food & Drink, Health & Medicine, Seniors, Shopping & Gifts" & vbLF _
		&	"1money.asp;money;Money & Business;Business, Finances, Legal, Marketplace" & vbLF _
		&	"1news.asp;news;News & Events;Comics, Editorial & Opinion, Marketplace, News, Politics, Sports, Weather" & vbLF _
		&	"1rec.asp;recreation;Recreation & Sports;Automotive, Aviation & Flight, Collecting, Games, Hobbies, Outdoors, Sports, Travel" & vbLF _
		&	"1ref.asp;reference;Reference & Education;Addresses, Desk Reference, Dictionaries, Education, Encyclopedias, Government, History, Maps, Mathematics, Regional Info, Web/Internet, Web-Search" & vbLF _
		&	"1sci.asp;science;Science & Nature;Mathematics, Nature, Science, Space & Astronomy" & vbLF _
		&	"1tech.asp;technology;Technology & Computing;Aviation, Development, Engineering, Mathematics, OS-Macintosh, OS-Unix, OS-Windows, Web Authoring, Web & Internet"

	NavPages sPageDir, sLocArgx, ""
END SUB
buildNavigation

%>
      <p align="center"><a href="index.asp?editloc=1" onclick="editLocation()">Select
      Location...</a></p>
      <p align="center"><a target="_self" href="4about.asp?<%=sLocArgx%>">About...</a><br>
      <a target="_self" href="submit/submitlinkinfo.htm">Add Link...</a><br>
      <a target="_self" href="9ratings.asp?<%=sLocArgx%>">Ratings...</a></p>
      <table border="0" width="100%" cellpadding="2" cellspacing="0">
        <tr>
          <td bgcolor="#CC9966" class="shopping">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="shopping">Shopping</th>
                <td align="right"><a href="shop.asp?<%=sLocArgx%>" class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="shoppingbody">
            <table border="0" width="100%" cellpadding="0">
              <tr>
                <td align="center"><a href="http://www.addall.com/"><img
                  border="0" src="images/logos/AddALL-logo-991224.gif" alt="AddAll"
                  width="120" height="30"><br>
                  </a><font size="2">Book price comparison</font></td>
              </tr>
              <tr>
                <td align="center"><a href="submit/affiliate/amazon_com.asp"><img
                  src="images/logos/amazon_logo.gif" alt="amazon.com" border="0"></a></td>
              </tr>
              <tr>
                <td align="center">
                <!--webbot 
                bot="Include" U-Include="submit/affiliate/bestbuy_com.htm" 
                TAG="BODY" startspan -->

<a href="http://www.bestbuy.com">
<img 
src="images/logos/bestbuy2_150.gif" border="0" 
alt="Best Buy" width="80" height="40"></a>

<!--webbot bot="Include" i-checksum="6958" endspan --></td>
              </tr>
              <tr>
                <td align="center">
                <!--webbot 
                bot="Include" U-Include="submit/affiliate/lasermonks_com.htm" 
                TAG="BODY" startspan -->

<a href="submit/affiliate/lasermonks_com.asp"><!--laser monks-->
<img
border="0" src="images/logos/LaserMonks120.gif" width="120" 
height="30" alt="LaserMonks"></a>

<!--webbot bot="Include" i-checksum="36679" endspan --></td>
              </tr>
              <tr>
                <td align="center">
                <a href="http://www.newegg.com/">
				<img border="0" src="images/logos/NewEgg.gif" width="135" height="39" alt="NewEgg.com"></a></td>
              </tr>
              <tr>
                <td align="center"><a
                  href="submit/affiliate/cnet_shopper_com.asp"><img border="0"
                  src="images/logos/cnet-sh-synd-100x42.gif"
                  alt="Shopper.cnet.com"></a></td>
              </tr>
              <tr>
                <td align="center"><a href="http://www.mySimon.com/"><img
                  border="0" src="images/logos/mysimon.gif" alt="MySimon" width="135"
                  height="31"></a></td>
              </tr>
              <tr>
                <td align="center"><a href="http://www.calibex.com/">
                CALIBEX.com</a></td>
              </tr>
              <tr>
                <td align="center"><a href="http://www.pricegrabber.com/">
                PriceGrabber.com</a></td>
              </tr>
              </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<%Response.Flush%>
<table border="0" cellspacing="0" cellpadding="0" width="470">
  <tr>
    <td valign="top" width="470"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_prefix.asp" )
	END IF
      %>
      <table border="0" width="100%" cellpadding="0">
        <tr>
          <td colspan="5">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <td bgcolor="#CC9966" class="reference">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="reference">Quick Web Search</th>
                      <td align="right"><a href="isearch.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <!--webbot bot="Include"
                  u-include="_private/ref/qsearch.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <form method="GET" name="SearchForm"
      action="submit/searchengine/searchengine.asp">
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><select name="e" size="1" onchange="handleEngineChange()">
                <option selected value="grizzlyweblinks">This Site</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="fast">Fast Search</option>
                <option value="google">Google!</option>
                <option value="looksmart">LookSmart</option>
                <option value="lycos">Lycos</option>
                <option value="nbci">NBCi</option>
                <option value="northernlight">Northern Light</option>
                <option value="dmoz">Open Directory (dmoz)</option>
                <option value="whatuseek">What-U-Seek</option>
                <option value="yahoo">Yahoo!</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="dogpile">DogPile</option>
                <option value="mamma">Mamma</option>
                <option value="omniseek">OmniSeek</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="websterdictionary" style="font-style:'italic'">Webster's
                Dictionary</option>
                <option value="websterthesaurus" style="font-style:'italic'">Webster's
                Thesaurus</option>
              </select> <input type="text" name="q" size="25"> <input
              type="submit" value="Find" name="x"></td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>
<script language="JavaScript">
<!--

function setDocumentCookie( oDoc, sName, sValue )
{
	if ( sName.length < 1 )
		return;

	if ( 0 < sValue.length )
	{
		var	expDate = new Date();
		expDate.setTime( expDate.getTime() + 365*24*60*60*1000 );
		oDoc.cookie = ""
						+ sName + "=" + sValue + "; "
						+ "expires=" + expDate.toGMTString();
	}
	else
	{
		oDoc.cookie = sName + "=";
	}
}

function setNamedCookie( sName, sValue )
{
	setDocumentCookie( document, sName, sValue );
}

function deleteDocumentCookie( oDoc, sName )
{
	oDoc.cookie = sName + "=";
}

function deleteCookie( sName )
{
	deleteDocumentCookie( document, sName );
}

function fetchDocumentCookie( oDoc, sName )
{
	var sValue = "";
	var index = 0;

	if( oDoc.cookie )
		index = oDoc.cookie.indexOf( sName + "=" );
	else
		index = -1;

	if ( index < 0 )
	{
		sValue = "";
	}
	else
	{
		var countbegin = (oDoc.cookie.indexOf( "=", index ) + 1);
		if ( 0 < countbegin )
		{
			var countend = oDoc.cookie.indexOf( ";", countbegin );
			if ( countend < 0 )
				countend = oDoc.cookie.length;
			sValue = oDoc.cookie.substring( countbegin, countend );
		}
		else
		{
			sValue = "";
		}
	}
	return sValue;
}

function fetchNamedCookie( sName )
{
	return fetchDocumentCookie( document, sName );
}

function loadSearchCookie()
{
	var sEngine = fetchNamedCookie( "GrizzlyWebSearch" );
	var objEngines = document.SearchForm.e;
	var nMaxOptions = objEngines.length;
	var n = 0;
	document.SearchForm.q.focus();
	for ( n = 0; n < nMaxOptions; ++n )
	{
		if ( sEngine == objEngines.options[n].text )
		{
			document.SearchForm.e.selectedIndex = n;
			return;
		}
	}
	/*
	// if we got to here then we did not find a match
	// we will just let it default
	*/
}


function handleEngineChange()
{
	document.SearchForm.q.focus();
	var nOption = document.SearchForm.e.selectedIndex;
	var sEngine = document.SearchForm.e.options[nOption].text;
	var which = document.SearchForm.e.options[nOption].value;
	if ( which.length < 1 )
	{
		document.SearchForm.e.selectedIndex = nOption - 1;
		return;
	}

	setNamedCookie( "GrizzlyWebSearch", sEngine );
}

loadSearchCookie();

//-->
</script>

<!--webbot bot="Include" i-checksum="56068" endspan --></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" align="left" class="news">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="news"><a
                        href="news.asp?<%=sLocArgx%>" class="navigation">News</a></th>
                      <td align="right"><a href="news.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><a href="http://abcnews.com/">ABC</a><br>
                        <a href="http://cbsnews.com/">CBS</a><br>
                        <a href="http://cnn.com/">CNN</a></td>
                      <td bgcolor="#CCCC99" width="1" class="gutter"><spacer type="block" height="1" width="1"></td>
                      <td><a href="http://www.foxnews.com/">Fox</a><br>
                        <a href="http://www.msnbc.com/">NBC</a><br>
                        <a href="http://news.bbc.co.uk/">BBC</a></td>
                    </tr>
                    <tr>
                      <td colspan="3" bgcolor="#CCCC99" height="1"
                      class="gutter"><spacer type="block" height="1" width="1"></td>
                    </tr>
                    <tr>
                      <td colspan="3"><a href="http://www.usatoday.com/">USA
                        Today</a><br>
                        <a href="http://www.nytimes.com/">New York Times</a><br>
                        <a href="http://www.washingtonpost.com/">Washington Post</a></td>
                    </tr>
                    <tr>
                      <td colspan="3" bgcolor="#CCCC99" width="1" class="gutter"><spacer type="block" height="1" width="1"></td>
                    </tr>
                    <tr>
                      <td colspan="3"><a
                        href="http://dailynews.yahoo.com/h/ts/ap/">AP Top
                        Stories</a></td>
                    </tr>
                  </table>
                  <%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_news.asp" )
	END IF
                  %>
                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="news">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="news"><a
                        href="politics.asp?<%=sLocArgx%>" class="navigation">Politics</a></th>
                      <td align="right"><a class="more"
                        href="politics.asp?<%=sLocArgx%>">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" class="boxbody"><a href="http://www.foxnews.com/politics/">FoxNews
                  Politics</a> <br>
      <a href="http://www.hillnews.com/">Hill, The</a><br>
                  <a href="http://www.worldnetdaily.com/">WorldNetDaily</a>
                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="news">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="news"><a
                        href="editorial.asp?<%=sLocArgx%>" class="navigation">Editorial</a></th>
                      <td align="right"><a class="more"
                        href="editorial.asp?<%=sLocArgx%>">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" class="boxbody"><a
                  href="http://www.drudgereport.com/">Matt Drudge</a><br>
                  <a href="http://www.kansascity.com/mld/kansascity/news/columnists/cw_gusewelle/">C.W.Gusewelle</a><br>
                  <a href="http://www.townhall.com/columnists/georgewill/">George
                  Will</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="recreation">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="recreation"><a
                        href="sports.asp?<%=sLocArgx%>" class="navigation">Sports</a></th>
                      <td align="right"><a href="sports.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://cbs.sportsline.com/">CBS Sportsline</a><br>
                  <a href="http://cnnsi.com/">CNN<em>si</em></a><br>
                  <a href="http://www.jpsports.com/">JP Sports</a> <br>
<%
	DIM	nSpMon
	nSpMon = Month(Now)
	IF 1 < nSpMon  AND  nSpMon < 12 THEN
%>
                  <a href="http://www.nascar.com/">NASCAR</a><%
    END IF
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_sports.asp" )
	END IF
                  %></td>
              </tr>
            </table>
          </td>
          <td valign="top" width="1" class="gutter" bgcolor="#C0C0C0"><spacer type="block" height="1" width="1"></td>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="news">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="news"><a
                        href="weather.asp?<%=sLocArgx%>" class="navigation">Weather</a></th>
                      <td align="right"><a href="weather.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
                <%
                IF 0 < LEN(sLocationName) THEN
                %>
              <tr>
                <th align="left" class="boxsubtitle"><%=sLocationName%></th>
              </tr>
                <%
                END IF
                %>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" class="boxbody"><a
                  href="weather_current.asp?<%=sLocArgx%>">Current</a><br>
                  <a href="weather_forecast.asp?<%=sLocArgx%>">Forecast</a> (<a
                  href="weather_forecast_maps.asp?<%=sLocArgx%>">maps</a>)<br>
                  <a href="weather_radar.asp?<%=sLocArgx%>">Radar</a> (<a
                  href="weather_radar_region.asp?<%=sLocArgx%>">regional</a>)<br>
                  <a href="weather_warnings.asp?<%=sLocArgx%>">Storm warnings</a><%
                  
                  DIM nWxMon
                  nWxMon = Month(Now)
                  IF 5 < nWxMon AND nWxMon < 11 THEN
                  %><br>
                  <a href="http://www.wunderground.com/tropical/">Tropical
                  Weather</a>
                  <%
                  END IF
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_weather.asp" )
	END IF
                  %></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="money">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="money"><a
                        href="market.asp?<%=sLocArgx%>" class="navigation">Market</a></th>
                      <td align="right"><a href="market.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.abcnews.com/sections/business/">ABC-Business</a><br>
                  <a href="http://www.fool.com/">Motley Fool</a><br>
                  <a href="http://quote.yahoo.com/">Yahoo! Finance</a> <br>
				<a href="http://www.gasbuddy.com/gb_gastemperaturemap.aspx">US 
				Gas $$ Map</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Computing</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <a href="http://news.com.com/">c|net News.com</a><br>
                  <a href="http://maccentral.macworld.com/">MacCentral</a><br>
                  <a href="http://www.zdnet.com/pcweek/">PCWeek</a>&nbsp;<br>
                  <a href="http://www.wininformant.com/">WinInfo</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="reference">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="reference"><a
                        href="1ref.asp?<%=sLocArgx%>" class="navigation">Reference</a></th>
                      <td align="right"><a href="1ref.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                  <a href="calendar.asp?<%=sLocArgx%>">Calendar</a> <br>
					<a href="http://maps.google.com/">Google Maps</a><br>
                  <a href="http://www.howstuffworks.com/index.htm">HowStuffWorks</a> <br>
                  <a href="http://www.time.gov/">Official U.S. Time</a><br>
            <a href="submit/affiliate/whitepages_com.asp"><img border="0" src="images/logos/whitepages.gif" alt="WhitePages"></a><br>
                  <a href="http://www.m-w.com/dictionary.htm">WWWebster</a></td>
              </tr>
            </table>
          </td>
          <td valign="top" width="1" class="gutter" bgcolor="#C0C0C0"><spacer type="block" height="1" width="1"></td>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="entertainment">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="entertainment"><a
                        href="comics.asp?<%=sLocArgx%>" class="navigation">Comics</a></th>
                      <td align="right"><a href="comics.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.creators.com/comics_show.cfm?comicname=bc">B.C.</a><br>
                  <a
                  href="http://www.kingfeatures.com/features/comics/blondie/about.htm">Blondie</a><br>
                  <a href="http://www.ucomics.com/calvinandhobbes/">Calvin-Hobbes</a><br>
                  <a href="http://www.comics.com/comics/dilbert/">Dilbert</a><br>
                  	<a href="http://www.garfield.com/comics/comics_todays.html">Garfield</a><br>
                  <a href="http://www.comics.com/comics/grizzwells/"><font
                  size="1">The </font>Grizzwells</a><br>
                  <a
                  href="http://www.kingfeatures.com/features/comics/hagar/about.htm">Hagar
                  the Horrible</a><br>
                  <a href="http://www.comics.com/comics/marmaduke/">Marmaduke</a><br>
                  <a href="http://www.comics.com/comics/peanuts/">Peanuts</a> 
				<br>
                <a href="http://www.ucomics.com/pickles/">Pickles</a><br>
                	<a href="http://www.comics.com/wash/redandrover/index.html">Red &amp; Rover</a><br>
                  <a
                  href="http://www.kingfeatures.com/features/comics/bgoogle/about.htm">Snuffy
                  Smith</a><br>
                  <a href="http://www.creators.com/comics_show.cfm?comicname=wiz">Wizard
                  of Id</a><br>
                  <a
                  href="http://www.kingfeatures.com/features/comics/zits/about.htm">Zits</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <td bgcolor="#CC9966" class="entertainment">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th align="left" class="entertainment"><a
                        href="1ent.asp?<%=sLocArgx%>" class="navigation">Entertain...</a></th>
                      <td align="right"><a href="1ent.asp?<%=sLocArgx%>"
                        class="more">more...</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>
                        <a href="http://ajokeaday.com/">A Joke a Day</a><br>
                        <a href="http://www.wordsmith.org/words/today.html">A
                        Word A Day</a><br>
                        <a href="http://www.almanac.com/"><small>Farmers</small>
                        Almanac</a><br>
                        <a href="http://www.scopesys.com/today/">Today in
                        History</a></td>
                    </tr>
                    <tr>
                      <td bgcolor="#CCCC99" height="1" class="gutter"><spacer type="block" height="1" width="1"></td>
                    </tr>
                    <tr>
                      <td><a href="http://www.imdb.com/">Movie <small>Database</small></a><br>
                        <a href="http://mp3.com/">MP3.com</a><br>
                        <a href="http://www.netlibrary.com/">netLibrary</a><br>
                        <a href="http://www.scifi.com/sfw/">Sci-Fi <small>Weekly</small></a><br>
                        <a href="http://members.aol.com/soaplinks/index.html">Soap
                        Links</a></td>
                    </tr>
                  </table>
                  <%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_ent.asp" )
	END IF
                  %>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <%
	IF Len( sLocation ) < 1 THEN
		buildLocationTable()
	ELSE
		includeBody( "location\" & sLocation & "\index.asp" )
	END IF
      %>
    </td>
  </tr>
</table>
<%Response.Flush%>
<div style="position: relative; visibility: hidden; display: none">
  <!--webbot bot="Include" u-include="_private/other/browserbuttons.htm"
  tag="BODY" startspan -->

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

<!--webbot bot="Include" i-checksum="55137" endspan --></div>
<!--webbot bot="Include" 
u-include="../_private/include/footer_sans_addlink.htm" tag="BODY" startspan
-->
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
            <td><a
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





<!--webbot bot="Include" i-checksum="20717" endspan -->


</body>

</html>
<%
Response.Flush
ELSEIF 1 = bConfigLocation THEN
%>
<!--#include file="index_editlocation.asp"-->
<%ELSE%>
<!--#include file="_private\reloadconfig.asp"-->
<%
END IF
Response.Flush
Response.End
%>