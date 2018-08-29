<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))

sName = "http://siteLevel.whatUseek.com/searchbox.go?crid=34b2b9652305a57a"
sURL = "http://siteLevel.whatUseek.com/query.go?crid=34b2b9652305a57a&slice_title=Grizzly+Webmaster&B1=Search&query=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
