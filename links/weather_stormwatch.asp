<%
DIM	sURL
sURL = "weather_warnings.asp?" & Request.QueryString

Response.Redirect sURL
%>
<html>

<head>
<title>Weather Stormwatch redirection</title>
<!-- BEGIN HIDE -->
<meta name="ROBOTS" content="noindex">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<!-- END HIDE -->
<noscript>
<meta http-equiv="refresh" content="2; URL=<%=sURL%>">
</noscript>
<script language="JavaScript">
<!--
var sURL = "<%=sURL%>";

function doRedirect()
{
	setTimeout( "timedRedirect()", 2*1000 );
}

function timedRedirect()
{
	window.location.href = sURL;
}

//-->
</script>

<script language="JavaScript1.1">
<!--
function doRedirect()
{
	window.location.replace( sURL );
}

doRedirect();

//-->
</script>

</head>

<body onload="doRedirect()">

<p>Loading <a href="<%=sURL%>">redirection target</a></p>
<p>In approx. 2 seconds the redirection target page should load.<br>
If it doesn't please select the link above.</p>

</body>

</html>
