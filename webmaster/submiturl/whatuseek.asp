
<html>

<head>
<title>whatUseek</title>
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

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to
whatUseek</b></font></p>

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

<form action="http://www.whatuseek.com/cgi-bin/addurl.go" method="POST" name="search">
<center>      <br><font face="Arial"><strong>Please enter your
  URL submission below</strong></font><br>
  <input type="text" size="53" maxlength="256" name="url" value="<%=sURL%>"> 
  </center><div align="center"><center><p><font face="Arial"><strong>Please enter your
  e-mail address below<br>
  </strong></font><font face="arial"><small>(This information will not be published online,
  but rather,<br>
  will be used to contact you in the event that your site is<br>
  categorized within the whatUseek Channels)</small></font><br>
  <input type="text" size="53" maxlength="256" name="email" value="<%=sEmail%>"> </p>
  </center></div>

<p align="left"><font face="Arial">whatUseek wants to keep you informed about the
things you're interested in. Now, keep abreast on all of the latest developments
from arts, business, music, news, to sports and travel.  It's completely free
and you can unsubscribe at ANY time.  Finally, content-rich and valuable e-mail
you can look forward to!  Provided by whatUseek/YesMail.</p>


</font>
<!-- 
<table cellpadding=0 cellspacing=0 border=0 width=90%>
<tr>
<td><INPUT type="checkbox" name=chk1 value="Arts/Humanities"></td>
<td><font face=arial size=-2 color=#ffffff>Arts &amp; Humanities</font></td>

<td><INPUT type="checkbox" name=chk2 value="Entertainment/Games"></td>
<td><font face=arial size=-2 color=#ffffff>Entertainment &amp; Games</font></td>

<td><INPUT type="checkbox" name=chk3 value="Real Estate"></td>
<td><font face=arial size=-2 color=#ffffff>Real Estate</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk4 value="Automotive"></td>
<td><font face=arial size=-2 color=#ffffff>Automotive</font></td>

<td><INPUT type="checkbox" name=chk5 value="Health"></td>
<td><font face=arial size=-2 color=#ffffff>Health</font></td>

<td><INPUT type="checkbox" name=chk6 value="Reference"></td>
<td><font face=arial size=-2 color=#ffffff>Reference</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk7 value="Business"></td>
<td><font face=arial size=-2 color=#ffffff>Business</font></td>

<td><INPUT type="checkbox" name=chk8 value="Home/Family"></td>
<td><font face=arial size=-2 color=#ffffff>Home &amp; Family</font></td>

<td><INPUT type="checkbox" name=chk9 value="Science/Technology"></td>
<td><font face=arial size=-2 color=#ffffff>Science &amp; Technology</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk10 value="Careers"></td>
<td><font face=arial size=-2 color=#ffffff>Careers</font></td>

<td><INPUT type="checkbox" name=chk11 value="Internet"></td>
<td><font face=arial size=-2 color=#ffffff>Internet</font></td>

<td><INPUT type="checkbox" name=chk12 value="Shopping"></td>
<td><font face=arial size=-2 color=#ffffff>Shopping</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk13 value="Computers"></td>
<td><font face=arial size=-2 color=#ffffff>Computers</font></td>

<td><INPUT type="checkbox" name=chk14 value="Investing/Finance"></td>
<td><font face=arial size=-2 color=#ffffff>Investing &amp; Finance</font></td>

<td><INPUT type="checkbox" name=chk15 value="Society/Culture"></td>
<td><font face=arial size=-2 color=#ffffff>Society &amp; Culture</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk16 value="Cooking/Food/Wine"></td>
<td><font face=arial size=-2 color=#ffffff>Cooking, Food &amp; Wine</font></td>

<td><INPUT type="checkbox" name=chk17 value="Kids"></td>
<td><font face=arial size=-2 color=#ffffff>Kids</font></td>

<td><INPUT type="checkbox" name=chk18 value="Sports/Recreation"></td>
<td><font face=arial size=-2 color=#ffffff>Sports &amp; Recreation</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk19 value="Education"></td>
<td><font face=arial size=-2 color=#ffffff>Education</font></td>

<td><INPUT type="checkbox" name=chk20 value="Music"></td>
<td><font face=arial size=-2 color=#ffffff>Music</font></td>

<td><INPUT type="checkbox" name=chk21 value="Travel"></td>
<td><font face=arial size=-2 color=#ffffff>Travel</font></td>
</tr>
<tr>
<td><INPUT type="checkbox" name=chk22 value="Electronics"></td>
<td><font face=arial size=-2 color=#ffffff>Electronics</font></td>

<td><INPUT type="checkbox" name=chk23 value="News"></td>
<td colspan=4><font face=arial size=-2 color=#ffffff>News</font></td>
</tr>
                                
</table>   -->

  <table border="0" cellpadding="3" cellspacing="0" width="500">
    <tr>
      <td valign="top" align="left" width="33%"><font face="Arial"><input type="checkbox" name="chk1" 
value="15"><small>Automotive<br>
        </small><input 
type="checkbox" name="chk2" value="40"><small>Business<br>
        </small><input type="checkbox" name="chk3" 
value="67"><small>Careers<br>
        </small><input type="checkbox" 
name="chk4" value="76"><small>Computer Hardware<br>
        </small><input type="checkbox" name="chk5" 
value="794"><small>Computer Programming</small><br>
        <input 
type="checkbox" name="chk6" value="697"><small>Electronics</small></font></td>
      <td valign="top" align="left" width="33%"><font face="Arial"><input type="checkbox" name="chk7" 
value="156"><small>Entertainment<br>
        </small><input 
type="checkbox" name="chk8" value="840"><small>Family</small><br>
        <input type="checkbox" name="chk9" 
value="832"><small>Games<br>
        </small><input type="checkbox" 
name="chk10" value="871"><small>Government<br>
        </small><input type="checkbox" name="chk11" 
value="170"><small>Health<br>
        </small><input type="checkbox" 
name="chk12" value="725"><small>Internet</small></font></td>
      <td valign="top" align="left" width="33%"><font face="Arial"><input type="checkbox" name="chk13"
value="673"><small>Investing 
&amp; Finance</small><br>
        <input type="checkbox" 
name="chk14" value="742"><small>Music</small><br>
        <input type="checkbox" name="chk15" value="272"><small>Science 
&amp; Technology</small><br>
        <input type="checkbox" 
name="chk16" value="293"><small>Shopping</small><br>
        <input type="checkbox" name="chk17" value="323"><small>Sports 
&amp; Recreation<br>
        </small><input type="checkbox" 
name="chk18" value="363"><small>Travel &amp; Leisure</small></font></td>
    </tr>
  </table>

<center><input type="checkbox" value="1" name="news_optout" checked> <small>Check this box if you don't want to
receive news,<br>updates or announcements from whatUseek.</small></center><br>
<div align="center"><center><p><input type="submit" name="submit"
  value="Add This URL"> <input type="reset" name="Clear" value="Reset"></center></div>


</form>


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
