<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<title>Redirect to DHTML Page - DHTML - Grizzly WebMaster</title>
<meta name="keywords" content="dhtml, redirect, javascript, jscript">
<meta name="description" content="Redirecting to DHTML page">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css"
media="screen">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">Dynamic
      HTML</span><br>
      <span class="title">Redirect for DHTML page</span></th>
    <td align="right" valign="bottom"><!--webbot bot="Include"
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
<!--webbot bot="Include" endspan i-checksum="59381" -->
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif"
      width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a
      href="../">Grizzly WebMaster (HOME)</a> &gt;&gt; <a href="../dhtml.htm">Dynamic
      HTML</a> &gt;&gt; Redirect for DHTML page</th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="2"><img border="0" src="../images/000000.gif"
      width="1" height="1"></td>
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
          <td bgcolor="#CCFFCC">&quot;<a href="../javascripts/redirection.asp"><b>Page
            Redirection - JavaScript</b></a>&quot; for more techniques of
            redirecting from one page to another.</td>
        </tr>
      </table>
      This page demonstrates a good method for redirecting your visitor based on
      whether their browser supports dynamic-html or not.
      <p>This script uses the technique of defining more than one implementation
      of the same function, each within a separate JavaScript version
      block.&nbsp; Only the function that is in the last processed script block
      will be used.&nbsp; For that reason it is important to order the script
      blocks in ascending order according to JavaScript version.</p>
      <p>Our example will redirect to one of three other pages.&nbsp; One is a
      target for browsers that don't support JavaScript at all (or have
      JavaScript turned off), another is an implementation of a static
      JavaScript clock and lastly our dynamic clock (mainly because I already
      had these handy).</p>
      <table border="1" width="175" bgcolor="#FFCC66" align="right"
      cellspacing="0" cellpadding="2">
        <tr>
          <th width="100%"><a href="examples/redirectdhtml.htm">Save Source</a></th>
        </tr>
        <tr>
          <td width="100%"><a href="examples/redirectdhtml.htm">Right mouse
            button here</a> and select &quot;save target as&quot; to save the
            source</td>
        </tr>
      </table>
      <p>Obviously before using these functions you would want to remove the
      verbose comments.</p>
      <p><i>It should be noted that when this script executes (depending on
      network speed and your system speed) you may not see the redirection page
      for more than a fraction of a second (if at all).</i></p>
      <p><a href="examples/redirectdhtml.htm" target="_blank">See this script in
      action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\redirectdhtml.htm") %>
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



<!--webbot bot="Include" endspan i-checksum="396" -->



</body>

</html>
