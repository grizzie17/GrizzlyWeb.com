<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<html>

<head>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_rec.css"
media="screen">
<title>Sports - Hockey - Grizzly Web Links</title>
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
		&	"sports.asp;;Sports" & vbLF _
		&	"sports_hockey.asp;;Hockey"
	NavBack sPages, sLocArgx
	
%>


    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="100%"><%
	IF 1 < Len( sLocation ) THEN
		includeBody( "location\" & sLocation & "\sports_hockey.asp" )
	ELSE
		buildLocationTable()
	END IF
      %>
      <table border="0" width="100%" cellpadding="0" cellspacing="4">
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">Hockey</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.hockeyguide.com/">Hockey
                  Guide</a><br>
                  <a href="http://www.thn.com/">Hockey News</a><br>
                  <a href="http://www.nhl.com/">NHL.com</a>&nbsp;<br>
                  <a href="http://www.gretzkyrollerhockey.com/">Wayne Gretzky's Roller Hockey Centers</a><br>
                  <a href="http://sports.yahoo.com/nhl">Yahoo! Sports NHL</a></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">General
                  Sports News</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.abcsports.com/">ABC
                  Sports</a><br>
                  <a href="http://cbs.sportsline.com/">CBS Sportsline</a><br>
                  <a href="http://cnnsi.com/">CNNsi</a><br>
                  <a href="http://espnet.sportszone.com/">ESPNET SportsZone</a><br>
                  <a href="http://www.foxsports.com/">Fox Sports</a><br>
                  <a href="http://www.jpsports.com/">JP Sports</a><br>
                  <a href="http://www.msnbcsports.com/">MS-NBC Sports</a><br>
                  <a
                  href="http://www.sportserver.com/SportServer/scoreboard.html">ScoreBoard</a>
                  - get everything scoreboard<br>
                  <a href="http://www.sportingnews.com/">Sporting News</a><br>
                  <a href="http://www.nando.net/SportServer/">Sports Server</a>
                  - by Nando News</td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="recreation">News Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
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

<!--webbot bot="Include" endspan i-checksum="8382" -->

                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/sports_navbar.asp" tag="BODY" startspan
-->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">Sports</span>&nbsp;
    </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_baseball.asp" class="navigationsmall" target="_top">Baseball</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_basketball.asp" class="navigationsmall" target="_top">Basketball</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_bowling.asp" class="navigationsmall" target="_top">Bowling</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_football.asp" class="navigationsmall" target="_top">Football</a></th>
      </tr>
    </table>
    <table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_hockey.asp" class="navigationsmall" target="_top">Hockey</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_racing.asp" class="navigationsmall" target="_top">Motorsports / Racing</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_soccer.asp" class="navigationsmall" target="_top">Soccer</a></th>
        <th bgcolor="#CC9966" class="recreation"><a href="sports_volleyball.asp" class="navigationsmall" target="_top">Volleyball</a></th>
      </tr>
    </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" checked="false" valign="bottom" class="navbackground"><img src="../images/pie_bl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img src="../images/pie_br.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
</table>
<!--webbot bot="Include" endspan i-checksum="1543"
-->

<!--webbot bot="Include" u-include="../_private/include/footer.htm"
tag="BODY" startspan -->


<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="5" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom">
      <form method="GET" name="SearchForm_bottom"
      action="submit/searchengine/grizzlyweblinks.asp" target="_top">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
          <tr>
            <td><a href="submitlink.asp" class="small" target="_top">Add
              Link...</a>&nbsp;&nbsp; <span class="small">*</span>&nbsp;&nbsp; <a
              href="comments.asp" class="small" target="_top">Comments /
              Problems...</a></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    30 Sep 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none"
      href="../company/9copyright.htm" target="_top"><font color="#CCCCCC" size="1">Copyright
      2004 Bear Consulting Group</font></a><font color="#CCCCCC" size="1"><a
      style="color: #CCCCCC; text-decoration: none" target="_top"><br>
      </a><a href="../company/" style="color: #CCCCCC; TEXT-DECORATION: none" target="_top">Service
      Provided by Bear Consulting Group</a></font></td>
  </tr>
</table>




<!--webbot bot="Include" endspan i-checksum="53053" -->


</body>

</html>