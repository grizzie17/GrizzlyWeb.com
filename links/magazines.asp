<%
	Response.Redirect "magazine.asp"
%>
<html>

<head>
<title>Magazine redirection page</title>
<meta name="robots" content="noindex">
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script language="JavaScript">
<!--

function doLoad()
{
	setTimeout( "loadIndex()", 250 );
}

function loadIndex()
{
	replaceWindowURL( window, "magazine.asp" );
}

//-->
</script>
<noscript>

<meta http-equiv="refresh" content="15; URL=magazine.asp">
</noscript>
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
	replaceWindowURL( window, "magazine.asp" );
//-->
</script>
</head>

<body onload="doLoad()">

<p><a href="magazine.asp">Magazines Page</a></p>

</body>

</html>
