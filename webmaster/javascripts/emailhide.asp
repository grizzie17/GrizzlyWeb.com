<!--#include file="_private\outputsource.asp"-->
<html>

<head>
<title>Email Address Hiding - JavaScripts - Grizzly WebMaster</title>
<meta name="keywords" content="JavaScript, email, address, hiding">
<meta name="description" content="Implementing email address hiding schemes with JavaScript">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css" media="screen">
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">JavaScripts</span><br>
      <span class="title">Email Address Hiding</span></th>
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
<!--webbot bot="Include" i-checksum="59381" endspan -->
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a href="../">Grizzly
      WebMaster (HOME)</a> &gt;&gt; <a href="../javascript.htm">JavaScripts</a>
      &gt;&gt; Email Address Hiding</th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="2"><img border="0" src="../images/000000.gif" width="1" height="1"></td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%"><p>The problem that we are solving is that many spam generating systems use spiders that collect 
	information from websites.&nbsp; Specifically, they collect the email addresses that you put in your web pages.&nbsp; 
	There are several different solutions out there but many are a real pain requiring you to encode your email address 
	into arrays of decimal characters or other similar schemes.&nbsp; The biggest problems with these is that they are a 
	real pain for doing real work on your website on a daily basis.&nbsp; These solutions are a little more direct and 
	easy to maintain.</p>
	<h2>Embedded Javascript</h2>
      <p>This script demonstrates a simple method requiring entry of a JavaScript block at each location where you want 
		to have an email address.</p>
      <p><a href="examples/emailhide.htm" target="_blank">See this script
      in action.</a></p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\emailhide.htm") %>
    </td>
  </tr>
</table>
<table border="0" width="550" cellspacing="10" cellpadding="0">
  <tr>
    <td width="100%">
	<p>&nbsp;</p>
	<h2>Span Substitute</h2>
      <p>This method takes a slightly different approach.&nbsp; In some ways it might look more complex, but in the 
		daily site maintenance work it is actually much easier to deal with.&nbsp; The real nice thing is that ALL of 
		the JavaScript can be hidden in an external file and then referenced.</p>
      <p><a href="examples/emailhide2.htm" target="_blank">See this script
      in action.</a></p>
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="10" cellpadding="4">
  <tr>
    <td width="100%" class="code"><% outputSource("examples\emailhide2.htm") %>
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
