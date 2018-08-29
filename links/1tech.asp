<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<html>

<head>
<title>Technology Introduction - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_tech.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" cellspacing="0" cellpadding="0" width="150" align="left">
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

<!--webbot bot="Include" endspan i-checksum="22514" -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1tech.asp;;Technology & Computing"
	NavBack sPages, sLocArgx
	
	sPages = "aviation.asp;;Aviation & Flight" & vbLF _
		&	"develop.asp;;Development" & vbLF _
		&	"engineer.asp;;Engineering" & vbLF _
		&	"math.asp;science;Mathematics" & vbLF _
		&	"osmac.asp;;OS-Macintosh" & vbLF _
		&	"osunix.asp;;OS-Unix" & vbLF _
		&	"oswin.asp;;OS-Windows" & vbLF _
		&	"../webmaster/;;Web Authoring" & vbLF _
		&	"internet.asp;reference;Web & Internet"
	NavPages sPages, sLocArgx, "technology"

%>

    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="4" cellpadding="0">
  <tr>
    <td valign="top"></td>
    <td valign="top">
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" class="technology">Web Authoring</th>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC"><a target="_self"
            href="webauth_css.asp?<%=sLocArgx%>">Cascading Style Sheets</a><br>
            <em><a href="color2.htm">Color Picker</a></em><br>
            <a target="_self" href="webauth_design.asp?<%=sLocArgx%>">Design</a><br>
            <a target="_self" href="webauth_dhtml.asp?<%=sLocArgx%>">DHTML</a><br>
            <a href="../webmaster/"><strong>Grizzly WebMaster</strong></a><br>
            <a target="_self" href="webauth_javascript.asp?<%=sLocArgx%>">JavaScript</a><br>
            <a target="_self" href="webauth_promote.asp?<%=sLocArgx%>">Site
            Promotion</a></td>
        </tr>
      </table>
    </td>
    <td valign="top">
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <td bgcolor="#CC9966" class="technology">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="technology">Magazines</th>
                <td align="right"><a href="magazine_tech.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody">
          <!--webbot bot="Include"
            u-include="_private/magazine/1tech.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><a href="http://www.aviationhistory.org/">Aviation
      History</a><br>
      <a href="http://www.cadonline.com/">CADALYST</a><br>
      <a href="http://www.esmagazine.com/">Engineered Systems</a><br>
      <a href="http://www.flyer-online.com/">Flyer</a><br>
      <a href="http://www.macweek.com/">MacWEEK</a><br>
      <a href="http://www.pcworld.com/">PC World</a><br>
      <a href="http://www.planeandpilotmag.com/">Plane &amp; Pilot</a><br>
      <a href="http://www.softwaremag.com/">Software <small><small>Magazine</small></small></a><br>
      <a href="http://www.webreview.com/">Web Review</a><br>
      <a href="http://www.webweek.com/">Web Week</a> <br>
      (<a href="magazine_tech.asp">more...</a>)</td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="8452" --></td>
        </tr>
      </table>
      <p>&nbsp;</td>
  </tr>
</table>
<script language="JavaScript">
<!--
	LinkExchangePage = "10";
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

<!--webbot bot="Include" endspan i-checksum="12126"
--><!--webbot bot="Include" u-include="_private/nav/0root_navbar.asp" tag="BODY" startspan
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

<!--webbot bot="Include" endspan i-checksum="12083"
--><!--webbot bot="Include" u-include="../_private/include/footer.asp"
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




<!--webbot bot="Include" endspan i-checksum="37146" -->

</body>

</html>