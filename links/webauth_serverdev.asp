<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<%
DIM	sTarget
sTarget = "../webmaster/serverdev.htm"
Response.Redirect sTarget
%>
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<title>Web Authoring - Server development</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content="noindex">
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
          <td bgcolor="#996600" valign="bottom" align="left" class="navbackground"><img src="../images/pie_bl.gif" border="0" width="16" height="16"></td>
          <th bgcolor="#996600" class="navbackground" height="24">Sever-Side
            Development</th>
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
      -->

    </td>
    <td valign="top">
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td width="50%" valign="top">
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Introductory</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.cc.ukans.edu/~acs/docs/other/forms-intro.shtml">CGI
                  scripts and HTML forms</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">ASP
                  Scripting</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.15seconds.com/">15
                  Seconds</a><br>
                  <a href="http://www.actionjackson.com/asp/default.asp">ActionJackson.com</a><br>
                  <a href="http://www.activeserverpages.com/">ActiveServerPages.com</a><br>
                  <a href="http://www.asp101.com/">ASP 101</a><br>
                  <a href="http://abiglime.com/webmaster/articles/asp.htm">ASP
                  Features</a> - the complete webmaster<br>
                  <a href="http://www.aspfree.com/">ASP Free</a><br>
                  <a href="http://www.programmersresource.com/">ASP Programmer's
                  Resource</a><br>
                  <a href="http://www.asptoday.com/">ASPToday</a><br>
                  <a href="http://www.tcp-ip.com/">ASP Toolbox</a>&nbsp;<br>
                  <a href="http://www.asptown.com/">ASP Town</a><br>
                  <a href="http://www.cgi-resources.com/">CGI-Resource Index</a>
                  &nbsp;<br>
                  <a href="http://www.codeave.com/">CodeAve.com</a><br>
                  <a href="http://www.developersdomain.com/">Developer's Domain</a><br>
                  <a href="http://devshed.com/">Developer Shed</a> - tools to
                  build a better web<br>
                  <a href="http://www.projectcool.com/developer/">DeveloperZone</a>
                  - project cool<br>
                  <a href="http://www.devguru.com/">D e v G u r u</a> - A
                  Developer's Resource<br>
                  <a href="http://www.freeasp.com/">FreeASP Resources</a>&nbsp;<br>
                  <a href="http://www.fuzzysoftware.com/">Fuzzy Software</a>&nbsp;<br>
                  <a href="http://www.hotscripts.com/ASP/">HotScripts.com ASP</a><br>
                  <a href="http://www.kosob.com/">K O S O B.com</a><br>
                  <a href="http://www.powerasp.com/">PowerASP.com</a><br>
                  <a href="http://www.program.com/">Program.Com</a><br>
                  <a href="http://www.takempis.com/">Site Design by TAKempis</a></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Reference</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://help.activeserverpages.com/iishelp/iis/htm/asp/iiwaref.htm">Built-in
                  ASP Objects Quick Reference</a><br>
                  <a href="http://help.activeserverpages.com/iishelp/iis/htm/asp/intr1orp.htm">Built-in
                  ASP Objects Reference</a>&nbsp;<br>
                  <a href="http://home.cnet.com/webbuilding/0-7266.html?tag=st.bl.3882.dir.7266">CNET.com
                  - ASP &amp; VBScript</a><br>
                  <a href="http://help.activeserverpages.com/iishelp/iis/htm/asp/comp275c.htm">Installable
                  Components for ASP</a><br>
                  <a href="http://help.activeserverpages.com/iishelp/iis/htm/asp/iissiref.htm">Server-Side
                  Includes Reference</a><br>
                  <a href="http://msdn.microsoft.com/scripting/default.htm?/scripting/vbscript/techinfo/vbsdocs.htm">Microsoft
                  Scripting Technologies</a><br>
                  <a href="http://help.activeserverpages.com/iishelp/VBScript/htm/VBStoc.htm">VBScript
                  Language Reference</a>
                  <table border="0" width="100%" cellspacing="1">
                    <tr>
                      <th align="left" bgcolor="#FFFF99" class="small">Other</th>
                    </tr>
                    <tr>
                      <td width="100%"><a href="http://hoohoo.ncsa.uiuc.edu/index.html">HTTPd
                        NCSA server software information</a><br>
                        <a href="http://developer.netscape.com/library/documentation/index.html">Netscape
                        Developers Library</a><br>
                        <a href="http://www.w3.org/pub/WWW/MarkUp/SGML/">SGML</a>
                        - Standard Generalized Markup Language<br>
                        <a href="http://www.webreview.com/">Web Review</a></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">Directories</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://dynamicnet.net/support/fp/asp.htm">ASP
                  - Active Server Pages Resources</a><br>
                  <a href="http://www.aspsites.com/">ASP Sites Resource Guide</a><br>
                  <a href="http://www.asp101.com/webring/">ASP Webring</a>&nbsp;<br>
                  <a href="http://www.cetus-links.org/oo_active_server_pages.html">Cetus
                  Links</a><br>
                  <a href="http://www.somuch.com/showem.asp?TopicID=1">SoMuch.com</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="webcenters">Web
                  Centers</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC" class="webcentersbody"><a href="http://dir.yahoo.com/Computers_and_Internet/Software/Internet/World_Wide_Web/Servers/Server_Side_Scripting/">Yahoo!</a></td>
              </tr>
            </table>
          </td>
          <td width="50%" valign="top">
            <table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="technology">PHP
                  Scripting</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.hotscripts.com/PHP/">HotScripts.com
                  PHP</a> &nbsp;<br>
                  <a href="http://www.phphelp.com/">phphelp.com</a><br>
                  <a href="http://www.php-scripts.com/">php scripts.com</a>&nbsp;<br>
                  <a href="http://www.phpvault.com/">PHP Vault</a>&nbsp;<br>
                  <a href="http://www.phpworld.com/">PHP WORLD</a></td>
              </tr>
            </table>
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
<!--webbot bot="Include" endspan i-checksum="48938" -->

                </td>
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
