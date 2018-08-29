<%@ Language=VBScript %>
<%
OPTION EXPLICIT


DIM	g_oFSO
SET g_oFSO = Server.CreateObject("Scripting.FileSystemObject")

%>
<!--#include file="scripts/remind.asp"-->
<!--#include file="scripts/remind_files.asp"-->
<!--#include file="scripts/remind_utils.asp"-->
<!--#include file="scripts/sortutil.asp"-->
<%




%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>Bear Consulting Group</title>
<meta name="keywords" content="">
<meta name="navigate" content="tab,home">
<meta name="navtitle" content="Home">
<meta name="sortname" content="zzzzzzzzdefault">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta content="Microsoft FrontPage 6.0" name="GENERATOR">
<link rel="stylesheet" href="0style.css" type="text/css">
<link rel="stylesheet" href="<%=remindCSS()%>" type="text/css">
<style type="text/css">
<!--
th a:link
{
	color: #000066;
}

th a:visited
{
	color: #330033;
}

th a:hover
{
	color: #FF0000;
}

.galleryheader
{
	text-align: left;
	/*background-color: #EEEEEE;
	position: relative;
	filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=1, StartColorStr='#FFFFDD99', EndColorStr='#00FFDD99');*/
}

.announcementstitle a:link
{
	color: #000066;
}

.announcementstitle a:visited
{
	color: #330033;
}

.announcementstitle a:hover
{
	color: #FF0000;
}



.announcementstitle
{
	padding: 4px;
	/*border: 1px solid #FFCC00;*/
	background-color: #FFEEAA;
	text-align: left;
	text-decoration: none;
	font-weight: bold;
	font-family: sans-serif;
	background-image: url(images/header_bkg.jpg);
}


.SafetyTips a, .SafetyTips a:link, .SafetyTips a:visited
{
	color: #006699;
}

.SafetyTips a:hover
{
	color: #CC0000;
}

.SafetyTips th
{
	background-color: #99FF99;
	background-image: url(images/header_bkg_safety.jpg);
	text-align: left;
}

.SafetyTips td
{
	background-color: #CCFFCC;
}

.SafetyTips hr.htmlformat
{
	color: #99CC99;
}

.SafetyTips h4.htmlformat
{
	color: #006600;
	border-bottom: 2px solid #99CC99;
}

ul.htmlformat
{
	margin-left: 1em;
}



-->
</style>

<script language="JavaScript">
<!--
var sThisURL = unescape(window.location.pathname);

function doFramesBuster()
{
	if ( top != self )
	{
		if ( top.location.replace )
			top.location.replace( sThisURL );
		else
			setTimeout( "top.location.href = sThisURL", 1.5*1000 );
	}
}

if ( "MSIE" == navigator.appName  ||  -1 < (navigator.appName).indexOf("Microsoft") )
	doFramesBuster();





//-->
</script>
</head>

<body bgcolor="#FFFFFF" onload="doFramesBuster()">
<!--#include file="scripts\page_begin.asp"-->
<!--#include file="scripts\include_navigation.asp"-->
<%
'outputPad2
%>






<hr>
<!--#include file="scripts\page_end.asp"-->

<%
DIM	oFile
SET oFile = g_oFSO.GetFile( Request.ServerVariables("PATH_TRANSLATED") )
DIM	dLastMod
dLastMod = oFile.DateLastModified
SET oFile = Nothing
%>
		<p align="center"><font size="1">Last Modified <%=dLastMod%> &nbsp; &copy; 1985 .. <%=DatePart("yyyy",NOW)%> Bear Consulting Group All rights reserved</font>
		</p>


<!--webbot bot="Include" u-include="_private/byline.htm" tag="BODY" startspan -->

<script language="JavaScript">
<!--

function makeByLine()
{
	document.write( '<' + 'script language="JavaScript" src="http://' );
	if ( "localhost" == location.hostname )
	{
		document.writeln( 'localhost/GrizzlyWeb' );
	}
	else
	{
		document.writeln( 'GrizzlyWeb.com' );
	}
	document.writeln( '/company/designby.js"></' + 'script>' );
}
makeByLine()

//-->
</script>
<!--script language="JavaScript" src="http://GrizzlyWeb.com/company/designby.js"></script-->

<!--webbot bot="Include" i-checksum="30698" endspan -->

</body>

</html>
<%
SET g_oFSO = Nothing
%>