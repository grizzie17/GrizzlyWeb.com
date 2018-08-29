<%
DIM sTarget

sTarget = "../../javascripts/examples/redirectiontarget.htm"
Response.Redirect sTarget

'	You might ask, why should we have anything else?
'
'	Some browsers (especially older browsers) do not
'	correctly handle the server requesting the browser
'	to redirect to another page.
'
'	As a result we include our standard redirection
'	javascript page.  The only difference is that we
'	use the ASP variable substitution to provide the
'	redirection target.
'
'	Browsers that correctly handle server directed
'	redirection will never see the html that follows
'	in this file.
%>
<html>

<head>
<title>Redirection ASP Example</title>
<!-- BEGIN HIDE -->
<meta name="ROBOTS" content="noindex">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<!-- END HIDE -->
<noscript>
<!--
	Note that we are using variable substitution to 
	identify the refresh target.
-->
<meta http-equiv="refresh" content="2; URL=<%=sTarget%>">
</noscript>
<script language="JavaScript">
<!--

//	This is a strange looking assignment.  We are using
//	the ASP variable and variable substitution to provide
//	the JavaScript target URL.
//
var sTargetURL = "<%=sTarget%>";

function doRedirect()
{
	setTimeout( "window.location.href = sTargetURL", 2*1000 );
}

//-->
</script>

<script language="JavaScript1.1">
<!--
function doRedirect()
{
	window.location.replace( sTargetURL );
}

doRedirect();

//-->
</script>

</head>

<body onload="doRedirect()">

<p>Loading <a href="<%=sTarget%>">redirection target</a></p>
<p>The redirection target page should load in a couple of seconds.<br>
If it doesn't please select the link above.</p>

</body>

</html>
