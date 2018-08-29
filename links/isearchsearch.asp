<%
OPTION EXPLICIT


DIM	sText
DIM	sType	' any, all, phrase
DIM	sEngine
DIM	i

i = Request.Form("SearchEngine").Count
IF 0 < i THEN
	sText = TRIM(Request.Form("SearchText"))
	IF 0 < LEN(sText) THEN
		sEngine = Request.Form("SearchEngine")
		sType = Request.Form("SearchType")
	ELSE
		sEngine = ""
		sType = ""
	END IF
ELSE
	sText = ""
	sEngine = ""
	sType = ""
END IF

PUBLIC	aTempSplit

FUNCTION all_plus( s )
	DIM sTemp
	DIM i
	
	sTemp = ""
	aTempSplit = SPLIT(s," ",-1,vbTextCompare)
	FOR i = LBOUND(aTempSplit) TO UBOUND(aTempSplit)
		sTemp = sTemp & " +" & aTempSplit(i)
	NEXT 'i
	all_plus = TRIM( sTemp )
END FUNCTION

FUNCTION any_plus( s )
	any_plus = TRIM( s )
END FUNCTION

FUNCTION phrase_plus( s )
	DIM	sQuote
	sQuote = "\"""
	phrase_plus = sQuote & TRIM( s ) & sQuote
END FUNCTION

FUNCTION text_plus( s )
	DIM	sTemp
	SELECT CASE sType
	CASE "any"
		text_plus = any_plus( s )
	CASE "all"
		text_plus = all_plus( s )
	CASE "phrase"
		text_plus = phrase_plus( s )
	CASE ELSE
		text_plus = any_plus( s )
	END SELECT
END FUNCTION

'''''''''''''

FUNCTION all_and( s )
	DIM sTemp
	DIM i
	
	sTemp = ""
	aTempSplit = SPLIT(s," ",-1,vbTextCompare)
	sTemp = aTempSplit(0)
	FOR i = 1 TO UBOUND(aTempSplit)
		sTemp = sTemp & " AND " & aTempSplit(i)
	NEXT 'i
	all_and = TRIM( sTemp )
END FUNCTION

FUNCTION any_and( s )
	DIM sTemp
	DIM i
	
	sTemp = ""
	aTempSplit = SPLIT(s," ",-1,vbTextCompare)
	sTemp = aTempSplit(0)
	FOR i = 1 TO UBOUND(aTempSplit)
		sTemp = sTemp & " OR " & aTempSplit(i)
	NEXT 'i
	any_and = TRIM( sTemp )
END FUNCTION

FUNCTION phrase_and( s )
	DIM	sQuote
	sQuote = "\"""
	phrase_and = sQuote & TRIM( s ) & sQuote
END FUNCTION

FUNCTION text_and( s )
	DIM	sTemp
	SELECT CASE sType
	CASE "any"
		text_and = any_and( s )
	CASE "all"
		text_and = all_and( s )
	CASE "phrase"
		text_and = phrase_and( s )
	CASE ELSE
		text_and = s
	END SELECT
END FUNCTION

FUNCTION text_google( s )
	DIM	sTemp
	SELECT CASE sType
	CASE "any"
		text_google = s
	CASE "all"
		text_google = s
	CASE "phrase"
		text_google = phrase_and( s )
	CASE ELSE
		text_google = s
	END SELECT
END FUNCTION

%>
<html>

