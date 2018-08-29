
<html>

<head>
<title>Starting Point</title>
<meta name="robots" content="noindex">
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
Starting Point</b></font></p>

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

<FORM ACTION="http://www.stpt.com/submit/submit.asp" METHOD=POST name=search>
				<table border="0">
				<tr>
				<td align=left><font color="#CC6600" face=arial, helvetica, verdana>Site Title </font></td>
				<td colspan=3><input name=title size=38 value="<%=sTitle%>"></td>
				</tr>

				<tr>
				<td align=left><font color="#CC6600" face=arial, helvetica, verdana>URL </font></td>
				<td colspan=3><b><font color="#000000">http://</font></b> <input name=url size=32></td>
				</tr>

				<tr>
				<td align=left><font color="#000000" face=arial, helvetica, verdana>Company </font></td>
				<td colspan=3><input name=company size=38 value="<%=sCompany%>"></td>
				</tr>


				<tr>
				<td align=left><font color="#CC6600" face=arial, helvetica, verdana>Contact First Name</font></td>
				<td colspan=3><input name=fname size=38 value="<%=sFirstName%>"></td>
				</tr>
				
				<tr>
				<td align=left><font color="#CC6600" face=arial, helvetica, verdana>Contact Last Name</font></td>
				<td colspan=3><input name=lname size=38 value="<%=sLastName%>"></td>
				</tr>
				
				<tr>
				<td align=left><font color="#CC6600" face=arial, helvetica, verdana>Email </font></td>
				<td colspan="3"><input name=email size=38 value="<%=sEmail%>"></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>Job Title&nbsp;</font></td>
				<td colspan="3"><select name=job>
				<OPTION VALUE=""> 
				<OPTION VALUE="president">President/Owner
				<OPTION VALUE="consult">Internet Consultant
				<OPTION VALUE="marketing">Marketing Director
				<OPTION VALUE="mediadirect">Media Director
				<OPTION VALUE="mediaplan">Media Planner/Buyer
				<OPTION VALUE="account">Account Executive
				<OPTION VALUE="admin">Administrative Assistant
				<OPTION VALUE="webdeveloper">Web Site Developer
				<OPTION VALUE="webmaster">Webmaster
				<OPTION VALUE="other">Other
				</SELECT></td>
				</tr>

				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>Address </font></td>
				<td colspan="3"><input name=addr1 size=38></td>
				</tr>

				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>&nbsp;</font></td>
				<td colspan="3"><input name=addr2 size=38></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>City </font></td>
				<td colspan="3"><input name=city size=38></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>State </font></td>
				<td colspan="3"><input name=state size=3 maxlength=3></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#CC6600" face=arial, helvetica, verdana>Zip Code </font></td>
				<td colspan="3"><input name=zip size=7 maxlength=10 value="<%=sZipCode%>"></td>
				</tr>

				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>Country </font></td>
				<td colspan="3"><input name=country size=38 value="<%=sCountry%>"></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>Phone </font></td>
				<td colspan="3"><input name=phone size=38 value="<%=sPhone%>"></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#000000" face=arial, helvetica, verdana>Fax </font></td>
				<td colspan="3"><input name=fax size=38 value="<%=sFax%>"></td>
				</tr>
				
				<tr>
				<td align="left"><font color="#CC6600" face=arial, helvetica, verdana>Category&nbsp;</font></td>
				<td colspan="3"><select name=category>
				
				
				<OPTION VALUE="">
				
				<option value="1">Business &#038; Entrepreneurship

				<option value="2">Technology &#038; Internet

				<option value="3">Entertainment

				<option value="4">Health &#038; Fitness

				<option value="5">Investing &#038; Finance

				<option value="6">Magazines

				<option value="7">News &#038; Information

				<option value="8">Career &#038; Education

				<option value="9">Shopping

				<option value="10">Sports &#038; Recreation

				<option value="11">Travel &#038; Leisure

				<option value="13">Women &#038; Family

				</SELECT></td>
				</tr>
				
				<tr>
				<td align="left" valign="top"><font color="#CC6600" face=arial, helvetica, verdana>Description&nbsp;&nbsp;&nbsp;</font></td>
				<td colspan="3"><TEXTAREA COLS=30 rows=5 NAME=descrip wrap="virtual"><%=sDescription%></TEXTAREA><br>
				<font size=-1 face=arial, helvetica, verdana>(Limit: 160 Characters / No HTML tags please.)</font><BR>
				</td>
				</tr>
				
				<tr>
				<td colspan="4">&nbsp;<br></td>
				</tr>

				<tr>
				<td align="left" valign="top"><font color="#000000" face=arial, helvetica, verdana>Keywords</font></td>
				<td colspan="3"><input type="Text" name="keyword" maxlength="20" size="20"><br>
				<input type="Text" name="keyword" maxlength="20" size="20"><br>
				<input type="Text" name="keyword" maxlength="20" size="20"><br>
				<input type="Text" name="keyword" maxlength="20" size="20"><br>
				<input type="Text" name="keyword" maxlength="20" size="20"><br>
				</td>
				</tr>				
				
				<tr>
				<td colspan="4">&nbsp;<br></td>
				</tr>				
				
				<tr>
				<td align="left" valign="top"><font color="#CC6600" face=arial, helvetica, verdana>Type </font></td>
				<td colspan="3">
				<input type=text name=type value="<%=sSiteType%>">
				<!--<input type=radio name=type value="personal">
				Personal Web Site<br>
				<input type=radio name=type value="business">
				Company/Commercial Web Site--></td>
				</tr>

				<tr>
				<td colspan="4">&nbsp;<br></td>
				</tr>
				
				<tr>
				<td colspan=4 valign=top>
					<font face="ariel,helvetica,verdana">Interests</font>
					<br><input type=checkbox name=subscribe value="ON">&nbsp;Click here to join Starting Point's Web Notification Service, in partnership with <b>YesMail.</b>  Keep abreast via email on all of the latest Web developments from arts, business, music, news, to sports and travel.  You can unsubscribe at any time.



				</td>
				</tr>
				
				<tr>
				<td colspan="4"><input type="hidden"  name="mailtime" value="8:59:57 PM">&nbsp;<br></td>
				</tr>
							
				
				<tr>
				<td align="left">&nbsp;</td>
	 			<td colspan="3">
				<input type=submit value="Submit">
				<input type=reset value="Clear">
				</td>
				</tr>
				</table>
			</form>
	<!-- END TABLE FOR SUBMIT FORM -->

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
