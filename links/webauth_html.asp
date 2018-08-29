<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<%
DIM	sTarget
sTarget = "../webmaster/html.htm"
Response.Redirect sTarget
%>
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<title>Web Authoring - HTML</title>
<meta name="robots" content="noindex,follow">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="Keywords" content="html,web,authoring,dhtml,css,frontpage,style sheets,web resources">
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

<table border="0" width="100%" cellspacing="0" cellpadding="0">
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
          <td bgcolor="#996600" valign="bottom" align="left" class="navbackground"><img src="../images/pie_bl.gif" border="0"></td>
          <th bgcolor="#996600" class="navbackground" height="24">HTML</th>
          <td bgcolor="#996600" valign="bottom" align="right" class="navbackground"><img src="../images/000000.gif" width="16" height="16"></td>
        </tr>
      </table>
      <!--webbot bot="Include" u-include="_private/nav/webauth_x.asp" tag="BODY" startspan
      -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th width="100%" bgcolor="#CC9966" align="left" class="technology"><a
            class="navigationsmall" href="webauth.asp">Web Authoring</a></th>
        </tr>
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

<!--webbot bot="Include" endspan i-checksum="24986"
      --></td>
    <td valign="top">
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top">
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Introductory</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.ncsa.uiuc.edu/General/Internet/WWW/HTMLPrimer.html">Beginner's
                  Guide to HTML</a><br>
                  <a href="http://www.ucc.ie/info/net/htmldoc.html"><cite>How to
                  Write HTML Files</cite></a><br>
                  <a href="http://members.aol.com/htmlguru/about_html.html"><cite>Introduction
                  to HTML</cite></a><br>
                  <a href="http://kuhttp.cc.ukans.edu/info/forms/forms-intro.html">Forms
                  and the essential scripts explained</a><br>
                  <a href="http://hakatai.mcli.dist.maricopa.edu/tut/">Writing
                  HTML</a> - a tutorial for creating WWW pages</td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Reference</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.cs.cmu.edu/afs/cs.cmu.edu/Web/People/tilt/cgh/">Composing
                  Good HTML</a><br>
                  <a href="http://msdn.microsoft.com/workshop/author/html/reference/elements.asp#ie40_htmlref">HTML
                  Elements</a> - Microsoft MSDN<br>
                  <a href="http://developer.netscape.com/docs/manuals/htmlguid/index.htm">HTML
                  Tag Reference</a> - Netscape<br>
                  <a href="http://www.hwg.org/">HTML Writers Guild</a>&nbsp;<br>
                  <a href="http://msdn.microsoft.com/workshop/networking/wininet/reference/constants/statuscodes.asp">HTTP
                  Status Codes</a> - MSDN<br>
                  <a href="http://www.idocs.com/tags/quicklist.html">Mikodocs
                  Guide to HTML</a><br>
                  <a href="http://msdn.microsoft.com/workshop/default.asp">MSDN
                  Online Web Workshop</a><br>
                  <strong><a href="http://www.w3.org/hypertext/WWW/MarkUp/MarkUp.html">Official
                  specification</a></strong><br>
                  <a href="http://www.cc.ukans.edu/~acs/docs/other/HTML_quick.shtml"><cite>Quick
                  Reference Guide</cite></a>, comprehensive listing<br>
                  <a href="http://www.sandia.gov/sci_compute/html_ref.html">Reference
                  Manual</a> -- Sandia National Laboratories<br>
                  <a href="http://www.htmlhelp.com/reference/wilbur/">3.2
                  Reference</a> - Web Design Group<br>
                  <a href="http://www.hut.fi/~jkorpela/HTML3.2/">3.2 Learning by
                  Example</a><br>
                  <a href="http://www.eskimo.com/~bloo/indexdot/html/index.html"><i>Index
                  Dot HTML</i></a></td>
              </tr>
            </table>
          </td>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">e-Zines</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.developer.com/">Developer.com</a><br>
                  <a href="http://www.innergy.com/">Intranet Design Magazine</a><br>
                  <a href="http://www.searchenginewatch.com/">Search Engine
                  Watch</a><br>
                  <a href="http://msdn.microsoft.com/voices/default.asp">Voices</a>
                  - Microsoft<br>
                  <a href="http://www.webdeveloper.com/">WEB Developer.com</a><br>
                  <a href="http://www.webgrafx-fx.com/index.shtml">Web GraFX-FX</a><br>
                  <a href="http://www.webreference.com/">WEB Reference.com</a><br>
                  <a href="http://www.w3j.com/">World Wide Web Journal</a></td>
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
                <td bgcolor="#FFFFCC" class="shoppingbody"><a href="http://www.amazon.com/exec/obidos/redirect?tag=grizzlywebstore&amp;path=subst/books/computers/internet.html"><img src="images/logos/amazon_logo.gif" alt="amazon.com Affiliate" border="1"></a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="webcenters">Web
                  Centers</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="webcentersbody"><a href="http://magellan.excite.com/computers_and_internet/internet/web_design/html">Magellan</a><br>
                  <a href="http://home.snap.com/directory/category/0,16,-13111,00.html">Snap</a><br>
                  <a href="http://dir.yahoo.com/Computers_and_Internet/Information_and_Documentation/Data_Formats/HTML/">Yahoo!</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/webauth_navbar.asp" tag="BODY" startspan
-->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">Web
    Authoring</span>&nbsp; </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_css.asp" class="navigationsmall">Cascading Style Sheets</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_design.asp" class="navigationsmall">Design</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_dhtml.asp" class="navigationsmall">DHTML</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_frontpage.asp" class="navigationsmall">FrontPage</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_html.asp" class="navigationsmall">HTML</a></th>
      </tr>
    </table>
    <table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_java.asp" class="navigationsmall">Java</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_javascript.asp" class="navigationsmall">JavaScript</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_serverdev.asp" class="navigationsmall">Server-side
        Development</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_promote.asp" class="navigationsmall">Site Promotion</a></th>
        <th bgcolor="#CC9966" class="technology"><a href="webauth_xml.asp" class="navigationsmall">XML</a></th>
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
<!--webbot bot="Include" endspan i-checksum="49046"
-->
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
