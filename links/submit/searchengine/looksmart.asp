<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.looksmart.com/"
sURL = "http://www.looksmart.com/r_search?look=&key=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
