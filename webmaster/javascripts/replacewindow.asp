<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<title>Replace Window - JavaScripts - Grizzly WebMaster</title>
<meta name="keywords" content="replace window, replace history, JavaScript">
<meta name="description"
content="Use a neat little trick to create a small function that replaces a windows contents in any version of JavaScript">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css"
media="screen">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Replace Window</span></th>
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
      href="../">Grizzly WebMaster (HOME)</a> &gt;&gt; <a
      href="../javascript.htm">JavaScripts</a> &gt;&gt; Replace Window</th>
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
    <td width="100%">It is often desirable to replace the contents of the window
      with another document.&nbsp;&nbsp; This is useful when the Page Developer
      does not want the original page left in the browser page-history.
      <p>This version of &quot;replaceWindowURL&quot; uses an often
      under-utilized capability of JavaScript to allow for two or more
      definitions of the same function.&nbsp; If a function is defined in a
      JavaScript code-block, that is redefined in a later code-block the later
      function will be used.&nbsp; The trick is that the later code-block is a
      &quot;versioned&quot; JavaScript code-block.&nbsp; That way you have a
      function that is defined for &quot;all&quot; JavaScripts and one (or more)
      that is defined for a specific version of JavaScript.</p>
      <p>Notice that one version does not actually &quot;replace&quot; the
      window contents but merely loads a new page (JavaScript).&nbsp; The second
      version of the function (in JavaScript1.1) actually replaces the window
      contents.</p>
      <p>It is important that the JavaScript1.1 version follows the JavaScript
      version.</p>
      <p>Obviously before using these functions you would want to remove the
      verbose comments.</td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\replacewindow1.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%" bgcolor="#CCFFCC">See the following article for examples of
      using replaceWindowURL:
      <ul>
        <li><a href="framesrequired.asp">Frames Required</a></li>
      </ul>
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
