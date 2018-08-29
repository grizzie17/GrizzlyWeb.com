
<html>

<head>
<title>Anzwers</title>
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
	if ( document.addurlform )
		document.addurlform.submit();
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
Anzwers</b></font></p>

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

      <table width=460 cellspacing=0 cellpadding=4 border=0>
        <tr>
     	  <td width=150 valign=top align=right><font face="arial, helvetica" size="2" color="#00319C">URL to add:</font>
          </td>
	  <td width=310 valign=top align=left><form action="http://www.anzwers.com.au/cgi-bin/print_addurl.pl" method="get" name="addurlform"><input type="text" name="url" size="30" value="<%=sURL%>">
          </td>
	</tr>
	<tr>
	  <td width=150 valign=top align=right><font face="arial, helvetica" size="2" color="#00319C">Your email address:</font>
          </td>
	  <td width=310 valign=top align=left><input type="text" name="email" size="30" value="<%=sEmail%>">
          </td>
	</tr>
	<tr>
	  <td width=150 valign=top align=right>
          </td>
	  <td width=310 valign=top align=left><input type="Submit" name="Submit" value="Send"></form>
          </td>
	</tr>
      </table>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
