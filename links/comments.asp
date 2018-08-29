<%@	Language=VBScript
	EnableSessionState=True %>
<%
OPTION EXPLICIT



FUNCTION makeGUID()
	makeGUID = ""
	DIM	oTypeLib
	
	SET oTypeLib = Server.CreateObject("Scriptlet.Typelib")
	IF NOT Nothing IS oTypeLib THEN
		DIM	sGUID
		
		sGUID = TRIM(oTypeLib.Guid)
		SET oTypeLib = Nothing
		sGUID = REPLACE(sGUID,"{","")
		sGUID = REPLACE(sGUID,"}","")
		makeGUID = TRIM(sGUID)
	END IF
END FUNCTION



FUNCTION getGuidChars(s)

	getGuidChars = "000000000000000000"

	DIM	oReg
	DIM	oMatchList

	SET oReg = NEW RegExp
	oReg.Pattern = "^(\d+|[A-Za-z]+|-){8,}"
	oReg.IgnoreCase = TRUE
	oReg.Global = TRUE
	SET oMatchList = oReg.Execute( s )
	IF 0 < oMatchList.Count THEN
		getGuidChars = LEFT(s, oMatchList(0).length)
	END IF
	

END FUNCTION




%>
<!--#include file="scripts\config.asp"-->
<!--#include file="scripts\mailserver.asp"-->
<!--#include file="scripts\mailsend.asp"-->
<html>

