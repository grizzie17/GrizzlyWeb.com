<!--#include file="_private/outputsource.asp"-->
<html>

<head>
<title>Page Refresh/Reload - JavaScripts - Grizzly WebMaster</title>
<meta name="keywords"
content="url refresh, page refresh, page reload, html refresh, html reload, meta refresh">
<meta name="description"
content="The most common method of page refresh/reload is the refresh meta-tag but the prefered method uses JavaScript">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Page Refresh/Reload</span></th>
    <td align="right" valign="bottom">
    <!--webbot bot="Include"
      u-include="../_private/gwm.htm" tag="BODY" startspan -->
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="bottom">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#663300"><img border="0" src="../images/pie_brx.gif" width="16" height="16"></td>
              </tr>
            </table>
          </td>
          <td bgcolor="#663300"><a href="../"><img border="0" src="../images/bearpaw-header.jpg" alt="Grizzly WebMaster home" width="245" height="64"></a></td>
        </tr>
      </table>
<!--webbot bot="Include" i-checksum="59381" endspan -->
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a
      href="../">Grizzly WebMaster (HOME)</a> &gt;&gt; <a
      href="../javascript.htm">JavaScripts</a> &gt;&gt; Page Redirection</th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="2"><img border="0" src="../images/000000.gif"></td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <table border="1" width="175" align="right" cellspacing="0"
      cellpadding="2">
        <tr>
          <th bgcolor="#CCFFCC">See Also</th>
        </tr>
        <tr>
          <td bgcolor="#CCFFCC">&quot;<a href="redirection.asp"><b>Page
            Redirection</b></a>&quot; for techniques of redirecting or
            forwarding one page to another.</td>
        </tr>
      </table>
      <p>There are times when the web-author would like their web-page to
      automatically refresh (or reload) at specified intervals.&nbsp; This is
      often useful when the page contains time sensitive information.</p>
      <p>We discuss three versions:</p>
      <ul>
        <li><a href="#version2">JavaScript Refresh</a> - preferred method</li>
        <li><a href="#refresh-button">JavaScript Button Refresh</a></li>
        <li><a href="#meta-tag">meta-tag</a> - provided for reference but not
          the preferred method.</li>
      </ul>
      <h2><a name="version2"></a>JavaScript Refresh</h2>
      <p>The preferred page refresh/reload method uses a JavaScript technique
      that will replace the current page with each refresh in the visitor's page
      history.</p>
      <p>This version uses an under-utilized method of dealing with cross
      browser and old version browser compatibility.&nbsp; It defines multiple
      JavaScript code blocks, where each JavaScript version block redefines the
      same function.&nbsp; Only the last version block that is supported by the
      browser will be used.&nbsp; So older browsers will use the
      &quot;JavaScript&quot; block, while later browsers will use either the
      &quot;JavaScript1.1&quot; or &quot;JavaScript1.2&quot; block depending
      upon the browser's capabilities.&nbsp; If the browser does not support
      JavaScript or has it disabled, the &quot;noscript&quot; block will be
      used.</p>
      <p>We do use the &quot;refresh&quot; <a href="../html/metatags.asp">meta-tag</a> as a backup method to the
      JavaScript.
      <p><a href="examples/refresh.htm" target="_blank">See this script in
      action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\refresh.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2><a name="refresh-button"></a>JavaScript Refresh Button</h2>
      <p>A similar JavaScript will refresh/reload the page when the visitor
      clicks on a link, on an image/button, or a form button.&nbsp; In similar
      fashion we use the technique that will replace the current page with each
      refresh in the visitor's page history.</p>
      <p><a href="examples/refreshbutton.htm" target="_blank">See this script in
      action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\refreshbutton.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2><a name="meta-tag"></a>&quot;refresh&quot; meta-tag</h2>
      <p>The biggest problem with the &quot;refresh&quot; 
		<a href="../html/metatags.asp">meta-tag</a> method of
      page-refresh is that it can add to the visitor's page-history on various
      versions of browsers.&nbsp; This means that for each automatic page
      refresh/reload your site visitor must select the browser's back
      button.&nbsp; This potentially can be a considerable bother to your
      visitors as well as a confusion.</p>
      <p><b>The preferred refresh method is &quot;<a href="#version2">JavaScript
      Refresh</a>&quot;</b></p>
      <p><a href="../html/examples/refresh.htm" target="_blank">See this script
      in action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("..\html\examples\refresh.htm") %>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="../_private/footer_free.htm" tag="BODY" startspan -->



<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="12" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom"><font color="#CCCCCC" size="1"><a href="../../company/index.htm"
      style="color: #CCCCCC; TEXT-DECORATION: none">Service Provided by Bear Consulting Group</a></font></td>
    <td align="right"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    25 May 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none" href="../9publicuse.htm"><font
      color="#CCCCCC" size="1">Copyright 2001 Bear Consulting Group</font></a></td>
  </tr>
</table>



<script language="JavaScript" src="../../javascript/remotelog.js"></script>



<!--webbot bot="Include" i-checksum="396" endspan -->



</body>

</html>