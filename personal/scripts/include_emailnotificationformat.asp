<%


DIM	g_emailnotify_processHtmlPicture
g_emailnotify_processHtmlPicture = "notify_f_processHtmlPicture"




FUNCTION notify_f_processHtmlPicture( oOut, sFilename )

	notify_f_processHtmlPicture = "" _
			&	"<img border=""0"" src=""" & virtualFromPhysicalPath(sFilename) & """>"

END FUNCTION

FUNCTION notifySMTP_f_processHtmlPicture( oOut, sFilename )

	DIM sPictID
	sPictID = oOut.AddInlineAttachment( sFilename )
	IF "" <> sPictID THEN
		notifySMTP_f_processHtmlPicture = "" _
				&	"<img border=""0"" src=""cid:" & sPictID & """>"
	ELSE
		notifySMTP_f_processHtmlPicture = ""
	END IF

END FUNCTION







FUNCTION formatPostDate( sDate )

	DIM	sD
	
	sD = MID(sDate,5,2) & "/" & MID(sDate,7,2) & "/" & MID(sDate,1,4)
	
	DIM	sSfx
	sSfx = "am"
	DIM	nH
	nH = CINT( MID(sDate,9,2) )
	IF nH < 1 THEN
		nH = 12
	ELSEIF 11 < nH THEN
		sSfx = "pm"
		IF 12 < nH THEN nH = nH - 12
	END IF
	
	sD = sD & " " & nH & ":" & MID(sDate,11,2) & ":" & MID(sDate,13,2) & " " & sSfx
	
	DIM	d
	d = CDATE( sD )
	formatPostDate = formatUTC( d )

END FUNCTION




FUNCTION formatUTC( d )

	DIM	s
	DIM	t
	
	'Tue, 27 Mar 2007 08:56:19 CST
	
	s = WEEKDAYNAME( WEEKDAY(d), TRUE )
	s = s & ", "
	s = s & DATEPART( "d", d )
	s = s & " "
	s = s & MONTHNAME( MONTH(d), TRUE )
	s = s & " "
	s = s & DATEPART( "yyyy", d )
	s = s & " "
	t = TRIM(LEFT(FORMATDATETIME( d, vbLongTime ), 8))
	s = s & t
	s = s & " UTC"
	
	formatUTC = s

END FUNCTION





DIM g_aWD
g_aWD = ARRAY( "su", "mo", "tu", "we", "th", "fr", "sa" )


FUNCTION lookupWD( s )

	lookupWD = -1
	DIM	i
	FOR i = LBOUND(g_aWD) TO UBOUND(g_aWD)
		IF s = g_aWD(i) THEN
			lookupWD = i + 1
			EXIT FOR
		END IF
	NEXT 'i

END FUNCTION

FUNCTION getTargetWD( aXD(), nDay )

	getTargetWD = aXD(UBOUND(aXD))
	DIM	i
	FOR i = UBOUND(aXD) to LBOUND(aXD) STEP -1
		IF nDay < aXD(i) THEN
			getTargetWD = aXD(i)
			EXIT FOR
		ELSEIF nDay = aXD(i) THEN
			IF i < UBOUND(aXD) THEN
				getTargetWD = aXD(i+1)
				EXIT FOR
			ELSE
				getTargetWD = aXD(LBOUND(aXD))
				EXIT FOR
			END IF
		END IF
	NEXT 'i

END FUNCTION


SUB getNotificationDateValues( nDay, d )

	DIM	aWD
	aWD = SPLIT( g_UE_sSchedule, "," )
	
	DIM aXD()
	REDIM aXD(UBOUND(aWD))
	
	DIM	i
	
	FOR i = LBOUND(aWD) TO UBOUND(aWD)
		aXD(i) = lookupWD( aWD(i) )
	NEXT 'i

	'DIM	d
	d = DATEADD("h", g_nServerTimeZoneOffset, NOW)
	
	'DIM	nDay
	DIM	nTargetDay
	nDay = WEEKDAY( d )
	nTargetDay = getTargetWD( aXD, nDay )
	
	nDay = (nTargetDay - nDay + 7) MOD 7

