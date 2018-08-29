<%

DIM	g_sSiteName
g_sSiteName = "Personal"


DIM g_sCopyright
g_sCopyright = "&copy; 1984 .. " & DatePart("yyyy",NOW) & "&nbsp;  Bear Consulting Group&nbsp; All rights reserved"

DIM g_sCookiePrefix
g_sCookiePrefix = "Personal"



dim g_bCalendarPrefaceOption
g_bCalendarPrefaceOption = FALSE

DIM	g_bCalendarRideDescriptionOption
g_bCalendarRideDescriptionOption = FALSE



DIM g_sCalendarList
g_sCalendarList = "" _
	&	"All" & vbTAB & "" & vbTAB & "All Events" & vbLF _
	&	"Medical" & vbTAB & "medical" & vbTAB & "Medical" & vbLF _
	&	"Family" & vbTAB & "family" & vbTAB & "Family" & vbLF _
	&	"Office" & vbTAB & "work" & vbTAB & "Office" & vbLF _
	&	"BCG Work" & vbTAb & "bearwork" & vbTAB & "BCG Work" & vbLF _
	&	"Vacation" & vbTAB & "vacation" & vbTAB & "Vacation" & vbLF _
	&	"Charity" & vbTAB & "charity" & vbTAB & "Charity Events / Rides" & vbLF _
	&	"Fun Days" & vbTAB & "funday" & vbTAB & "Fun Days" & vbLF _
	&	"Meetings" & vbTAB & "meeting" & vbTAB & "Meetings" & vbLF _
	&	"Chapter Meetings" & vbTAB & "b-gathering,b-meeting" & vbTAB & "Chapter Meetings" & vbLF _
	&	"Chapter Activities" & vbTAB & "b-activity" & vbTAB & "Chapter Activities" & vbLF _
	&	"Education" & vbTAB & "safety" & vbTAB & "Rider / Safety Education" & vbLF _
	&	"Rallies" & vbTAB & "rally" & vbTAB & "Rallies" & vbLF _
	&	"Rides" & vbTAB & "ride" & vbTAB & "Rides" & vbLF _
	&	"Trips" & vbTAB & "trip" & vbTAB & "Trips" & vbLF _
	&	"Motorcycle" & vbTAB & "motorcycle" & vbTAB & "Motorcycle" & vbLF _
	&	"External" & vbTAB & "external" & vbTAB & "External" & vbLF _
	&	"Birthdays" & vbTAB & "birthday" & vbTAB & "Birthdays"



DIM g_sCalendarHiddenList
g_sCalendarHiddenList = "" _
	&	"Email" & vbTAB & "email,email2" & vbTAB & "Email Events" & vbLF _
	&	"Newsletter" & vbTAB & "key,newsletter,c-activity,rally,district,safety,entertainment,funday,charity" & vbTAB & "Newsletter Events"


DIM g_nServerTimeZoneOffset
DIM g_nTimeZoneOffset

g_nServerTimeZoneOffset = 0
g_nTimeZoneOffset = -6


%>