<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\locationnames.asp"-->
<!--#include file="_private\navigation.asp"-->
<%
DIM	sPageTitle
DIM	sWxCityTitle

sPageTitle = ""
sWxCityTitle = ""
IF 0 < Len(sLocationName) THEN
	sPageTitle = " - " & sLocationName
	sWxCityTitle = "<br><span class=""xsmall"">" & sLocationName & "</span>"
END IF
%>
<html>

<head>
<title>News introduction<%=sPageTitle%> - Grizzly Web Links</title>
<!--#include file="_private\ratings_meta_tags.asp"-->
<link rel="stylesheet" title="Default Styles" href="0style.css">
<link rel="stylesheet" title="News Styles" href="0style_news.css">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

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

<!--webbot bot="Include" i-checksum="22514" endspan --><%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1news.asp;;News & Events"
	NavBack sPages, sLocArgx
	
	sPages = "comics.asp;entertainment;Comics" & vbLF _
		&	"editorial.asp;;Editorial & Opinion" & vbLF _
		&	"magazine.asp;entertainment;Magazines" & vbLF _
		&	"market.asp;money;Marketplace" & vbLF _
		&	"news.asp;;News" & vbLF _
		&	"politics.asp;;Politics" & vbLF _
		&	"sports.asp;recreation;Sports" & vbLF _
		&	"weather.asp;;Weather"

	NavPages sPages, sLocArgx, "news"


%>


    </td>
  </tr>