<head>
<title>Comments/Problems - Grizzly Web Links</title>
<meta name="ROBOTS" content="noindex">
<meta name="GENERATOR" content="Microsoft FrontPage 12.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="expires" content="0">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="pragma" content="nocache">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<style type="text/css">
<!--
.navbackground { background-color: #663300; color: #FFFFFF }
-->
</style>
<script type="text/javascript" language="JavaScript">
<!--

function checkEmailFrom( sFrom )
{
	var	bResult = false;
	
	var n = sFrom.length;
	if ( 5 < n )
	{
		if ( sFrom.indexOf(" ") < 0 )
		{
			var i = sFrom.indexOf("@");
			if ( 0 < i  &&  i < n-3 )
			{
				var j = sFrom.indexOf(".",i);
				if ( i+1 < j  &&  j < n-2 )
					bResult = true;
			}
		}
	}
	return bResult;
}

function checkRequired( theForm )
{
	var	bMissing = false;
	var bBadEmail = false;
	
	if ( 0 == theForm.from.value.length )
	{
		bMissing = true;
	}
	else
	{
		if ( ! checkEmailFrom(theForm.from.value) )
			bBadEmail = true;
	}
	if ( 0 == theForm.comments.value.length )
		bMissing = true;
	if ( 0 == theForm.category.selectedIndex )
		bMissing = true;
	
	if ( bMissing )
	{
		alert("All fields are required on this form.\n"
				+ "Please complete them and select Submit again.");
		return false;
	}
	else if ( bBadEmail )
	{
		alert("The email address appears to be misformed.\n"
				+ "Please correct and submit again.");
		return false;
	}
	else
	{
		return true;
	}
}

//-->
</script>
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="150">
	<!--webbot bot="Include" u-include="_private/nav/0root.asp"
      tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan --><table border="0" width="100%" cellspacing="0" cellpadding="0">
        <tr>
          <td bgcolor="#996600" valign="bottom" align="left" class="navbackground"><img
            src="../images/pie_bl.gif" border="0"></td>
          <th bgcolor="#996600" class="navbackground">Comments / Problems</th>
          <td bgcolor="#996600" valign="bottom" align="right" class="navbackground"><img
            src="../images/000000.gif" width="16" height="16"></td>
        </tr>
      </table>
      <!--webbot bot="Include" u-include="_private/nav/0root_x.asp" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><table border="0" width="100%" cellpadding="2">
      <tr>
        <th width="100%" bgcolor="#CC9966" align="left" class="weblinks"><a class="navigationsmall" href="index.asp">Grizzly Web Links</a></th>
      </tr>
    </table>
    </td>
    <td bgcolor="#996600" width="10" class="navbackground"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" valign="top" align="left" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <td bgcolor="#996600" align="center" class="navbackground"><span class="more">Navigation</span></td>
    <td bgcolor="#996600" valign="bottom" align="right" class="navbackground"><img src="../images/pie_br.gif" WIDTH="16" HEIGHT="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="4433" endspan --></td>
  </tr>
</table>
<%
	DIM	sLEhost
	DIM	sRefer
	DIM	sFrom
	DIM	sCategory
	DIM	sComments
	DIM	sGUID
	DIM	sFormGUID
	DIM	bSend
	DIM	oSMTP

	sLEHost = LCase(Request.ServerVariables("HTTP_HOST"))
      
	IF 0 = Request.Form("submit").Count THEN
		bSend = FALSE
		sFrom = ""
		sCategory = ""
		sComments = ""
		sRefer = Request.ServerVariables("HTTP_REFERER")
		sGUID = makeGUID()
		Session("GrizzlyWebLinksComments") = sGUID
	ELSE
		bSend = TRUE
		sFrom = Request.Form("from")
		sCategory = Request.Form("category")
		sComments = Request.Form("comments")
		sRefer = Request.Form("referrer")
		sFormGUID = Request.Form("commentguid")
		sGUID = getGuidChars(Session("GrizzlyWebLinksComments"))
		IF sGUID <> sFormGUID THEN
			bSend = FALSE
		END IF
	END IF

%>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <%
		IF sFrom = ""  OR  sCategory = ""  OR  sComments = ""  OR  NOT bSend THEN
		%>
      <form method="post" action="comments.asp"
      onsubmit="return checkRequired(this)" name="CommentsForm">
		<%
			IF bSend THEN
				IF sFormGUID <> sGUID THEN
				%>
        <p align="center"><b>Session is wrong or unexpected, please fill the form out locally</b></p>
		
				<%
				ELSE
			%>
        <p align="center"><b>One or more required fields are missing</b></p>
			<%
				END IF
			ELSE
			%>
        <table border="0" cellspacing="4" width="100%" cellpadding="0">
          <tr>
            <td width="100%">Please use this form to submit questions or feedback about Grizzly
              Web Links.&nbsp; To expedite your response, please select a category from the drop
              down list in the form that best matches your inquiry.
              <ul>
                <li>Broken Links - Report links that are broken or have moved.</li>
                <li>Spam Reporting -Report links that go to inappropriate pages, or report
                  search results that do not match the query submitted.</li>
                <li>URL Listing Support - Questions or feedback about listing and maintaining
                  your web site in our index.</li>
                <li>User Interface Issues - Questions or feedback about the site's look and
                  feel, navigation or links.</li>
                <li>General Comments - General questions or feedback about Grizzly Web Links.</li>
              </ul>
            </td>
          </tr>
        </table>
        <%
			END IF
        %>
        <table border="0" cellpadding="2" width="100%">
          <tr>
            <th align="right">Your e-mail</th>
            <td><small>johndoe@someplace.com</small><br>
              <input type="text" name="from" size="40" value="<%=sFrom%>"></td>
          </tr>
          <tr>
            <th align="right">Category</th>
            <td><select size="1" name="category">
                <option selected value>Select One:</option>
                <option>Broken Links</option>
                <option>Spam Reporting</option>
                <option>URL Listing Support</option>
                <option>User Interface Issues</option>
                <option>General Comments</option>
              </select></td>
          </tr>
          <tr>
            <th valign="top" align="right">Comments</th>
            <td><textarea name="comments" rows="10" cols="39"><%=sComments%></textarea></td>
          </tr>
          <tr>
            <td align="center">&nbsp;</td>
            <td align="center"><input type="submit" value="Submit" name="submit"> <input
              type="reset" value="Clear"></td>
          </tr>
        </table>
        <%IF 0 < LEN(sRefer) THEN%>
        <input type="hidden" name="referrer" value="<%=sRefer%>">
		<%END IF%>
		<%IF 0 < LEN(sGUID) THEN%>
		<input type="hidden" name="commentguid" value="<%=sGUID%>">
		<%END IF%>
      </form>
      <%
	ELSE
			DIM	nStatus
			nStatus = mailsend( sFrom, "", "webmaster@grizzlyweb.com", "", "", _
							"Comments - Grizzly Web Links", _
							sCategory & vbCRLF _
								&	"Referrer: " & sRefer & vbCRLF _
								&	"================================" & vbCRLF & vbCRLF _
								&	sComments )

			IF nStatus THEN
      %>
      <p>An error occurred during submission of your comments:</p>
      <%
			ELSE
      %>
      <p>Your message has been submitted successfully ... Thank you</p>
      <%
			END IF
	END IF
      %></td>
  </tr>
</table>

</body>

</html>
<%
	SET oSMTP = Nothing
%>