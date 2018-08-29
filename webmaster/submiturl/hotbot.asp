
<html>

<head>
<title>HotBot</title>
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
	setTimeout( "reLoad()", 10*1000 );
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
HotBot</b></font></p>

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

<FORM METHOD="get" ACTION="http://www.search.hotbot.com/addurl.asp" HSQ name="search">

<input type="hidden" name="MM" value="1">
<input type="hidden" name="success_page" value="http://www.hotbot.com/addurl.asp">
<input type="hidden" name="failure_page" value="http://www.hotbot.com/help/oops.asp">
<input type="hidden" name="ACTION" value="subscribe">
<input type="hidden" name="SOURCE" value="hotbot">
<input type="hidden" name="LIST" value="hotbot-addurl">


<input type="hidden" name="ip" value="63.10.51.68">

<table border="0" cellpadding="5" cellspacing="0">
<tr><td valign="top"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">1.</font></td>
<td>

<input type=hidden name="redirect" value="http://www.hotbot.com/addurl2.html">
<font size="2" face="Verdana, Arial, Helvetica, sans-serif">URL to add:</font><BR>
<INPUT TYPE=text VALUE="<%=sUrl%>" SIZE=30 name="newurl"><BR>
<A HREF="/help/checkurl.asp">Want to see if your URL has already been indexed?</A><br><br>
<font size="2" face="Verdana, Arial, Helvetica, sans-serif">Your email address:</font> <BR>
<INPUT TYPE=text VALUE="<%=sEmail%>" SIZE=30 name="email"><br>
</td></tr>




<tr><td valign="top"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">2.</font></td>
	<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><p><b>Check the boxes below to find out more about these special services for Web-site builders:</font></b>
<br><table border="0" cellspacing="0" cellpadding="5">
<tr><td valign="top" colspan="2">
<font size="2" face="Verdana, Arial, Helvetica, sans-serif">Get tips and tutorials about Web development from Wired's Webmonkey delivered to your mailbox three days a week.</font></td>
</tr>
<tr><td valign="top"><INPUT TYPE=checkbox NAME="LIST" VALUE="webmonkey"></td><td><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subscribe to text-only (ASCII) email</font></b></td><td></td></tr>
<tr><td valign="top"><INPUT TYPE=checkbox NAME="LIST" VALUE="webmonkey-frontdoor"></td><td><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subscribe to Web-based (HTML) email</font></b></td><td></td></tr>
<tr><Td>&nbsp;</td><td></td><td></td></tr>
<tr><td valign="top" colspan="2">
<font size="2" face="Verdana, Arial, Helvetica, sans-serif">Get Wired News' latest headlines delivered to your mailbox every day.</font></td></tr>
<tr><td valign="top"><INPUT TYPE=checkbox NAME="LIST" VALUE="wn_ascii"></td><td><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subscribe to text-only (ASCII) email</font></b></td><td></td></tr>
<tr><td valign="top"><INPUT TYPE=checkbox NAME="LIST" VALUE="wired-news"></td><td><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subscribe to Web-based (HTML) email</font></b></td><td></td></tr>
</table>

</td>
</tr>
<tr><td valign=top><font size="2" face="Verdana, Arial, Helvetica, sans-serif">3.</font></td>
<Td>



<font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b>Tell us your preferences for mailings:</b></font>
<br>


<table border="0" cellspacing="0" cellpadding="5">
<tr><td valign="top"><input type="checkbox" name="LIST" value="whowhere"></td><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Yes! List my email address in the WhoWhere? PeopleFinder Directory.
(For your privacy, demographic information will not be listed.)</font></td><td></td></tr>

<tr><td valign="top"><input type="checkbox" name="LIST" value="lycos_network"></td><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Yes! I would like to periodically receive email notification of new
features and special offers from Wired Digital and other Lycos Network
companies.</font></td><td></td></tr>


<tr><td valign="top"><input type="checkbox" name="LIST" value="lycos_partner"></td><td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Yes! Wired Digital and other Lycos Network companies can make my
registration information available to select companies, that may contact me
about products or services they offer.</font></td><td></td></tr>










<tr>
<td colspan=2>
<input type="submit"  name="send" value="Add my URL"><br></td><p>

</td>

</tr>

</table>
<p>
<FONT face="Verdana, Arial, Geneva" SIZE="1">
Please note: This form will add sites only to the Inktomi Web-page database. To add a site to the <a href="/">HotBot directory</a>, please choose an appropriate category in the directory and select "Submit a Site."  For more information about how to add sites to the HotBot Directory, please see these <a href="http://dmoz.org/add.html">instructions</a>. 
<p>
<a href="/addurl.asp">Add URL</a> | <a href="mailto:wow@wired.com">Send&nbsp;us&nbsp;feedback</a>&nbsp;| 
<a href="http://www.hotwired.com/jobs/">Work&nbsp;at&nbsp;HotBot</a>&nbsp;| <a href="http://www.wired.com/home/advertising/">Advertise&nbsp;on&nbsp;HotBot</a>&nbsp;| 
<a href="http://www.wired.com/home/">Company&nbsp;Information</a>&nbsp;| 
<a href="http://www.wired.com/home/digital/privacy/">Our&nbsp;Privacy&nbsp;Policy</a>&nbsp;|
<a href="/help/">Help</a>&nbsp;| 
<a href="/text/default.asp?"><nobr>Text-only version</nobr></a> 
<p>
<nobr><a href="http://www.wired.com/home/copyright.html">Copyright</a> &copy; 1994-99 Wired Digital Inc. All rights reserved.<br></nobr>


</font></td></tr>

</table>

</form>


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>