</table>
<table border="0" width="470" cellpadding="0">
  <tr>
    <td valign="top">
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" align="left" class="news">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="news">News</th>
                <td align="right"><a href="news.asp?<%=sLocArgx%>" class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_news.asp" )
	END IF
                  %>
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#FFFF99" class="boxsubtitle"
                colspan="2"><strong>U.S. Networks</strong></td>
              </tr>
              <tr>
                <td width="50%"><a href="http://abcnews.com/">ABC</a><br>
                  <a href="http://cbsnews.com/">CBS</a><br>
                  <a href="http://cnn.com/">CNN</a></td>
                <td width="50%"><a href="http://www.foxnews.com/">Fox</a><br>
                  <a href="http://www.msnbc.com/">NBC</a><br>
                  <a href="http://www.pbs.org/newshour/">PBS</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#FFFF99" class="boxsubtitle"><strong>U.S.
                  Papers</strong></td>
              </tr>
              <tr>
                <td width="100%"><a href="http://www.accessatlanta.com/ajc/">Atlanta
                  <font size="2">Jnl-Constitution</font></a><br>
                  <a href="http://www.charlotte.com/">Charlotte Observer</a><br>
                  <a href="http://www.kcstar.com/">Kansas City Star</a><br>
                  <a href="http://www.nytimes.com/">New York Times</a><br>
                  <a href="http://www.phillynews.com/inq/front_page">Philadelphia
                  Inquirer</a><br>
                  <a href="http://www.tennessean.com/">Tennessean</a><br>
                  <a href="http://www.usatoday.com/">USA Today</a><br>
                  <a href="http://www.washingtonpost.com/">Washington Post</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#FFFF99" class="boxsubtitle"><strong>Online
                  Only</strong></td>
              </tr>
              <tr>
                <td width="100%"><em><a href="http://www.newsmax.com/">NewsMax</a></em><br>
                  <a href="http://www.worldnetdaily.com/">WorldNetDaily</a><br>
                  <a href="http://dailynews.yahoo.com/headlines/">Yahoo News</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#FFFF99" class="boxsubtitle"><strong>News
                  Wires</strong></td>
              </tr>
              <tr>
                <td width="100%"><a href="http://dailynews.yahoo.com/h/ts/ap/">AP
                  Top Stories</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="money">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="money">Market</th>
                <td align="right"><a href="market.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody"><a
            href="http://www.bloomberg.com/welcome.html">Bloomberg</a><br>
            <a href="http://cbs.marketwatch.com/news/newsroom.htx">CBS
            MarketWatch</a><br>
            <a href="http://www.pathfinder.com/fortune/">Fortune</a><br>
            <a href="http://moneydaily.com/">Money-daily</a><br>
            <a href="http://www.nasdaq.com/">NASDAQ</a></td>
        </tr>
      </table>
    </td>
    <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img border="0"
      src="../images/000000.gif"></td>
    <td valign="top">
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="news">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="news">Weather<%=sWxCityTitle%></th>
                <td align="right"><a href="weather.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody"><a
            href="weather_current.asp?<%=sLocArgx%>">Current</a><br>
            <a href="weather_forecast.asp?<%=sLocArgx%>">Forecast</a> (<a
            href="weather_forecast_maps.asp?<%=sLocArgx%>">maps</a>)<br>
            <a href="weather_radar.asp?<%=sLocArgx%>">Radar</a> (<a
            href="weather_radar_region.asp?<%=sLocArgx%>">regional</a>)<br>
            <a href="weather_warnings.asp?<%=sLocArgx%>">Storm Warnings</a><br>
            <a href="http://www.wunderground.com/tropical/">Tropical Weather</a><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\index_weather.asp" )
	END IF
                  %> </td>
        </tr>
              <!--/table>    <table border="0" width="100%" cellpadding="2"-->
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="recreation">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="recreation">Sports</th>
                <td align="right"><a href="sports.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody"><a
            href="http://www.abcsports.com/">ABC Sports</a><br>
            <a href="http://cbs.sportsline.com/">CBS Sportsline</a><br>
            <a href="http://cnnsi.com/">CNN<em>si</a><br>
            </em><a href="http://espnet.sportszone.com/">ESPNET SportsZone</a><br>
            <a href="http://www.jpsports.com/">JP Sports</a><br>
            <a href="http://www.nascar.com/">NASCAR</a><em><br>
            </em><a href="http://www.msnbcsports.com/">NBC Sports</a><br>
            <a href="http://www.sportserver.com/racing/noframes/archive/">Racing
            News</a><br>
            <a href="http://www.sportingnews.com/">Sporting News</a></td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="news">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="news">Politics</th>
                <td align="right"><a href="politics.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody"><a
            href="http://cbsnews.cbs.com/now/section/0,1636,250-412,00.shtml">CBS
            Politics</a><br>
            <a href="http://www.allpolitics.com/">CNN/All Politics</a><br>
            <a href="http://www.hillnews.com/">Hill, The</a><br>
            <a href="http://www.vote.com/">VOTE.COM</a><br>
            <a href="http://www.washtimes.com/national/"><font size="2">Wash.
            Times</font>/Politics</a></td>
        </tr>
      </table>
    </td>
    <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img border="0"
      src="../images/000000.gif"></td>
    <td valign="top">
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="entertainment">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="entertainment">Comics</th>
                <td align="right"><a href="comics.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody"><a href="http://www.creators.com/comics_show.cfm?comicname=bc">B.C.</a><br>
            <a
            href="http://www.kingfeatures.com/features/comics/bbailey/about.htm">Beetle
            Bailey</a><br>
            <a
            href="http://www.kingfeatures.com/features/comics/blondie/about.htm">Blondie</a><br>
            <a href="http://www.ucomics.com/calvinandhobbes/">Calvin and Hobbes</a><br>
            <a href="http://www.comics.com/comics/dilbert/">Dilbert</a><br>
            <a
            href="http://www.kingfeatures.com/features/comics/familyc/about.htm">Family
            Circus</a><br>
            <a href="http://www.unitedmedia.com/comics/forbetter/"><small>For
            Better or For Worse</small></a><br>
            <a href="http://garfield.ucomics.com/garfield/gaview.htm">Garfield</a><br>
            <a href="http://www.comics.com/comics/grizzwells/"><font
            size="1">The </font>Grizzwells</a><br>
            <a
            href="http://www.kingfeatures.com/features/comics/hagar/about.htm">Hagar
            the Horrible</a><br>
            <a href="http://www.comics.com/comics/marmaduke/">Marmaduke</a><br>
            <a href="http://www.comics.com/comics/nancy/">Nancy</a><br>
            <a href="http://www.comics.com/comics/peanuts/">Peanuts</a> <br>
          <a href="http://www.ucomics.com/pickles/">Pickles</a><br>
                <a href="http://www.comics.com/wash/redandrover/index.html">Red &amp; Rover</a><br>
            <a
            href="http://www.kingfeatures.com/features/comics/bgoogle/about.htm">Snuffy
            Smith</a><br>
            <a href="http://www.creators.com/comics_show.cfm?comicname=wiz">Wizard of
            Id</a><br>
            <a href="http://www.kingfeatures.com/features/comics/zits/about.htm">Zits</a></td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="news">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="news">Editorial</th>
                <td align="right"><a href="editorial.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" width="100%" class="boxbody">
			<a href="http://www.sacbee.com/content/opinion/debate/barry/">Dave Barry</a><br>
            <a href="http://boortz.com/">Neal Boortz</a><br>
            <a href="http://www.drudgereport.com/">Matt Drudge</a><br>
            <a href="http://www.kansascity.com/mld/kansascity/news/columnists/cw_gusewelle/">C.W.Gusewelle</a><br>
                  <a href="http://www.townhall.com/columnists/georgewill/">George
                  Will</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<script language="JavaScript">
