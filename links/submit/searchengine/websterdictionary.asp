<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.m-w.com/"
sURL = "http://www.m-w.com/cgi-bin/dictionary?" & sQuery
%>
<!--#include file="redirect_include.asp"-->
