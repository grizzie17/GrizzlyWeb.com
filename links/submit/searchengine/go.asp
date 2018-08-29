<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.go.com/"
sURL = "http://www.go.com/Split?pat=go&col=WW&qt=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
