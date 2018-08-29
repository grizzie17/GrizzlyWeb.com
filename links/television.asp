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
<title>Television<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="keywords"
content="television, tv, TV, stations, tv station list, tv guide<%=sKwdTitle%>">
<meta name="description"
content="Television station lists and other resources<%=sDescTitle%>">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ent.css"
media="screen">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="620" cellspacing="0" cellpadding="0">
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
		&	"1ent.asp;;Entertainment" & vbLF _
		&	"television.asp;;Television" & sNavTitle
	NavBack sPages, sLocArgx
%>

      <%IF 0 < Len(sLocation) THEN%>
      <p align="center"><a href="television.asp?loc=">Other Locations</a></p>
      <%END IF%>
            <p align="center"><b>Related Pages:</b><br>
            <a href="news.asp?<%=sLocArgx%>">News</a><br>
            <a href="radio.asp?<%=sLocArgx%>">Radio</a></p>
      <!--webbot bot="Include" u-include="_private/other/webcenterstop.htm"
      tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="25"><spacer type="block" width="1" height="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CC9966" class="webcenters" valign="top" align="left"><img src="../images/pie_tl.gif" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#CC9966" class="webcenters">Web Centers</th>
    <td bgcolor="#CC9966" class="webcenters" valign="top" align="right"><img src="../images/pie_tr.gif" width="16" height="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="53814" endspan -->

      <table border="0" cellpadding="4" width="100%" cellspacing="0">
        <tr>
          <td bgcolor="#FFFFCC" class="webcentersbody"><a
            href="http://asylum.aol.com/cgi-bin/aggregate?aggregator=tv">AOL.com</a><br>
            <a href="http://www.excite.com/entertainment/tv/">Excite</a><br>
            <a href="http://www.lycos.com/entertainment/tv/">Lycos</a><br>
            <a href="http://magellan.excite.com/entertainment/tv">Magellan</a><br>
            <a href="http://home.miningco.com/entertainment/tv/">Mining Co.</a><br>
            <a href="http://dir.yahoo.com/News_and_Media/Television/">Yahoo!</a></td>
        </tr>
      </table>
      <!--webbot bot="Include" u-include="_private/other/webcentersbottom.htm"
      tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#CC9966" class="webcenters" valign="bottom" align="left"><img src="../images/pie_bl.gif" width="16" height="16"></td>
    <td bgcolor="#CC9966" class="webcenters" valign="bottom" align="right"><img src="../images/pie_br.gif" width="16" height="16"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"><img src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="38882" endspan -->

    </td>
    <td valign="top" width="470"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\television.asp" )
	ELSE
		buildLocationTable()
	END IF
      %>
      <table border="0" cellspacing="4" cellpadding="0" width="100%">
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">News
                  Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
                <!--webbot bot="Include"
                  u-include="_private/magazine/tv.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td><a href="http://www.nextlevel.com/daytimetv/">Daytime TV</a><br>
    <a href="http://pathfinder.com/ew/">Entertainment Weekly</a><br>
    <a href="http://www.soapoperadigest.com/">Soap Opera Digest</a> <br>
    <a href="http://www.talkers.com/">Talkers</a><br>
    <a href="http://www.variety.com/">Variety</a></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="52760" endspan -->

                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Interests</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.biography.com/">Biography</a><br>
                  <a href="http://www.emmys.org/">Emmy Awards</a><br>
                  <a href="http://www.nyfests.com/">New York TV Awards</a><br>
                  <a href="http://ytv.yahoo.com/nielsen/">Nielsen Ratings</a><br>
                  <a href="http://members.aol.com/soaplinks/index.html">Soap
                  Links</a><br>
                  <a href="http://www.tvfavorites.com/">TV FAVORITES</a><br>
                  <a href="http://tv.yahoo.com/soaps/">Yahoo! Soaps</a><br>
                  <a href="http://tv.yahoo.com/">Yahoo! TV</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">National
                  Networks</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%"><a
                  href="http://www.abc.com/">ABC</a><br>
                  <a href="http://www.cbs.com/">CBS</a><br>
                  <a href="http://www.nbc.com/">NBC</a><br>
                  <a href="http://www.fox.com/">FOX</a><br>
                  <a href="http://www.pbs.org/">PBS</a></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Watch
                  TV</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://foreigntv.com/">ForeignTV.com</a><br>
                  <a href="http://www.icravetv.com/">iCraveTV</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="entertainment">Listings</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" valign="top" width="100%"><a
                  href="http://www.clicktv.com/">Click TV</a><br>
                  <a href="http://www.thegist.com/">GIST TV Listings</a><br>
                  <a href="http://www.tvquest.com/">TV Quest</a><br>
                  <a href="http://www.ultimatetv.com/">UltimateTV</a>
                  <p><a href="http://www.buttle.com/tv/schedule.htm">World TV
                  Schedules</a>&nbsp;<br>
                  <table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <th class="small" align="left" bgcolor="#FFFF99">News
                        Stand</th>
                    </tr>
                    <tr>
                      <td width="100%">
                      <!--webbot bot="Include"
                        u-include="_private/magazine/tvguide.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td><a href="http://www.tripled.com/onsat/onsat.htm">OnSat</a><br>
      <a href="http://www.satguide.com/">Satellite Entertainment Guide</a><br>
      <a href="http://www.directtv.com/">See</a> - DirectTV<br>
      <a href="http://www.smarttvmag.com/">Smart TV</a><br>
      <em><a href="http://www.tvguide.com/">TV Guide</a></em><br>
      <a href="http://www.tvhost.com/">TV Host</a><br>
      <a href="http://www.tripled.com/tvplus/tvp.htm">TV Plus</a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="58935" endspan -->

                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" colspan="2" class="entertainment">Cable
            Stations</th>
        </tr>
        <tr>
          <td valign="top" bgcolor="#FFFFCC"><a href="http://www.amctv.com/">AMC
            American Movie Classics</a><br>
            <a href="http://www.animal.discovery.com/">Animal Planet</a><br>
            <a href="http://www.aande.com/">A&amp;E Arts &amp; Entertainment</a><br>
            <a href="http://www.betnetworks.com/">BET Black Entertainment TV</a><br>
            <a href="http://www.bravotv.com/">Bravo</a><br>
            <a href="http://www.turner.com/toonin">Cartoon Network</a><br>
            <a href="http://www.cinemax.com/">Cinemax</a><br>
            <a href="http://www.classicsports.com/">Classic Sports</a><br>
            <a href="http://www.country.com/">CMT Country Music TV</a><br>
            <a href="http://www.comcentral.com/">Comedy Central</a><br>
            <a href="http://www.courttv.com/">Court TV</a><br>
            <a href="http://www.cnbc.com/">CNBC</a><br>
            <a href="http://www.cnn.com/">CNN</a><br>
            <a href="http://www.c-span.org/">C-SPAN</a> <br>
            <a href="http://www.discovery.com/">Discovery</a>&nbsp;<br>
            <a href="http://discoveryhealth.com/">Discovery Health</a><br>
            <a href="http://discoverykids.com/">Discovery Kids</a>&nbsp;<br>
            <a href="http://discoveryscience.com/">Discovery Science</a><br>
            <a href="http://disneychannel.com/">Disney</a>&nbsp;<br>
			<a href="http://diynetwork.com/">DiY - Do It Yourself</a><br>
            <a href="http://www.starzencore.com/">Encore</a><br>
            <a href="http://www.eonline.com/">E! Online</a><br>
            <a href="http://espnet.sportszone.com/">ESPN</a>&nbsp;<br>
            <a href="http://www.ewtn.com/">EWTN</a><br>
            <a href="http://www.familychannel.com/">Family</a>&nbsp;<br>
            <a href="http://www.foodtv.com/">Food</a>&nbsp;<br>
            <a href="http://www.foxfamilychannel.com/">FOX Family</a><br>
            <a href="http://www.fxnetworks.com/">FX Fox Cable Network</a>&nbsp;<br>
            <a href="http://foxnews.com/">FOX News</a><br>
            <a href="http://www.foxsports.com/south">FOX Sports South</a>&nbsp;<br>
            <a href="http://foxsports.com/foxsportsworld">FOX Sports World</a><br>
            <a href="http://gameshownetwork.com/"> Game Show Network</a>&nbsp;<br>
            <a href="http://countrystars.com/">Great American Country</a><br>
            <a href="http://www.thegolfchannel.com/">Golf</a><br>
            <a href="http://www.hbo.com/">HBO Home Box Office</a><br>
            <a href="http://www.hgtv.com/">Home and Garden TV</a><br>
            <a href="http://www.cnn.com/HLN">Headline News</a><br>
            <a href="http://www.historychannel.com/">History Channel</a>&nbsp;<br>
            <a href="http://www.ppv.com/frames.asp">iN DEMAND</a>&nbsp;<br>
            <a href="http://www.ifctv.com/">Independent Film Channel</a><br>
            <a href="http://www.insp.com/">INSP&nbsp;Inspiration Network</a></td>
          <td valign="top" bgcolor="#FFFFCC"><a href="http://www.meu.edu/">Knowledge
            TV</a><br>
            <a href="http://www.lifetimetv.com/">Lifetime</a>&nbsp;<br>
            <a href="http://lovestories.encoremedia.com/">Love Stories</a><br>
            <a href="http://miltv.ais.net/">Military Channel</a><br>
            <a href="http://www.msnbc.com/">MSNBC</a><br>
            <a href="http://www.mtv.com/">MTV Music TV</a>&nbsp;<br>
            <a href="http://mystery.encoremedia.com/">Mystery</a><br>
            <a href="http://www.nasa.gov/ntv/">NASA</a>&nbsp;<br>
            <a href="http://www.nick.com/">Nickelodeon</a> - <a
            href="http://www.nick-at-nite.com/">Nick-at-Night</a>&nbsp;<br>
            <a href="http://www.noggin.com/">Noggin</a><br>
            <a href="http://www.odysseychannel.com/">Odyssey</a>&nbsp;<br>
            <a href="http://www.greatoutdoors.com/">Outdoor Life</a><br>
            <a href="http://www.qvc.com/">QVC Home Shopping</a><br>
            <a href="http://www.scifi.com/">Sci-Fi</a><br>
            <a href="http://www.sho.com/">Showtime</a><br>
            <a href="http://soapnet.go.com/">SoapNet</a><br>
            <a href="http://speedtv.com/">Speed</a>&nbsp;<br>
            <a href="http://starz.encoremedia.com/">STARZ!</a>&nbsp;<br>
            <a href="http://www.starzfamily.com/">STARZ! Family</a><br>
            <a href="http://www.sundancechannel.com/">Sundance Channel</a>&nbsp;<br>
            <a href="http://tbssuperstation.com/">TBS Superstation</a><br>
            <a href="http://tcm.turner.com/">TCM Turner Classic Movies</a><br>
            <a href="http://school.discovery.com/">TLC The Learning Channel</a><br>
            <a href="http://www.showtimeonline.com/TMC">TMC The Movie Channel</a>&nbsp;<br>
            <a href="http://www.tnnonline.com/">TNN The National Network</a><br>
            <a href="http://www.turner.com/">TNT Turner Network TV</a>&nbsp;<br>
            <a href="http://disney.go.com/DisneyChannel/toondisney">Toon Disney</a><br>
            <a href="http://www.travelchannel.com/">Travel</a>&nbsp;<br>
            <a href="http://www.turnersouth.com/">Turner South</a>&nbsp;<br>
            <a href="http://www.tvguide.com/">TV guide</a><br>
            <a href="http://www.tvland.com/">TV Land</a><br>
            <a href="http://www.usanetwork.com/">USA Network</a> <br>
          <a href="http://www.upn.com/">UPN</a><br>
            <a href="http://vh1.com/">VH-1 Video Hits One</a>&nbsp;<br>
            <a href="http://www.starzencore.com/se/wam/index.html">WAM!</a><br>
            <a href="http://www.weather.com/">Weather</a>&nbsp;<br>
            <a href="http://www.we-womensentertainment.com/">Women's
            Entertainment</a></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/ent_navbar.asp" tag="BODY" startspan -->

<br clear="all">
<!--table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../../../images/000000.gif" width="1" height="1"></td>
  </tr>
</table-->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span
      class="small">Entertainment</span>&nbsp;</th>
    <td bgcolor="#996600" rowspan="2" class="navbackground">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a href="art.asp"
            class="navigationsmall">Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="books.asp"
            class="navigationsmall">Books</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="comics.asp"
            class="navigationsmall">Comics</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="humor.asp"
            class="navigationsmall">Humor</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="movies.asp"
            class="navigationsmall">Movies</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="music.asp"
            class="navigationsmall">Music</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="magazine.asp" class="navigationsmall">News Stand</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="perform.asp" class="navigationsmall">Performance Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="radio.asp"
            class="navigationsmall">Radio</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="scifi.asp"
            class="navigationsmall">Science Fiction</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="television.asp" class="navigationsmall">Television</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="trivia.asp"
            class="navigationsmall">Trivia</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img
      src="../images/pie_tr.gif" border="0"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img
      src="../images/pie_bl.gif" border="0"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img
      src="../images/pie_br.gif" border="0"></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="8181" endspan -->

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




<!--webbot bot="Include" i-checksum="59332" endspan -->


</body>

</html>