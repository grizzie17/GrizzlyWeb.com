<%
'---------------------------------------------------------------------
'            Copyright 1986 .. 2006 Bear Consulting Group
'                          All Rights Reserved
'
'    This software-file/document, in whole or in part, including	
'    the structures and the procedures described herein, may not	
'    be provided or otherwise made available without prior written
'    authorization.  In case of authorized or unauthorized
'    publication or duplication, copyright is claimed.
'---------------------------------------------------------------------

OPTION EXPLICIT


DIM	sZIP
DIM	sProv
DIM	sTZone

sZIP = REQUEST("zip")
sProv = REQUEST("prov")
sTZone = REQUEST("tzone")


Response.Redirect "http://tv.msn.com/tv/signup/" _
		&	"?tvPostal=" & sZIP & "&timeZone=" & sTZone _
		&	"&observesDST=true&provType=Cable&redirect=&nowStep=three&force=true&provId=" & sProv & "X"

'http://www.tvguide.com/listings/setup/localizeComplete.aspx?ServiceId=63127&RedirectUrl=%7e%2flistings%2fdefault.aspx&zip=35806



%>