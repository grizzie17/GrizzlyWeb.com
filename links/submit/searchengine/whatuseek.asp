<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://www.whatuseek.com/"
sURL = "http://chubba.whatUseek.com/cgi-bin/zoom.go?group=1&B1=Search&source=engine&arg=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
