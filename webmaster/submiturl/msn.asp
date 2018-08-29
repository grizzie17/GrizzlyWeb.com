<html>

<head>
<title>MSN</title>
<meta name="robots" content="none">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content="noindex">
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
	if ( document.msn  )
		document.msn.submit();
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

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to MSN</b></font></p>

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

<form action="http://submitit.linkexchange.com/system/MSNAddPublic.cfm" name="msn">
  <table width="460" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td rowspan="12" width="18"><img src="spacer.gif" width="18" height="1"></td>
      <td colspan="3" height="12"></td>
    </tr>
    <tr>
      <td>
        <table class="clsInfoLine" width="100%" cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td><img src="spacer.gif" width="15" height="1"></td>
            <td>To submit your web site for addition to MSN Search, fill out the form below and
              click Submit. <a class="hlpA" href="helpS_Topics.asp#over7">Help, Tips, and
              Restrictions on adding URLs</a>.</td>
            <td valign="top" align="left"></td>
          </tr>
          <tr>
            <td colspan="3"><img src="spacer.gif" height="10" width="1"></td>
          </tr>
          <tr>
            <td><b>1.</b></td>
            <td colspan="2"><font face="arial, helvetica" size="-1"><b>URL to add:</b></font></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="text" name="url" value="<%=sURL%>" size="40" maxlength="255"></td>
          </tr>
          <tr>
            <td colspan="3"><img src="spacer.gif" height="15" width="1"></td>
          </tr>
          <tr>
            <td><b>2.</b></td>
            <td colspan="2"><font face="arial, helvetica" size="-1"><b>Your e-mail address:</b></font></td>
          </tr>
          <tr>
            <td></td>
            <td><input type="text" name="email" value="<%=sEmail%>" size="40" maxlength="500"></td>
          </tr>
          <tr>
            <td colspan="3"><img src="spacer.gif" height="15" width="1"></td>
          </tr>
          <tr>
            <td><b>3.</b></td>
            <td><input type="submit" value="Submit"></td>
          </tr>
          <tr>
            <td colspan="2"><img src="spacer.gif" height="15" width="1"></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
