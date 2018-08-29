<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.alltheweb.com/"
sURL = "http://www.alltheweb.com/cgi-bin/search?type=all&query=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
