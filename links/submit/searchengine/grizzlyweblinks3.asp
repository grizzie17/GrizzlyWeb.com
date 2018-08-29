<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
'sName = "http://freefind.com/servlet/freefind?id=8694612"
'sURL = "http://freefind.com/servlet/freefind?id=8694612&pageid=r&query=" & sQuery & "&mode=Find+pages+matching+ALL+words"

sName = "http://siteLevel.whatUseek.com/searchbox.go?crid=34b2b9652305a57a"
sURL = "http://siteLevel.whatUseek.com/query.go?crid=34b2b9652305a57a&B1=Search&query=" & sQuery
%>
<!--#include file="redirect_include.asp"-->
