<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.omniseek.com/"
sURL = "http://www.omniseek.com/search/search.html?category=www&t=" & sQuery  & "&mode=Omniseek"
%>
<!--#include file="redirect_include.asp"-->
