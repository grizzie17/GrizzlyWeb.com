<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<%
DIM	sTarget
sTarget = "../webmaster/"
Response.Redirect sTarget
%>
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content="noindex">
<title>Web Authoring</title>
<base target="_top">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_tech.css" media="screen">
<noscript>
<meta http-equiv="refresh" content="2; URL=<%=sTarget%>">
</noscript>
<script language="JavaScript">
<!--
var sURL = "<%=sTarget%>";

function doRedirect()
{
	setTimeout( "timedRedirect()", 2*1000 );
}

function timedRedirect()
{
	window.location.href = sURL;
}

//-->
</script>

<script language="JavaScript1.1">
<!--
function doRedirect()
{
	window.location.replace( sURL );
}

doRedirect();

//-->
</script>
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" onload="doRedirect()">

<%IF FALSE THEN%>

<table border="0" width="620" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="150"><!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="22514" -->
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td bgcolor="#996600" class="navbackground"><img src="../images/000000.gif" width="16" height="16"></td>
          <td bgcolor="#996600" class="navbackground" align="center">
            <table border="0" cellspacing="0" cellpadding="2">
              <tr>
                <th class="navbackground">Web Authoring</th>
              </tr>
            </table>
          </td>
          <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img src="../images/pie_br.gif" width="16" height="16"></td>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td bgcolor="#996600" width="10" class="navbackground"><img src="../images/000000.gif" width="1" height="1"></td>
          <td>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_design.asp?<%=sLocArgx%>" class="navigation">Design</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_frontpage.asp?<%=sLocArgx%>" class="navigation">FrontPage</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_html.asp?<%=sLocArgx%>" class="navigation">HTML</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_css.asp?<%=sLocArgx%>" class="navigation">Cascading
                  Style Sheets</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_dhtml.asp?<%=sLocArgx%>" class="navigation">DHTML</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_xml.asp?<%=sLocArgx%>" class="navigation">XML</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_javascript.asp?<%=sLocArgx%>" class="navigation">JavaScript</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_java.asp?<%=sLocArgx%>" class="navigation">Java</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_serverdev.asp?<%=sLocArgx%>" class="navigation">Server-side
                  Development</a></th>
              </tr>
              <tr>
                <th bgcolor="#CC9966" align="right" class="technology"><a href="webauth_promote.asp?<%=sLocArgx%>" class="navigation">Site
                  Promotion</a></th>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td bgcolor="#996600" valign="bottom" align="left" class="navbackground"><img src="../images/pie_bl.gif" width="16" height="16"></td>
          <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" width="16" height="16"></td>
        </tr>
      </table>
      <!--webbot bot="Include" u-include="_private/nav/tech_x.asp" tag="BODY" startspan
      -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th width="100%" bgcolor="#CC9966" align="left" class="technology"><a
            href="1tech.asp" class="navigationsmall">Technology</a></th>
        </tr>
        <tr>
          <th width="100%" bgcolor="#CC9966" align="left" class="weblinks"><a
            href="index.asp" class="navigationsmall">Grizzly Web Links</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" width="10" class="navbackground"><img
      src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" valign="top" align="left" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <td bgcolor="#996600" align="center" class="navbackground"><span
      class="more">Navigation</span></td>
    <td bgcolor="#996600" valign="bottom" align="right" class="navbackground"><img
      src="../images/pie_br.gif" border="0" width="16" height="16"></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="4244"
      --></td>
    <td valign="top" width="470">
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">E-Zines</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="../webmaster/"><strong>Grizzly
                  WebMaster</strong></a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">News Stand</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><!--webbot bot="Include"
                  u-include="_private/magazine/webauth.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td width="100%"><a href="http://www.zdnet.com/devhead/">d e v h e a d</a><br>
    <a href="http://www.zdjournals.com/awd/">Interactive Designer</a><br>
    <a href="http://www.iw.com/">Internet World</a><br>
    <a href="http://www.javaworld.com/">JavaWorld</a><br>
    <a href="http://www.microsoft.com/mind/"><small><small>Microsoft</small></small>
    Interactive <small><small>Developer</small></small></a><br>
    <a href="http://www.cio.com/WebMaster/wmwelcome.html">WebMaster!</a><br>
    <a href="http://www.webreview.com/">Web Review</a><br>
    <a href="http://webserver.cpg.com/">WebServer</a><br>
    <a href="http://www.WebTechniques.com/">WEBTechniques</a> <br>
    <a href="http://www.winnetmag.com/">Windows &amp; .NET</a><br>
      <a href="http://www.xmlmag.com/">XML</a> </td>
  </tr>
</table>
<!--webbot bot="Include" endspan i-checksum="48938" --></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <table border="0" cellpadding="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="shopping">Shopping</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="shoppingbody"><a href="http://www.amazon.com/exec/obidos/redirect?tag=grizzlywebstore&amp;path=subst/books/computers/internet.html"><img src="images/logos/amazon_logo.gif" alt="amazon.com Affiliate" border="1" width="90" height="29"></a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/tech_navbar.asp" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">Technology</span>&nbsp;
    </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="technology"><a href="aviation.asp" class="navigationsmall">Aviation &amp; Flight</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="develop.asp" class="navigationsmall">Development</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="engineer.asp" class="navigationsmall">Engineering</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="math.asp" class="navigationsmall">Mathematics</a></th>
      </tr>
    </table>
    <table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="technology"><a href="osmac.asp" class="navigationsmall">OS-Macintosh</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="osunix.asp" class="navigationsmall">OS-Unix</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="oswin.asp" class="navigationsmall">OS-Windows</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth.asp" class="navigationsmall">Web Authoring</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="internet.asp" class="navigationsmall">Web &amp; Internet</a></th>
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
<!--webbot bot="Include" endspan i-checksum="13785" -->
<%END IF%>
<!--webbot bot="Include" u-include="../_private/include/footer.htm" tag="BODY" startspan
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




<!--webbot bot="Include" endspan i-checksum="59332"
-->

</body>

</html>