END SUB


FUNCTION findNearestNotificationDate()

	DIM	nDay, d
	getNotificationDateValues nDay, d

	findNearestNotificationDate = DATEADD( "d", nDay, d )

END FUNCTION


FUNCTION findNextNotificationDate()

	DIM	nDay, d
	getNotificationDateValues nDay, d
	IF 0 = nDay THEN nDay = 7
	
	findNextNotificationDate = DATEADD( "d", nDay, d )
		
END FUNCTION








FUNCTION processHealthWatch( oOut, dToday )

	processHealthWatch = ""
	
	DIM	sLastPost
	DIM	dOldDate
	dOldDate = DATEADD( "d", -g_UE_nDurationForum, DATEADD("h", g_nServerTimeZoneOffset, dToday))
	sLastPost = YEAR(dOldDate) & RIGHT("00" & MONTH(dOldDate),2) & RIGHT("00" & DAY(dOldDate), 2)

	DIM	sQuery
	DIM	oRS
	
	sQuery = "" _
		&	"SELECT " _
		&		"T_SUBJECT, " _
		&		"T_LAST_POST, " _
		&		"TOPIC_ID, " _
		&		"FORUM_FORUM.F_SUBJECT AS ForumSubject, " _
		&		"FORUM_TOPICS.FORUM_ID AS ForumID " _
		&	"FROM " _
		&		"FORUM_TOPICS " _
		&		"INNER JOIN FORUM_FORUM ON FORUM_FORUM.FORUM_ID = FORUM_TOPICS.FORUM_ID " _
		&	"WHERE " _
		&		"FORUM_TOPICS.FORUM_ID <> 1 " _
		&		"AND '" & sLastPost & "' < T_LAST_POST " _
		&	"ORDER BY " _
		&		"FORUM_FORUM.F_LAST_POST desc, " _
		&		"FORUM_FORUM.F_SUBJECT, " _
		&		"T_LAST_POST desc, " _
		&		"T_SUBJECT " _
		&	";"
	
	SET oRS = dbQueryRead( g_DC, sQuery )
	IF NOT oRS IS Nothing THEN
		IF 0 < oRS.RecordCount THEN
			DIM	oSubject
			DIM	oTopicID
			DIM	oForumID
			DIM	oForumSubject
			DIM	oLastPost
			SET oSubject = oRS.Fields("T_SUBJECT")
			SET oTopicID = oRS.Fields("TOPIC_ID")
			SET oLastPost = oRS.Fields("T_LAST_POST")
			SET oForumID = oRS.Fields("ForumID")
			SET oForumSubject = oRS.Fields("ForumSubject")

			processHealthWatch = "" _
					&	"<h2 class=""emailnotification"">Forum Updates</h2>" & vbCRLF
			
			DIM	nLastID
			nLastID = -1
			
			processHealthWatch = processHealthWatch & "<div class=""notifyForum"">" & vbCRLF
			processHealthWatch = processHealthWatch & "<ul>" & vbCRLF

			DO UNTIL oRS.EOF
				sLastPost = oLastPost.Value
				IF nLastID <> oForumID.Value THEN
					IF -1 <> nLastID THEN
						processHealthWatch = processHealthWatch & "</ul>" & vbCRLF
					END IF
					nLastID = oForumID.Value
					processHealthWatch = processHealthWatch _
						&	"<li>" & Server.HTMLEncode(oForumSubject.Value) & "</li>" & vbCRLF _
						&	"<ul>"
				END IF
				processHealthWatch = processHealthWatch & "" _
					&	"<li>" _
					&	"<a target=""_blank"" href=""forum/topic.asp?TOPIC_ID=" _
					&	oTopicID.Value & """>" _
					&	Server.HTMLEncode(oSubject.Value) _
					&	"</a><br>" _
					&	"<span style=""font-size:xx-small; font-family:sans-serif"">" _
					&	formatPostDate( sLastPost ) _
					&	"</span>" _
					&	"</li>"
				oRS.MoveNext
			LOOP
			processHealthWatch = processHealthWatch & "</ul>"
			processHealthWatch = processHealthWatch & "</ul>"
			processHealthWatch = processHealthWatch & "</div>" & vbCRLF
			SET oTopicID = Nothing
			SET oLastPost = Nothing
			SET oSubject = Nothing
		END IF
		oRS.Close
		SET oRS = Nothing
	END IF


END FUNCTION


FUNCTION processNotifyAnnouncements( oOut, dToday )

	processNotifyAnnouncements = ""



	DIM	dAnnouncementsFile
	DIM	dAnnouncementsModified
	DIM	dAMTemp
	DIM	aAnnouncements()
	DIM	nAnnouncements
	DIM	nLen
	
	g_sUseFileNameSuffix = ".htm"
	buildFileList "announcements", TRUE
	appendFileList 0, -21
	
	nAnnouncements = nFileCount
	REDIM aAnnouncements(UBOUND(aFileList))
	FOR nLen = 0 TO UBOUND(aFileList)
		aAnnouncements(nLen) = aFileList(nLen)
	NEXT 'nLen

	IF 0 < nAnnouncements THEN

		DIM	d
		d = DATEADD( "d", -g_UE_nDurationAnnounce, DATEADD("h", g_nServerTimeZoneOffset, dToday))
		
		DIM dTZ
		dTZ = DATEADD("h", g_nServerTimeZoneOffset, dToday )

		DIM	aFileSplit
		DIM	sPictID
		DIM	sJPGFile
		DIM	sJPGPath
		DIM	sEventDate
		
		DIM	sPicture
		DIM	sDesc
		
		FOR nLen = 0 TO nAnnouncements-1
			aFileSplit = SPLIT( aAnnouncements(nLen), vbTAB, -1, vbTextCompare )
			sEventDate = aFileSplit(kFI_EventDate)
			IF "" <> sEventDate THEN
				IF dTZ <= CDATE(sEventDate) THEN
					IF 7 < DATEDIFF( "d", dTZ, CDATE(sEventDate) ) THEN
						sEventDate = ""
					END IF
				ELSE
					sEventDate = ""
				END IF
			END IF
			dAMTemp = DATEADD("h", g_nServerTimeZoneOffset, CDATE( aFileSplit(kFI_DateLastModified) ))
			IF d <= dAMTemp  OR  "" <> sEventDate THEN
				sPicture = ""
				sDesc = ""
				sJPGFile = REPLACE( aFileSplit(kFI_Name), ".htm", ".jpg" )
				sJPGPath = Server.MapPath( "announcements/" & sJPGFile )
				IF NOT g_oFSO.FileExists( sJPGPath ) THEN
					sJPGFile = REPLACE( aFileSplit(kFI_Name), ".htm", ".gif" )
					sJPGPath = Server.MapPath( "announcements/" & sJPGFile )
					IF NOT g_oFSO.FileExists( sJPGPath ) THEN
						sJPGFile = REPLACE( aFileSplit(kFI_Name), ".htm", ".png" )
						sJPGPath = Server.MapPath( "announcements/" & sJPGFile )
						IF NOT g_oFSO.FileExists( sJPGPath ) THEN
							sJPGPath = ""
						END IF
					END IF
				END IF
				IF "" <> sJPGPath THEN
					sPictID = EVAL( g_emailnotify_processHtmlPicture & "( oOut, sJpgPath )" )
					IF "" <> sPictID THEN
						sPicture = "" _
							&	"<div>" & vbCRLF _
							&	"<a href=""announcements.asp?page=" & aFileSplit(kFI_Name) & """>" _
							&	sPictID & vbCRLF _
							&	"</a>" & vbCRLF _
							&	"</div>" & vbCRLF
					END IF
				END IF
				IF 0 < LEN(aFileSplit(kFI_Description)) THEN
					sDesc = "" _
						&	"<div align=""left"">" & vbCRLF _
						&	Server.HTMLEncode(aFileSplit(kFI_Description)) _
						&	"&nbsp;&nbsp; <a href=""announcements.asp?page=" & aFileSplit(kFI_Name) & """>" _
						&	"More..." _
						&	"</a>" _
						&	"</div>" & vbCRLF
				END IF

				processNotifyAnnouncements = processNotifyAnnouncements _
					&	"<div class=""announcementstitle"">" & vbCRLF _
					&	"<a href=""announcements.asp?page=" & aFileSplit(kFI_Name) & """>" _
					&	Server.HTMLEncode(aFileSplit(kFI_Title)) _
					&	"</a>" & vbCRLF _
					&	"</div>" & vbCRLF _
					&	sPicture _
					&	sDesc _
					&	"<div style=""text-align: left; color: #999999; font-family: sans-serif; font-size: xx-small;"">" _
					&	"Updated: " & Server.HTMLEncode(DATEADD("h", g_nServerTimeZoneOffset, CDATE(aFileSplit(kFI_DateLastModified)))) _
					&	"</div><br>" & vbCRLF
					
			END IF
		NEXT 'i
		
		IF "" <> processNotifyAnnouncements THEN
			processNotifyAnnouncements = "" _
				&	"<hr>" & vbCRLF _
				&	"<h2 class=""emailnotification"">New or Updated Announcements/Articles</h2>" & vbCRLF _
				&	processNotifyAnnouncements & vbCRLF _
				&	"<hr>" & vbCRLF
		END IF
	
	END IF


