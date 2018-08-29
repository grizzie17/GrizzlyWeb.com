<%
DIM	g_sSiteName
g_sSiteName = "Grizzly Web Links"


DIM g_sCopyright
g_sCopyright = "&copy; 1986 .. " & DatePart("yyyy",NOW) & "&nbsp;  Bear Consulting Group&nbsp; All rights reserved"


DIM g_sCookiePrefix
g_sCookiePrefix = "GWebLink"


DIM	g_sDomain
g_sDomain = "GrizzlyWeb.com"


DIM	g_sMailServer
g_sMailServer = "mail.GrizzlyWeb.com"




DIM g_sAnnonUser
DIM g_sAnnonPW

g_sAnnonUser = "Notifications@" & g_sDomain
g_sAnnonPW = "bear1701"

DIM g_bMailPickup
g_bMailPickup = TRUE



DIM g_sCalendarHiddenList
g_sCalendarHiddenList = "" _
	&	"Email" & vbTAB & "email,email2" & vbTAB & "Email Events" & vbLF _
	&	"Newsletter" & vbTAB & "key,newsletter,c-activity,rally,district,safety,entertainment,funday,charity" & vbTAB & "Newsletter Events"








DIM g_nTimeZoneOffset


FUNCTION config_dateFromWeekNumber( nWeek, nWDay, nMonth, nYear )
	DIM	dFirst
	DIM	nFirstDay
	DIM	x
	dFirst = DATEVALUE(nMonth & "/1/" & nYear )
	nFirstDay = WEEKDAY(dFirst)
	x = 1 + ( nWDay - nFirstDay + 7 ) MOD 7
	x = x + (7 * (nWeek - 1))
	config_dateFromWeekNumber = DATEVALUE( nMonth & "/" & x & "/" & nYear )
	'Response.Write "dateFromWeekNumber = " & config_dateFromWeekNumber & "<br>"
END FUNCTION

SUB config_adjustDaylightSavingsTime()
	DIM	nMonth
	DIM	nYear
	nMonth = MONTH(NOW)
	nYear = YEAR(NOW)
	IF 3 < nMonth  AND  nMonth < 11 THEN
		g_nTimeZoneOffset = g_nTimeZoneOffset + 1	' Daylight Savings Time
	ELSEIF 3 = nMonth THEN
		'second sunday
		IF 0 < DATEDIFF("h",config_dateFromWeekNumber(2, 1, 3, nYear), NOW) THEN
			g_nTimeZoneOffset = g_nTimeZoneOffset + 1	' Daylight Savings Time
		END IF
	ELSEIF 11 = nMonth THEN
		'first sunday
		IF 0 > DATEDIFF("h",config_dateFromWeekNumber(1, 1, 11, nYear), NOW) THEN
			g_nTimeZoneOffset = g_nTimeZoneOffset + 1	' Daylight Savings Time
		END IF
	END IF
	
END SUB


IF LCASE(Request.ServerVariables("SERVER_NAME")) = "localhost" THEN
	g_nTimeZoneOffset = 0
ELSE
	g_nTimeZoneOffset = -6
	g_nTimeZoneOffset = 0
	'config_adjustDaylightSavingsTime
END IF



%>