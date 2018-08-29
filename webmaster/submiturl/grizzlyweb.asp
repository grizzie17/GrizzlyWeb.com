
<html>

<head>
<title>Grizzly Web Links</title>
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

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to Grizzly Web Links</b></font></p>

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

<form method="post" action="http://grizzlyweb.com//links/submit/submitlink.asp" name="search" target="main">
      <input type="hidden" name="location" value="">
      <input type="hidden" name="referrer" value="Grizzly+WebMaster">
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <th valign="top" align="right">Your e-mail</th>
          <td><small>johndoe@someplace.com</small><br>
          <input type="text" name="from" size="40" value="<%=sEmail%>"></td>
        </tr>
        <tr>
          <th valign="top" align="right">Site URL</th>
          <td><small>http://www.johnsplace.com/</small><br>
          <input type="text" name="linkURL" size="35" value="<%=sURL%>"></td>
        </tr>
        <tr>
          <th valign="top" align="right">Description<br>
          or comments</th>
          <td><textarea name="comments" rows="5" cols="34"><%=sTitle%>

<%=sDescription%></textarea></td>
        </tr>
        <tr>
          <td align="center">&nbsp;</td>
          <td align="center"><input type="submit" value="Submit" name="submit"> <input type="reset" value="Clear"></td>
        </tr>
      </table>
    </form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
