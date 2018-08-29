<!--#include file="_private\navigation.asp"-->
<%
DIM	sURL
DIM	sPrompt
sURL = Request("URL")
sPrompt = Request("PROMPT")
IF "" <> sURL THEN
	IF sPrompt = "" THEN sPrompt = "Enter Here"
%>
<html>

<head>
<title><%=Server.HTMLEncode(sPrompt)%> - Adult Site Warning</title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content="none">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ent.css" media="screen">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan -->
<%
'IF FALSE THEN
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"javascript:history.back();;Previous Page" & vbLF _
		&	"javascript:history.back();;WARNING: <br>Adult <br>Oriented <br>Site"
	NavBack sPages, sLocArgx
'END IF

%>

<p align="center"><b>We Strongly suggest <br>
that you choose a different site.</b></p>

<p align="center"><a href="javascript:history.back()">Return to<br>
Previous Page</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>


    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="470">
<p>&nbsp;</p>

<p align="center"><b><font size="5" color="#FF0000">WARNING</font></b><br>
<b>Adult Oriented Site</b></p>

<p align="center">The identified site may contain material <br>
of an adult nature 
which may include:<br>
mature subjects with explicit descriptions, <br>
partial or full nudity.</p>
<p align="center"><font size="5"><a href="<%=sURL%>"><%=Server.HTMLEncode(sPrompt)%></a></font></p>

</td>
</tr>
</table>
<!--webbot bot="Include" 
u-include="../_private/include/footer_sans_addlink.htm" tag="BODY" startspan
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
            <td><a
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





<!--webbot bot="Include" i-checksum="20717" endspan -->

</body>

</html>
<%
END IF
%>