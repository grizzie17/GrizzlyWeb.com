<html>

<head>
<title>Galaxy</title>
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

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Submitting URL to Galaxy</b></font></p>

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

<form method="POST" action="http://galaxy.einet.net/cgi-bin/mailin?/galaxy+annotatepage"
name="search">
  <table>
    <tr>
      <td>
        <table>
          <tr>
            <td align="right"><b>Your <a href="/annotate-help.html#EMAIL">E-mail address</a></b>:</td>
            <td><input size="40" maxlength="1000" name="Address" value="<%=sEmail%>"></td>
          </tr>
          <tr>
            <td align="right"><a href="/annotate-help.html#TITLE"><b>Document Title</b></a>:</td>
            <td><input size="40" maxlength="1000" name="Title" value="<%=sTitle%>"></td>
          </tr>
          <tr>
            <td align="right"><a href="/annotate-help.html#URL"><b>Document URL</b></a>:</td>
            <td><input size="40" maxlength="1000" name="URL" value="<%=sURL%>"></td>
          </tr>
          <tr>
            <td align="right"><a href="/annotate-help.html#LANGUAGE"><b>Document Language</b></a>:</td>
            <td><input size="40" maxlength="1000" name="Language" value="English"></td>
          </tr>
          <tr>
            <td align="right"><a href="/annotate-help.html#STARTDATE"><b>Start date</b></a>:</td>
            <td><select name="Startdate">
                <option>Now
                <option>9/1/1999
                <option>10/1/1999
                <option>11/1/1999
                <option>12/1/1999
                <option>1/1/2000
                <option>2/1/2000
                <option>3/1/2000
                <option>4/1/2000
                <option>5/1/2000
                <option>6/1/2000
                <option>7/1/2000
                <option>8/1/2000
                <option>9/1/2000
                <option>10/1/2000
                <option>11/1/2000
                <option>12/1/2000
                <option>1/1/2001
                <option>2/1/2001
                <option>3/1/2001
                <option>4/1/2001
                <option>5/1/2001
                <option>6/1/2001
                <option>7/1/2001
                <option>8/1/2001
              </select> <a href="/annotate-help.html#ENDDATE"><b>End date</b></a>:<select
              name="Enddate">
                <option>None
                <option>9/1/1999
                <option>10/1/1999
                <option>11/1/1999
                <option>12/1/1999
                <option>1/1/2000
                <option>2/1/2000
                <option>3/1/2000
                <option>4/1/2000
                <option>5/1/2000
                <option>6/1/2000
                <option>7/1/2000
                <option>8/1/2000
                <option>9/1/2000
                <option>10/1/2000
                <option>11/1/2000
                <option>12/1/2000
                <option>1/1/2001
                <option>2/1/2001
                <option>3/1/2001
                <option>4/1/2001
                <option>5/1/2001
                <option>6/1/2001
                <option>7/1/2001
                <option>8/1/2001
              </select></td>
          </tr>
          <tr>
            <td align="right"><a href="/annotate-help.html#TYPE"><b>Information type</b></a>:</td>
            <td><select name="Type" size="1">
                <option>Academic Organization
                <option>Non-profit Organization
                <option selected>Commercial Organization
                <option>Government Organization
                <option>Discussion Group
                <option>Organization
                <option>Directory
                <option>Collection
                <option>Periodical
                <option>Cartography
                <option>Product/Service Description
                <option>Software
                <option>Event
                <option>Announcement
                <option>Guide
                <option>Book
                <option>Article
                <option>Sights and Sounds
              </select></td>
          </tr>
        </table>
        <br>
        <hr>
        Since you did not select a specific Galaxy page for adding your information, please help
        us out by selecting one of the top-level topics you think is the best match. (Commercial
        organizations, products and services should <b>always</b> go in the Business and
        Commerce topic.)
        <p><b>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/annotate-help.html#TOPIC/">Select a Topic</a></b>:
        <select name="Topic">
          <option value="/galaxy/Business-and-Commerce">Business-and-Commerce
          <option value="/galaxy/Community">Community
          <option value="/galaxy/Engineering-and-Technology">Engineering-and-Technology
          <option value="/galaxy/Government">Government
          <option value="/galaxy/Humanities">Humanities
          <option value="/galaxy/Law">Law
          <option value="/galaxy/Leisure-and-Recreation">Leisure-and-Recreation
          <option value="/galaxy/Medicine">Medicine
          <option value="/galaxy/Reference">Reference
          <option value="/galaxy/Science">Science
          <option value="/galaxy/Social-Sciences">Social-Sciences
        </select><br>
        <br>
        <hr>
        Fill in the <a href="/annotate-help.html#TOPIC"><b>geographic location</b></a> relevant
        to your information, as best you can.
        <p>&nbsp;
        <table>
          <tr>
            <td align="right">Street address:</td>
            <td><input size="40" maxlength="1000" name="Street"></td>
          </tr>
          <tr>
            <td align="right">City:</td>
            <td><input size="40" maxlength="1000" name="City"></td>
          </tr>
          <tr>
            <td align="right">State or Province:</td>
            <td><input size="40" maxlength="1000" name="State"></td>
          </tr>
          <tr>
            <td align="right">Country:</td>
            <td><input size="21" maxlength="1000" name="Country" value="<%=sCountry%>">
              &nbsp;&nbsp;ZIP or postal code: <input size="10" maxlength="1000" name="Zip"
              value="<%=sZipCode%>">
          </tr>
        </table>
        <p>&nbsp;
        <hr>
        <a name="COMMENT">Provide</a> a short <a href="/annotate-help.html#DESCRIPTION"><b>description</b></a>
        of your information source (no HTML tags, please). You should include other forms of
        contact information, like phone and fax numbers. You can also use this space to send us
        a <a href="/annotate-help.html#COMMENTS"><b>comment</b></a>.
        <p><textarea name="Comment" rows="8" cols="60"><%=sDescription%></textarea>
        <p><br>
        <hr>
        Please review your information carefully, and then <input id="submit1" name="submit1"
        type="submit" value="Send to Galaxy"></td>
    </tr>
  </table>
</form>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              </body>

</html>
