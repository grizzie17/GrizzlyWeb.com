<%
OPTION EXPLICIT
%>
<!--#include file="tab_tools.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<style type="text/css">

div.TabGroupVert
{
	background-color: #999999;
	text-align: right;
	margin: 0;
	padding: 4px;
	padding-right: 0;
}

.TabGroupVert ul
{
	list-style: none;
	margin: 0;
	padding: 0;
}

.TabGroupVert ul li
{
	margin-top: 2px;
	margin-bottom: 2px;
}

.TabGroupVert ul li a
{
	display: block;
	width: 97%;
	color: #000066;
	background: url("../images/pie_tl_gray.gif") left top no-repeat; 
	background-color: #CCCCCC;
	margin: 0;
	padding: 0;
	font-weight: bold;
	text-decoration: none; 
	font-family:	Arial,Helvetica,Verdana,sans-serif;
}

.TabGroupVert a:link, .TabGroupVert a:visited
{
	color: #000066;
}

.TabGroupVert a:hover
{
	color: #000000;
	background-color: #FFCC66;
}

.TabGroupVert ul li a span
{
	display: block;
	background: url("../images/pie_bl_gray.gif") left bottom no-repeat; 
	padding: 0;
	padding-right: 4px;
	margin: 0;
}

/*
.TabGroupVert ul li a
{
	display: inline-block;
	white-space: nowrap;
	width: 1px;
}
*/



.TabGroupVert .SelectedTab a
{
	color:	#000000;
	background-color: #FFFFFF;
	font-weight: bold;
	font-family:	Arial,Helvetica,Verdana,sans-serif;
	text-decoration: none;
}


.TabGroupVert .SelectedTab a, .TabGroupVert .SelectedTab a:visited, .TabGroupVert .SelectedTab a:active
{
	color:		#000000;
}





</style>
</head>

<body>


<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#999999">
	<tr>
		<td bgcolor="#FFFFFF" align="left">


<%

DIM	sTab
sTab = Request.QueryString("tab")

DIM	oTabGen
DIM	oTabData
DIM	oTabFormat

SET oTabGen = NEW CTabGenerate
SET oTabData = NEW CTabDataDummy
SET oTabFormat = NEW CTabFormatDummy

oTabData.URL = "tab_tools_test.asp?tab="

SET oTabGen.TabData = oTabData
SET oTabGen.TabFormat = oTabFormat
oTabGen.Current = sTab
oTabGen.makeTabs


SET oTabFormat = Nothing
SET oTabData = Nothing
SET oTabGen = Nothing


%>
<table border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
	<tr>
		<td bgcolor="#FFFFFF">This is some 
		<p>sample text<p>another line<p>yet another line<p>and even another line<p>
		maybe another one<p>yet another line<p>and even another line<p>maybe 
		another one</td>
	</tr>
</table>
		</td>
	</tr>
</table>

</body>

</html>