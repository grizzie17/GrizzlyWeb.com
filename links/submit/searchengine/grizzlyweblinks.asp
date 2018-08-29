<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.google.com/"
sURL = "http://www.google.com/custom?q=" & sQuery & "&sa=Google+Search" _
	& "&cof=LW:600;L:http://grizzlyweb.com/images/grizzlyweb-search.jpg;LH:75;AH:center;AWFID:2101929cf4b3b0b6;" _
	& "&domains=grizzlyweb.com&sitesearch=grizzlyweb.com"

%>
<!--#include file="redirect_include.asp"-->