END FUNCTION

FUNCTION notify_getEvents( oOut, dToday )

	notify_getEvents = ""

	'SET g_oRemindSMTP = oSMTP

	DIM	nDateBegin
	DIM	nDateEnd
	DIM	oCalendar

	nDateBegin = jdateFromVBDate( dToday )
	nDateEnd = nDateBegin + g_UE_nDurationCalendar
	
	'gHtmlOption_encodeEmailAddresses = FALSE
	'g_htmlFormat_pictureFunc = "remindEmailPicture"

	SET oCalendar = loadRemindFiles( nDateBegin, nDateEnd, "email,email2", "holiday,usa,none", FALSE, NOW )
	IF NOT Nothing IS oCalendar THEN
	
		DIM	oXML
		SET oXML = oCalendar.xmldom
		DIM	sTomorrow
		DIM	oEvents
		sTomorrow = "//event[category=""email"" or category=""email2""]"
	
		'IF TRUE THEN
		SET oEvents = oXML.selectSingleNode(sTomorrow)
		IF NOT oEvents IS Nothing THEN
		
			'Load the XSL
			DIM	oXSL
			SET oXSL = remindLoadXmlFile( Server.MapPath("scripts/remind.xslt") )
			
			notify_getEvents = oXML.transformNode(oXSL)
			SET oXSL = Nothing
			SET oEvents = Nothing
		END IF
		SET oXML = Nothing
	END IF
	SET oCalendar = Nothing
	