<!--
	LinkExchangePage = "6";
//-->
</script>
<!--webbot bot="Include" u-include="_private/banners/le_banner.asp" tag="BODY" startspan
-->

<%
IF 0 = 1 THEN
	DIM	sLEhost

	sLEHost = LCase(Request.ServerVariables("HTTP_HOST"))

	IF 0 = InStr(1,sLEHost,"tosh",1)  AND  0 = InStr(1,sLEHost,"localhost",1) THEN
%>
<br clear="all">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td align="center" nowrap><script language="JavaScript">
<!--

	var sTempLoc = window.location.href;
	var sTemp = sTempLoc.toLowerCase();

	if ( sTemp.indexOf("file:") < 0  &&  sTemp.indexOf("//tosh") < 0  &&  sTemp.indexOf("//localhost") < 0 )
	{
		//<!-- BEGIN LINKEXCHANGE CODE -->

		var sTempPage;

		if ( !LinkExchangePage )
			sTempPage = "1"
		else
			sTempPage = "" + LinkExchangePage;

		with (document)
		{
			write('<iframe src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showiframe?" width=468 height=60 ');
			writeln('marginwidth=0 marginheight=0 hspace=0 vspace=0 frameborder=0 scrolling=no>');
			write('<a href="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/clickle" target="_top">');
			writeln('<img width=468 height=60 border=0 ismap alt="" ');
			write('src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showle?"></a>');
			writeln('</iframe><br>');
			write('<a href="http://leader.linkexchange.com/');
			write(sTempPage);
			write('/X921570/clicklogo" target="_top">');
			write('<img src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showlogo?" width=468 height=16 border=0 ismap alt=""></a>');
		}

		//<!-- END LINKEXCHANGE CODE -->
	}
//-->
</script></td>
  </tr>
</table>
<%
	END IF
END IF
%>

<!--webbot bot="Include" i-checksum="12126" endspan --><!--webbot bot="Include" u-include="_private/nav/0root_navbar.asp" tag="BODY" startspan
-->

<br clear="all">
<!--table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../../../images/000000.gif" width="1" height="1"></td>
  </tr>
</table-->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" align="left" valign="top" width="16"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#663300" align="right" rowspan="3"><font color="#FFCC00">Web
      Links</font></th>
    <td bgcolor="#663300" rowspan="3">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a href="1ent.asp"
            class="navigationsmall">Entertainment</a></th>
          <th bgcolor="#CC9966" class="home"><a href="1home.asp"
            class="navigationsmall">Home &amp; Family</a></th>
          <th bgcolor="#CC9966" class="living"><a href="1living.asp"
            class="navigationsmall">Living</a></th>
          <th bgcolor="#CC9966" class="money"><a href="1money.asp"
            class="navigationsmall">Money &amp; Business</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="news"><a href="1news.asp"
            class="navigationsmall">News &amp; Events</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="1rec.asp"
            class="navigationsmall">Recreation</a></th>
          <th bgcolor="#CC9966" class="reference"><a href="1ref.asp"
            class="navigationsmall">Reference</a></th>
          <th bgcolor="#CC9966" class="science"><a href="1sci.asp"
            class="navigationsmall">Science &amp; Nature</a></th>
          <th bgcolor="#CC9966" class="technology"><a href="1tech.asp"
            class="navigationsmall">Technology</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#663300" valign="top" align="right"><img
      src="../images/pie_tr.gif" border="0" width="16" height="16"></td>
  </tr>
  <tr>
    <td bgcolor="#663300" align="left" width="16"><img
      src="../images/000000.gif" width="1" height="1"></td>
    <td bgcolor="#663300" height="1"><img src="../images/000000.gif"
      alt="." width="1" height="1"></td>
  </tr>
  <tr>
    <td bgcolor="#663300" align="left" valign="bottom" width="16"><img
      src="../images/pie_bl.gif" border="0" width="16" height="16"></td>
    <td bgcolor="#663300" valign="bottom" align="right"><img
      src="../images/pie_br.gif" alt="pie_br.gif (861 bytes)" border="0"
      width="16" height="16"></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="12083" endspan --><!--webbot bot="Include" u-include="../_private/include/footer.asp"
tag="BODY" startspan -->



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




<!--webbot bot="Include" i-checksum="37146" endspan -->



</body>

</html>