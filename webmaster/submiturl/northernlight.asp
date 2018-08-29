
<html>

<head>
<title>Northern Light</title>
<meta name="robots" content="none">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<base target="main">
<script language="JavaScript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}
//-->
</script>
<script language="JavaScript1.1">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}
//-->
</script>
<script language="JavaScript">
<!--
function doLoad()
{
	setTimeout( "reLoad()", 8*1000 );
	if ( document.search )
		document.search.submit();
}

function reLoad()
{
	replaceWindowURL( window, "../submiturl_submit.asp" );
}
//-->
</script>
<style type="text/css">
<!--
body         { background-color: #990000; color: #FFFFFF }
p            { background-color: #990000; color: #FFFFFF }
-->
</style>
</head>

<body bgcolor="#CCCCCC" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
onload="doLoad()">

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to
Northern Light</b></font></p>

<%
	DIM	sTitle
	DIM	sURL
	DIM	sLanguage
	DIM	sCountry
	DIM	sCategory
	DIM	sKeywords
	DIM	sDescription
	DIM	sFirstName, sLastName
	DIM	sContactName
	DIM	sEmail
	DIM	sSiteType
	DIM	sCompany
	DIM	sPhone, sFax
	DIM	sZipCode
	
	sTitle = Request.Form("title")
	sURL = Request.Form("url")
	sLanguage = Request.Form("language")
	sCountry = Request.Form("country")
	sCategory = Request.Form("category")
	sKeywords = Request.Form("keywords")
	sDescription = Request.Form("description")
	sFirstName = Request.Form("firstname")
	sLastName = Request.Form("lastname")
	sEmail = Request.Form("email")
	sSiteType = Request.Form("sitetype")
	sCompany = Request.Form("company")
	sPhone = Request.Form("phone")
	sFax = Request.Form("fax")
	sZipCode = Request.Form("zipcode")
	
	sContactName = TRIM(sFirstName & " " & sLastName)
%>

<table border=0 CELLSPACING=0 CELLPADDING=0>
<form action="http://urls.northernlight.com/cgi-bin/urlsubmit.pl" method=POST name="search">
 <tr><td valign=top colspan=2><font face="Arial, Helvetica" size=2><b>Please enter information for all fields.</b><br>&nbsp;</font></td></tr>
 <tr>
  <td align=right valign=middle nowrap><font face="Arial, Helvetica" size=2>Your URL:&nbsp;&nbsp;</font><input type=text size=25 maxlength=512 name=page value="<%=sURL%>"></td>
  <td></td>
 </tr><tr>
  <td align=right valign=middle nowrap><font face="Arial, Helvetica" size=2>Your Name:&nbsp;&nbsp;</font><input type=text size=25 maxlength=96 name=contact value="<%=sContactName%>"></td>
  <td></td>
 </tr><tr>
  <td align=right valign=middle nowrap><font face="Arial, Helvetica" size=2>Your E-mail Address:&nbsp;&nbsp;</font><input type=text size=25 maxlength=256 name=email value="<%=sEmail%>"></td>
  <td></td>
 </tr><tr>
  <td colspan=2 align=left valign=middle><font face="Arial, Helvetica" size=2>&nbsp;<br>
<b>Submit your URL to Northern Light: </b>
<input type="submit" name="sb" value="Submit">
  </font></td>
 </tr>
</form>
</table>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
