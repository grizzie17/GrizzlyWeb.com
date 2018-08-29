<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.dogpile.com/"
sURL = "http://ms3.dogpile.com/search?q=" & sQuery & "&fs=web&ss=stop&to=twenty"
%>
<!--#include file="redirect_include.asp"-->
