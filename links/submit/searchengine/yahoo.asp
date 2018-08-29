<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.yahoo.com/"
sURL = "http://search.yahoo.com/bin/search?p=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
