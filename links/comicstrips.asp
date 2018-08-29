<%

OPTION EXPLICIT


SUB gregorianFromJDate( d, m, y, jd )

	DIM	mm, yy
	DIM	l, n

	l = jd + 68569
	n = ( 4 * l ) \ 146097
	l = l - ((146097 * n + 3) \ 4)
	yy = (4000 * (l+1)) \ 1461001
	l = l - (((1461 * yy) \ 4) - 31)
	mm = (80 * l) \ 2447

	d = l - (( 2447 * mm ) \ 80)
	l = mm \ 11
	m = mm + ( 2 - 12 * l )

	y = yy + ( 100 * ( n - 49 ) + l )

END SUB



FUNCTION jdateFromGregorian( d, m, y )

	DIM	jmon
	DIM	jdate
	DIM	dd, mm, yy

	dd = d
	mm = m
	yy = y

	IF dd < 0 THEN
		dd = dd + 1
		mm = mm + 1
		IF 12 < mm THEN
			mm = mm - 12
			yy = yy + 1
		END IF
	END IF

	jmon = INT((mm - 14) \ 12)

	jdate = dd - 32075 + INT((1461 * (yy + 4800 + jmon)) \ 4) + INT((367 * (mm - 2 - jmon * 12)) \ 12) - INT((3 * INT((yy + 4900 + jmon) \ 100)) \ 4)
	jdateFromGregorian = jdate

END FUNCTION


' 1=sunday
FUNCTION weekdayFromJDate( jd )

	weekdayFromJDate = (jd - 6) MOD 7 + 1

END FUNCTION


%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content="noindex">
</head>

<body>

<%
	DIM	tNow
	DIM	nDate
	DIM	nMonth
	DIM	nYear
	DIM	nJulianNow
	DIM	nWeekday
	DIM	dd1, mm1, yyyy1, yy1
	DIM	dd2, mm2, yyyy2, yy2
	DIM	zd1, zd2
	DIM	zm1, zm2
	
	tNow = NOW
	nDate = DAY(tNow)
	nMonth = MONTH(tNow)
	nYear = YEAR(tNow)
	
	nJulianNow = jdateFromGregorian( nDate, nMonth, nYear )
	nWeekday = weekdayFromJDate( nJulianNow )
	CALL gregorianFromJDate( dd1, mm1, yyyy1, nJulianNow-7 )
	CALL gregorianFromJDate( dd2, mm2, yyyy2, nJulianNow-14 )
	
	IF dd1 < 10 THEN
		zd1 = "0" & dd1
	ELSE
		zd1 = "" & dd1
	END IF
	IF dd2 < 10 THEN
		zd2 = "0" & dd2
	ELSE
		zd2 = "" & dd2
	END IF
	IF mm1 < 10 THEN
		zm1 = "0" & mm1
	ELSE
		zm1 = "" & mm1
	END IF
	IF mm2 < 10 THEN
		zm2 = "0" & mm2
	ELSE
		zm2 = "" & mm2
	END IF
	
	yy1 = yyyy1 MOD 100
	yy2 = yyyy2 MOD 100

%>
<!-- http://www.creators.com/images/2/20000920.gif -->
<img src="http://www.ctoons.com/studio/bc/images/00<%=zm1 & zd1%>.gif"><br>
<img
src="http://www.unitedmedia.com/comics/dilbert/archive/images/dilbert200270640<%=zm1&zd1%>.gif"><br>
<!-- http://www.garfield.com/comics/strips/ga000913.gif -->
 <img src="http://www.garfield.com/comics/strips/ga00<%=zm2&zd2%>.gif"><br>
<!-- http://www.unitedmedia.com/comics/grizzwells/archive/images/grizzwells2000202980921.gif -->
 <img
src="http://www.unitedmedia.com/comics/grizzwells/archive/images/grizzwells200270640<%=zm1&zd1%>.gif"><br>
<!-- http://www.unitedmedia.com/comics/marmaduke/archive/images/marmaduke2002706400920.gif -->
 <img
src="http://www.unitedmedia.com/comics/marmaduke/archive/images/marmaduke200270640<%=zm1&zd1%>.gif"><br>
<!--img
src="http://www.unitedmedia.com/comics/peanuts/archive/images/peanuts1945646<%=yy1&zm1&zd1%>.gif"><br-->
 <img src="http://www.ctoons.com/studio/id/images/00<%=zm1 & zd1%>.gif"><br>

</body>

</html>
