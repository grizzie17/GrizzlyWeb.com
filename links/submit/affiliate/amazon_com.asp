<%
DIM	sURL
DIM	sName
DIM	sPage

sPage = Request.QueryString("page")

IF 0 < LEN(sPage) THEN
	sURL = "http://www.amazon.com/exec/obidos/redirect?path=" & sPage
	sURL = "http://www.amazon.com/exec/obidos/redirect?tag=grizzlyweblin-20&path=" & sPage
ELSE
	sURL = "http://www.amazon.com/exec/obidos/redirect-home?"
	sURL = "http://www.amazon.com/exec/obidos/redirect-home?tag=grizzlyweblin-20"
END IF
'	sURL = "http://www.amazon.com/"
sName = "www.amazon.com"

%><!--#include file="_private\redirect_include.asp"-->