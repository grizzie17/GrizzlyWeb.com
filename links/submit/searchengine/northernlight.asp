<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.northernlight.com/"
sURL = "http://www.northernlight.com/nlquery.fcg?cb=0&qr=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
