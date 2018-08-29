<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.google.com/"
sURL = "http://www.google.com/search?q=" & sQuery & "&num=10&sa=Google+Search"
%>
<!--#include file="redirect_include.asp"-->
