<%
OPTION EXPLICIT

DIM	sEngine
DIM	sQuery
DIM	sName
DIM	sURL

sEngine = Request("e")
sQuery = Server.URLEncode(Request("q"))
sName = sEngine & ".asp"
sURL = sEngine & ".asp?q=" & sQuery


DIM	sServer
DIM	n
sServer = Request.ServerVariables("SERVER_SOFTWARE")
IF 0 < LEN(sServer) THEN
	n = INSTR(1,sServer,"/",vbTextCompare)
	sServer = MID(sServer,n+1)
ELSE
	sServer = "4.0"
END IF
IF "5.0" <= sServer THEN
	Server.Transfer sName
ELSE
	IF 0 = LEN(sQuery) THEN
		sURL = sName
	END IF
	Response.Redirect sURL
END IF

%>
<!--#include file="redirect_include.asp"-->
