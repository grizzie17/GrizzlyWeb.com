<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<html>

<head>
<title>Sports - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_rec.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="100%">
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
		&	"1rec.asp;;Recreation & Sports" & vbLF _
		&	"sports.asp;;Sports"
	NavBack sPages, sLocArgx
	
	sPages = "sports_baseball.asp;;Baseball" & vbLF _
		&	"sports_basketball.asp;;Basketball" & vbLF _
		&	"sports_bowling.asp;;Bowling" & vbLF _
		&	"sports_football.asp;;Football" & vbLF _
		&	"outdoors_golf.asp;;Golf" & vbLF _
		&	"sports_Hockey.asp;;Hockey" & vbLF _
		&	"sports_racing.asp;;Motorsports / Racing" & vbLF _
		&	"sports_soccer.asp;;Soccer" & vbLF _
		&	"sports_volleyball.asp;;Volleyball"
	NavPages sPages, sLocArgx, "recreation"

%>

      </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="100%"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\sports.asp" )
	ELSE
		buildLocationTable()
	END IF
      %>
      <table border="0" width="100%" cellpadding="0" cellspacing="4">
        <tr>
          <td valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Baseball</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.fastball.com/">FASTBALL</a><br>
                  <a href="http://sports.yahoo.com/mlb">Yahoo! Sports MLB</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Basketball</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" width="100%" valign="top" class="boxbody"><a
                  href="http://basketball.collegeinsider.com/">College Hoops
                  Insider</a><br>
                  <a href="http://sports.yahoo.com/nba">Yahoo! Sports NBA</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Bowling</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.pbatour.com/">Pro-Bowlers Tour</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Football</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" width="100%" valign="top" class="boxbody"><a
                  href="http://www.footballcentral.net/">Football Central</a><br>
                  <a href="http://www.teamreporter.com/">Team Reporter</a><br>
                  <a href="http://sports.yahoo.com/nfl">Yahoo! Sports NFL</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">MotorSports
                  / Racing</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://espn.go.com/car/index.html">ESPN.com Auto Racing</a><br>
                  <a href="http://www.nascar.com/">NASCAR</a><br>
                  <a href="http://www.motorsport.com/">Motorsport.com</a>&nbsp;<br>
                  <a href="http://www.sportserver.com/racing/noframes/archive/">Racing
                  News</a><br>
                  <a href="http://sports.yahoo.com/rac/f1/">Yahoo! - Formula One</a><br>
                  <a href="http://sports.yahoo.com/rac/irl/">Yahoo! - Indy
                  Racing League</a><br>
                  <a href="http://sports.yahoo.com/rac/nascar">Yahoo! - Nascar</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Other</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://olympics.com/">Olympic Games</a></td>
              </tr>
            </table>
            <p>&nbsp;</td>
          <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img
            border="0" src="../images/000000.gif" width="1" height="1"></td>
          <td valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">General
                  Sports News</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.abcsports.com/">ABC Sports</a><br>
                  <a href="http://cbs.sportsline.com/">CBS Sportsline</a><br>
                  <a href="http://cnnsi.com/">CNNsi</a><br>
                  <a href="http://espnet.sportszone.com/">ESPNET SportsZone</a><br>
                  <a href="http://www.foxsports.com/">Fox Sports</a><br>
                  <a href="http://www.jpsports.com/">JP Sports</a><br>
                  <a href="http://www.msnbcsports.com/">MS-NBC Sports</a><br>
                  <a
                  href="http://www.sportserver.com/SportServer/scoreboard.html">ScoreBoard</a><br>
                  <a href="http://www.sportingnews.com/">Sporting News</a><br>
                  <a href="http://www.nando.net/SportServer/">Sports Server</a>
                  - Nando News<br>
                  <a href="http://www.todayssports.com/p/sportsnetdaily/">SportsNetDaily</a><br>
                  <a href="http://www.todayssports.com/">Todays Sports</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">News Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody">
                <!--webbot bot="Include"
                  u-include="_private/magazine/sports/gen.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td><a href="http://www.sporting-life.com/">Sporting Life</a><br>
      <a href="http://www.sportingnews.com/">Sporting News</a><br>
      <a href="http://cnnsi.com/">Sports Illustrated</a><br>
      <a href="http://www.womenssportsandfitness.com/"><small><small>Women's</small></small>
      Sports &amp; Fitness</a></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="8382" --></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Hockey</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.thn.com/">Hockey News</a><br>
                  <a href="http://sports.yahoo.com/nhl">Yahoo! Sports NHL</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Soccer</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://sports.yahoo.com/mls">Yahoo! Sports MLS</a><br>
                  <a href="http://sports.yahoo.com/m/world">Yahoo! Soccer</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Volleyball</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="boxbody"><a
                  href="http://www.volleyball.com/">Volleyball.com</a><br>
                  <a href="http://volleyballmag.com/">Volleyball</a> magazine<br>
                  <a href="http://www.volleyball.org/">Volleyball World Wide</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/rec_navbar.asp" tag="BODY" startspan -->

<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span
      class="small">Recreation</span>&nbsp;</th>
    <td bgcolor="#996600" rowspan="2" class="navbackground">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="recreation"><a href="auto.asp"
            class="navigationsmall">Automotive</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="aviation.asp"
            class="navigationsmall">Aviation &amp; Flight</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="collect.asp"
            class="navigationsmall">Collecting</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="games.asp"
            class="navigationsmall">Games</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="recreation"><a href="hobbies.asp"
            class="navigationsmall">Hobbies</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="motorcycle.asp"
            class="navigationsmall">Motorcycling</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="outdoors.asp"
            class="navigationsmall">Outdoors</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="sports.asp"
            class="navigationsmall">Sports</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="travel.asp"
            class="navigationsmall">Travel</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img
      src="../images/pie_tr.gif" border="0" width="16" height="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img
      src="../images/pie_bl.gif" border="0" width="16" height="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img
      src="../images/pie_br.gif" border="0" width="16" height="16"></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="25330" --><!--webbot
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