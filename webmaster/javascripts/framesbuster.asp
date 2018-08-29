<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css"
media="screen">
<title>Frames Buster - JavaScripts - Grizzly WebMaster</title>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Frames Buster</span></th>
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
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a
      href="../">Grizzly WebMaster (HOME)</a> &gt;&gt; <a
      href="../javascript.htm">JavaScripts</a> &gt;&gt; Frames Buster</th>
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
          <td bgcolor="#CCFFCC">See &quot;<a href="framesrequired.asp"><b>Frames
            Required</b></a>&quot; for techniques of requiring a frames-context
            for web-page content.</td>
        </tr>
      </table>
      Often a web-site wants to protect its pages from being enclosed in a frame
      from some other web-site.&nbsp; This can be easily be done by adding a
      small piece of JavaScript at the beginning of your page.
      <h2>Version 1</h2>
      <p>Our first (and preferred) version &quot;replaces&quot; the frame with
      our page.&nbsp; This means that our site visitor will not be frustrated by
      our frame-busting entering an additional entry in their browsing history.</p>
      <p><i>It should be noted that when this script executes (depending on
      network speed and your system speed) you may not see the frames page for
      more than a fraction of a second (if at all).</i></p>
      <p><a href="examples/framesbusterframe.htm" target="_blank">See this
      script in action (frames)</a> - <a href="examples/framesbusteriframe.htm"
      target="_blank">(iframes)</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\framesbuster.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">Here is exactly the same JavaScript frames-buster file but
      without all of the comments.&nbsp; This is provided to let you see that
      this really is a small and clean solution.</td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\framesbuster_clean.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
      <h2>Version 2</h2>
      <p>The second version is smaller but adds an entry into our site visitor's
      browser history.</p>
      <p><a href="examples/framesbusterframe2.htm" target="_blank">See this
      script in action.</a></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\framesbuster2.htm") %>
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