<head>
<title>Search Engine Load</title>
<meta name="robots" content"noindex">
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<base target="main">
<%IF 0 < LEN(sEngine) THEN%>
<style type="text/css">
<!--
body         { background-color: #990000; color: #FFFFFF }
p            { background-color: #990000; color: #FFFFFF }
-->
</style>
<%END IF%>
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
<%
	IF 0 < LEN(sEngine) THEN
%>
	setTimeout( "reLoad()", 5*1000 );
	if ( document.search )
		document.search.submit();
<%
	END IF
%>
}

function reLoad()
{
	replaceWindowURL( window, "isearchsearch.asp" );
}
//-->
</script>
</head>

<body bgcolor="#CCCCCC" topmargin="0" leftmargin="10" marginheight="0" marginwidth="0"
onload="doLoad()">

<%
IF 0 < LEN(sEngine) THEN
%>

<p align="center"><font face="Arial" size="1"><b>Please Wait -- Search is loading...</b></font></p>

<%
	SELECT CASE LCASE(sEngine)
%>
<%
	CASE "about"
%>
<form method="GET" action="http://search.about.com/scripts/query70.asp" name="search">
  <input type="hidden" name="terms" value="<%=sText%>"><input type="hidden" name="Action"
  value="search"><input type="hidden" name="trail" value><input type="hidden" name="Site"
  value="home"><input type="hidden" name="SUName" value="home"><input type="hidden" name="COB"
  value="home"><input type="hidden" name="TopNode" value="/">
</form>

<%
	CASE "altavista"
%>
<form action="http://altavista.com/cgi-bin/query" name="search" target="main">
  <input type="hidden" name="pg" value="q"><input type="hidden" name="kl" value="XX"><input
  type="hidden" name="stype" value="stext"><input type="hidden" name="q" value=""><input
  type="hidden" name="search">
</form>
<script language="JavaScript">
	document.search.q.value = "<%=text_plus(sText)%>";
</script>

<%
	CASE "directhit"
%>
<form action="http://search.directhit.com/fcgi-bin/TopTenDemo.fcg" name="search">
  <input type="hidden" name="cmd" value="demo_qry"><input type="hidden" name="oose" value="1"><input
  type="text" name="qry" size="33" value="<%=sText%>"> <input type="hidden" value="Search">
</form>

<%
	CASE "dmoz"
%>
<form method="get" action="http://search.dmoz.org/cgi-bin/search" name="search">
  <input type="hidden" name="search" value=""><input type="hidden" value="Search">
</form>
<script language="JavaScript">
	document.search.search.value = "<%=text_and(sText)%>";
</script>

<%
	CASE "excite"
%>
<form method="get"
action="http://www.excite.com/r/co=me_srch_ex;http://search.excite.com/search.gw" name="search">
  <input type="hidden" name="search" value=""><input type="hidden" name="Submit"
  value="Search">
</form>
<script language="JavaScript">
	document.search.search.value = "<%=text_plus(sText)%>";
</script>

<%
	CASE "go2net"
%>
<form name="search" action="http://search.go2net.com/crawler" method="get">
  <select name="rpp">
    <option value="10">10
    <option value="20" selected>20
    <option value="30">30
  </select> <input type="text" name="general" value="<%=sText%>" size="30"> <input
  value="Search" type="submit">
  <%
  SELECT CASE sType
  CASE "any"
		%><input type="radio" name="method" value="1" checked>any<%
  CASE "all"
		%><input type="radio" name="method" value="0" checked>all <%
  CASE "phrase"
		%><input type="radio" name="method" value="2" checked>phrase<%
  END SELECT
  %>
  <select name="target">
    <option value selected>The Web
    <option value="dejanews">Newsgroups
  </select> <select name="hpe">
    <option value="10" selected>10</option>
    <option value="20">20</option>
    <option value="30">30</option>
  </select> <input type="hidden" name="region" value="0"> <input type="hidden" name="timeout"
  value="0"> <input type="hidden" name="sort" value="0">
</form>


<%
	CASE "google"
%>
<form name="search" method="GET" action="http://www.google.com/search">
  <input type="hidden" name="q" value=""><input type="hidden" value="Google Search">
</form>
<script language="JavaScript">
	document.search.q.value = "<%=text_google(sText)%>";
</script>

<%
	CASE "goto"
%>
<form method="get" action="http://www.goto.com/d/search/;$sessionid$2US2VTIAAGZ2LQFIEE3QPUQ"
name="search">
  <input type="hidden" name="type" value="home"><input type="text" name="Keywords"
  value="<%=sText%>" size="20"> <input type="hidden" name="Find It!">
</form>

<%
	CASE "hotbot"
%>
<form action="http://www.search.hotbot.com/" name="search">
  <input type="hidden" name="MT" value="<%=sText%>"><input type="hidden" name="Search">
  <%
		SELECT CASE sType
		CASE "all"
			%><input type="hidden" name="SM" value="MC"><%
		CASE "any"
			%><input type="hidden" name="SM" value="SC"><%
		CASE "phrase"
			%><input type="hidden" name="SM" value="phrase"><%
		END SELECT
  %>
  <input type="hidden" name="DV" value="0"><input
  type="hidden" name="LG" value="any"><input type="hidden" name="FVI" value="1" onclick="0"><input
  type="hidden" name="FMP" value="1" onclick="0"><input type="hidden" name="FVV" value="1"
  onclick="0"><input type="checkbox" name="FJS" value="1" onclick="0"> <input type="hidden"
  name="DC" value="10"> <input type="hidden" name="DE" value="2"> <input type="hidden" name="BT"
  value="H">
</form>

<%
	CASE "infoseek"
%>
<form action="http://infoseek.go.com/Titles" method="get" name="search">
  <input type="hidden" name="qt" value=""><input type="hidden" name="col" value="WW"><input
  type="hidden" name="sv" value="IS"><input type="hidden" name="lk" value="noframes"><input
  type="hidden" name="svx" value="home_searchbox"><input type="hidden" value="Find">
</form>
<script language="JavaScript">
	document.search.qt.value = "<%=text_plus(sText)%>";
</script>

<%
	CASE "looksmart"
%>
<form action="http://www.looksmart.com/r_search" name="search">
  <input type="hidden" name="look" value><input type="hidden" name="search" value><input
  type="hidden" name="key" size="20" value="<%=sText%>"><input type="hidden" value="search">
</form>

<%
	CASE "lycos"
%>
<form action="http://www.lycos.com/cgi-bin/pursuit" method="GET" name="search">
  <input type="HIDDEN" name="cat" value="dir"><input type="text" name="query" value="<%=sText%>"
  size="20">
</form>

<%
	CASE "northernlight"
%>
<form action="http://www.northernlight.com/nlquery.fcg" method="get" name="search">
  <input type="hidden" value name="si"><input type="hidden" value="0" name="cb"><input
  type="text" size="38" name="qr" value=""> <input name="search" type="hidden">
</form>
<script language="JavaScript">
	document.search.qr.value = "<%=text_and(sText)%>";
</script>


<%
	CASE "realnames"
%>
<form action="http://navigation.us.realnames.com/resolver.dll" id="form1" name="search">
  <input type="hidden" name="realname" value="<%=sText%>"><input type="hidden" value="submit">
</form>

<%
	CASE "yahoo"
%>
<form action="http://search.yahoo.com/bin/search" name="search">
  <input type="hidden" name="p" value=""><input type="hidden" value="Search">
</form>
<script language="JavaScript">
	document.search.p.value = "<%=text_plus(sText)%>";
</script>


<%
	END SELECT
%>

<%
ELSE
%>

<%
END IF
%>

</body>

</html>