END FUNCTION




DIM g_cssFile
g_cssFile = ""


FUNCTION notify_getRemindCSS()
	notify_getRemindCSS = ""
	
	DIM	sFile
	sFile = findRemindFile( "remind.css" )
	IF "" <> sFile THEN
		g_cssFile = sFile
		DIM	oFile
		SET oFile = g_oFSO.OpenTextFile( sFile, 1 )
		IF NOT oFile IS Nothing THEN
			DIM	sText
			sText = oFile.ReadAll
			oFile.Close
			SET oFile = Nothing
			DIM	i
			i = INSTR( sText, vbCRLF )
			IF 0 < i THEN
				notify_getRemindCSS = MID( sText, i+1 )
			ELSE
				notify_getRemindCSS = sText
			END IF
		END IF
	END IF
END FUNCTION



FUNCTION notify_getEmailNotifyCSS()
	notify_getEmailNotifyCSS = ""

	DIM	sFile
	sFile = Server.MapPath("./scripts/emailnotify.css")
	IF g_oFSO.FileExists( sFile ) THEN
		DIM	oFile
		SET oFile = g_oFSO.OpenTextFile( sFile, 1 )
		IF NOT oFile IS Nothing THEN
			DIM	sText
			sText = oFile.ReadAll
			oFile.Close
			SET oFile = Nothing
			DIM	i
			i = INSTR( sText, vbCRLF )
			IF 0 < i THEN
				notify_getEmailNotifyCSS = MID( sText, i+1 )
			ELSE
				notify_getEmailNotifyCSS = sText
			END IF
		END IF
	END IF

