<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.mamma.com/"
sURL = "http://www.mamma.com/cgi-bin/parsearch2?lang=1&timeout=6&qtype=0&query=" & sQuery & "&summaries=on"
%>
<!--#include file="redirect_include.asp"-->
