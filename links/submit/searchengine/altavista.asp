<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.altavista.com/"
sURL = "http://www.altavista.com/cgi-bin/query?q=" & sQuery & "&kl=XX&pg=q&Translate=on"
%>
<!--#include file="redirect_include.asp"-->
