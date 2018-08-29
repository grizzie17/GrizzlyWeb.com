<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.lycos.com/"
sURL = "http://www.lycos.com/cgi-bin/pursuit?query=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
