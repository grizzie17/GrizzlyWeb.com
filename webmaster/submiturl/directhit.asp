<html>

<head>
<title>Direct Hit</title>
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
		document.search.submit.click();
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

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to Direct Hit</b></font></p>

<%
	DIM	sTitle
	DIM	sURL
	DIM	sLanguage
	DIM	sCountry
	DIM	sCategory
	DIM	sKeywords
	DIM	sDescription
	DIM	sFirstName, sLastName
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
	
	sKeywords = REPLACE( sKeywords, vbCRLF, ",", 1, -1, vbTextCompare )
%>


<form action="http://www.directhit.com/fcgi-bin/DirectHitWeb.fcg" method="GET" name="search">
  <input type="hidden" name="cmd" value="disp"><input type="hidden" name="template"
  value="addurl"><input type="hidden" name="src" value="DH_ADDURL">
  <table cellpadding="0" cellspacing="0">
    <tr>
      <td><font face="Verdana,Arial,Sans-Serif" size="-1">URL:&nbsp;</font></td>
      <td><input type="text" name="URL" value="<%=sURL%>" size="40" maxlength="80"></td>
    </tr>
    <tr>
      <td><font face="Verdana,Arial,Sans-Serif" size="-1">Email Address:&nbsp;</font></td>
      <td><input type="text" name="email" value="<%=sEmail%>" size="40" maxlength="40"></td>
    </tr>
    <tr>
      <td><font face="Verdana,Arial,Sans-Serif" size="-1">Keywords:&nbsp;</font></td>
      <td><input type="text" name="keys" value="<%=sKeywords%>" size="40" maxlength="60"></td>
    </tr>
    <tr>
      <td></td>
      <td><font face="Verdana,Arial,Sans-Serif" size="-1">(Enter descriptive words or phrases
        separated by commas).</font></td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" name="submit" value="Submit!"></td>
    </tr>
  </table>
</form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
