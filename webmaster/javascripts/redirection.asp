<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<title>Page Redirection - JavaScripts - Grizzly WebMaster</title>
<meta name="keywords"
content="url redirection, html redirection, page redirection, page forwarding, javascript redirection, meta refresh redirection, html header">
<meta name="description"
content="The most common method of redirection is the refresh meta-tag but the prefered method uses JavaScript">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Page Redirection</span></th>
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
          <td bgcolor="#CCFFCC">&quot;<a href="refresh.asp"><b>Page
            Refresh/Reload</b></a>&quot; for techniques of reloading a page.</td>
        </tr>
      </table>
      Page redirection is used to redirect/forward a page visitor to another
      page, such as when a page or site has been moved.&nbsp; We discuss three
      versions:
      <ul>
        <li><a href="#version2">JavaScript Redirect</a> - preferred method</li>
        <li><a href="#Timed-Redirect">Timed Redirect with JavaScript</a></li>
        <li><a href="#meta-tag">meta-tag</a> - provided for reference but not
          the preferred method.</li>
      </ul>
      <h2><a name="version2"></a>JavaScript Redirect</h2>
      <table border="1" width="175" align="right" cellspacing="0"
      cellpadding="2">
        <tr>
          <th bgcolor="#CCFFCC">See Also</th>
        </tr>
        <tr>
          <td bgcolor="#CCFFCC">&quot;<a href="../dhtml/redirectdhtml.asp"><b>Redirect
            for DHTML Page</b></a>&quot; for techniques of redirecting based on
            DHTML capabilities. &quot;<a href="../asp/redirectasp.asp"><b>ASP
            Redirection</b></a>&quot; explains server requested redirection.</td>
        </tr>
      </table>
      <p>The preferred redirection method uses a technique that will replace the
      redirection-page with the target-page in the visitor's page history.</p>
      <p>Our example is a page similar to one that you might use to point
      visitors from an old page/location to a new page.&nbsp; Please note that
      we take great care to make sure that this page works for both older
      browsers as well as later browsers.</p>
      <p>We do use the &quot;refresh&quot; <a href="../html/metatags.asp">meta-tag</a> nested in a &lt;noscript&gt;
      block as a backup method to the JavaScript for browsers that do not
      support JavaScript at all.</p>
      <p><i>It should be noted that when this script executes (depending on
      network speed and your system speed) you may not see the redirection page
      for more than a fraction of a second (if at all).</i></p>
      <p><a href="examples/redirection.htm" target="_blank">See this script in
      action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\redirection.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">Here is exactly the same JavaScript redirection file but
      without all of the comments.&nbsp; This is provided to let you see that
      this really is a small and clean solution.</td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\redirection_clean.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2><a name="Timed-Redirect"></a>Timed Redirect with JavaScript</h2>
      <p>Another version based on the JavaScript redirection method.&nbsp; If
      you want &quot;all&quot; browsers to have a timed delay before changing to
      the target page.</p>
      <p><a href="examples/redirection_timed.htm" target="_blank">See this
      script in action.</a></p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\redirection_timed.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td>
      <h2><a name="meta-tag"></a>&quot;refresh&quot; meta-tag</h2>
      <p>The traditional method for redirecting a page is to use a
      &quot;refresh&quot; <a href="../html/metatags.asp">meta-tag</a>.&nbsp;&nbsp; The biggest problem with using
      this method is that the redirection page is included in the visitor's page
      history, and thus when the user selects the &quot;back&quot; button and
      reaches the redirection page again they will be immediately returned to
      the redirection-target page.</p>
      <p><b>The preferred redirection method is &quot;<a href="#version2">JavaScript
      Redirect</a>&quot;</b></p>
      <p><a href="../html/examples/redirection.htm" target="_blank">See this
      script in action.</a></p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("..\html\examples\redirection.htm") %>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="../_private/footer_free.htm" tag="BODY" startspan-->



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