<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://dmoz.org/"
sURL = "http://search.dmoz.org/cgi-bin/search?search=" & sQuery & "&fs=web&ss=stop&to=twenty"
%>
<!--#include file="redirect_include.asp"-->