END FUNCTION

FUNCTION notify_buildStyle( sTextCSS )
	notify_buildStyle = "" _
				&	"<style type=""text/css"">" & vbCRLF _
				&	vbCRLF _
				&	sTextCSS & vbCRLF _
				&	vbCRLF _
				&	vbCRLF _
				&	"</style>" & vbCRLF _
				&	""
END FUNCTION


FUNCTION notify_buildHtmlBody( oOut, dToday )




	' get remind events
	'
	DIM	sEvents
	sEvents = notify_getEvents( oOut, dToday )
	
	
	DIM	sHealthWatch
	sHealthWatch = processHealthWatch( oOut, dToday )
	
	' get new announcements
	'
	DIM	sAnnouncements
	sAnnouncements = processNotifyAnnouncements( oOut, dToday )
	
	IF "" <> sEvents  OR  "" <> sAnnouncements THEN

		' get CSS
		'
		DIM	sTextRemindCSS
		sTextRemindCSS = notify_getRemindCSS()
		
		DIM	sTextNotifyCSS
		sTextNotifyCSS = notify_getEmailNotifyCSS()
		
		DIM sStyle
		sStyle = notify_buildStyle( sTextRemindCSS & vbCRLF & sTextNotifyCSS )


		DIM	i
		DIM	sBaseURL
		sBaseURL = "http://" & Request.ServerVariables("HTTP_HOST") & Request.ServerVariables("URL")
		i = INSTRREV( sBaseURL, "/" )
		IF 0 < i THEN sBaseURL = LEFT(sBaseURL,i)
		

		DIM	sBody
		
		sBody = "" _
			&	"<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.0 Transitional//EN"">" & vbCRLF _
			&	"<html>" & vbCRLF _
			&	"<head>" & vbCRLF _
			&	"<base href=""" & sBaseURL & """>" & vbCRLF _
			&	sStyle & vbCRLF _
			&	"</head>" & vbCRLF _
			&	"<body>" & vbCRLF _
			&	"<h2 class=""emailnotification"">" & g_sSiteName & " <i>Upcoming Events</i></h2>" & vbCRLF _
			&	sEvents & vbCRLF _
			&	sHealthWatch & vbCRLF _
			&	sAnnouncements & vbCRLF _
			&	"<p><br></p>" & vbCRLF _
			&	"<p>For more events visit " _
			&		"<a href=""http://www." & g_sDomain & "/"">" _
			&		"www." & g_sDomain _
			&		"</a>" _
			&	"</p>" & vbCRLF _
			&	"<p class=""noreply"">Do not reply to this email</p>" & vbCRLF _
			&	"</body>" & vbCRLF _
			&	"</html>" & vbCRLF


		notify_buildHtmlBody = sBody
		
	END IF

END FUNCTION








%>