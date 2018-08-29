<%
OPTION EXPLICIT

DIM	sQuery
DIM	sName
DIM	sURL

sQuery = Server.URLEncode(Request("q"))
sName = "http://freefind.com/servlet/freefind?id=8694612"
sURL = "http://freefind.com/servlet/freefind?id=8694612&pageid=r&query=" & sQuery & "&mode=Find+pages+matching+ALL+words"

%>
<!--#include file="redirect_include.asp"-->
