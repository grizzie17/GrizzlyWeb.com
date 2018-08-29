<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css"
media="screen">
<title>Frames Required - JavaScripts - Grizzly WebMaster</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Frames Required</span></th>
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
      href="../javascript.htm">JavaScripts</a> &gt;&gt; Frames Required</th>
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
          <td bgcolor="#CCFFCC">See &quot;<a href="framesbuster.asp"><b>Frames
            Buster</b></a>&quot; for techniques of breaking out of unwanted frames.</td>
        </tr>
      </table>
      Some sites prefer to use frames to organize their web content.&nbsp; Some
      of those sites &quot;require&quot; that their pages be viewed only in the
      context of their frames.&nbsp; This set of scripts demonstrates one method
      of accomplishing this.
      <p>Our method uses two complementing pages, a &quot;normal page&quot;
      which represents one of your site's standard pages that requires a frames
      context, and a frames entry page.</p>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Normal Page</h2>
      <table border="1" width="175" align="right" cellspacing="1"
      cellpadding="2">
        <tr>
          <td bgcolor="#CCFFCC">See &quot;<a href="replacewindow.asp">Replace
            Window</a>&quot; for a more detailed explanation of the
            replaceWindowURL function</td>
        </tr>
      </table>
      <p>The &quot;Normal page&quot; represents any of the pages on your site
      that should always be viewed within a frames context.&nbsp; The contained
      script must be placed in the &lt;head&gt; section of each page.</p>
      <p>Basically the script senses whether the page is nested within
      &quot;a&quot; frame, it does not test whether the page is nested within
      the &quot;correct&quot; frame.</p>
      <p><i>It should be noted that when this script executes (depending on
      network speed and your system speed) you may not see the non-frames page
      for more than a fraction of a second (if at all).</i></p>
      <p><a href="examples/framesrequired.htm" target="_blank">See this script
      in action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\framesrequired.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Frames Entry Page</h2>
      <p>The frames entry page is setup as the default page for your data
      frame.&nbsp; It checks the query-string of the parent-frame.&nbsp; If
      there is a query-string it assumes that it is the name of the page that
      should be displayed and then switches to that page.</p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\framesrequiredentry.htm") %>
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
