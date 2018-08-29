
<html>

<head>
<title>InfoMak</title>
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
<script language="JavaScript1.2">
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
InfoMak</b></font></p>

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
%>

<form action="http://www.infomak.com/add_url.sh" method="GET" name="search">
<input type=hidden name="site" value="home_x">
<p align=left><font size=4>URL address <br>
<input type=text size=30 maxlength=80 name="url" value="<%=sURL%>"><br>
 <input type=submit value="ADD MY URL">
<input type=hidden name="Page" value="url">
</form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
