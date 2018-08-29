<%
DIM	sURL
DIM	sName
DIM	sPD

sPD = Request.QueryString("PD")
IF 0 < LEN(sPD) THEN
	sURL = "http://www.art.com/asp/sp.asp?PD=" & sPD & "&RFID=329904&FT=Y"
ELSE
	DIM	sID
	sID = Request.QueryString("ID")
	IF 0 < LEN(sID) THEN
		sURL = "http://www.art.com/asp/display-asp/_/ID--" & sID & "/Photos.htm?RFID=329904"
	ELSE
		sURL = "http://www.art.com/asp/default.asp?RFID=329904&FT=Y"
	END IF
END IF

sName = "art.com"


%><!--#include file="_private\redirect_include.asp"-->