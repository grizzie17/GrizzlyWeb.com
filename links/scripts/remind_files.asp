<%

DIM	dRemindLastModified


FUNCTION remindPicture( sLabel )

	DIM	sFolder
	sFolder = findRemindFolder()
	remindPicture = virtualFromPhysicalPath(sFolder & "\images\" & sLabel)
	remindPicture = "picture.asp?file=" & Server.URLEncode(remindPicture)

END FUNCTION




FUNCTION loadRemindFiles( nDateBegin, nDateEnd, sCategories, sHolidayCategories, bShowToday, dToday )

	DIM	sRemindFile
	DIM	oCalendar
	DIM	oCalendarFile
	
	DIM	aFileList()
	REDIM aFileList(5)
	DIM	aTempSplit
	DIM	sTemp
	DIM	dateTemp
	
	getRemindList aFileList
	
	
	SET loadRemindFiles = Nothing
	
	IF -1 < UBOUND(aFileList) THEN
	
		aTempSplit = SPLIT( aFileList(0), vbTAB )
		dRemindLastModified = CDATE( aTempSplit(2) )
		
		SET	oCalendar = new CCalendar
		
		IF bShowToday THEN
			oCalendar.juliandate = jdateFromVBDate( dToday )
			oCalendar.subject = "* T * O * D * A * Y *"
			oCalendar.style = "RmdToday"
			oCalendar.time = "00:00"
			oCalendar.outputMessage
		END IF

		DIM	sSavePictureFunc
		sSavePictureFunc = g_htmlFormat_pictureFunc
		g_htmlFormat_pictureFunc = "remindPicture"

		FOR EACH sTemp IN aFileList
			IF "" <> sTemp THEN
				aTempSplit = SPLIT( sTemp, vbTAB )
				dateTemp = CDATE(aTempSplit(2))
				IF dRemindLastModified < dateTemp THEN dRemindLastModified = dateTemp
				SET oCalendarFile = new CCalendarFile
				oCalendarFile.file = aTempSplit(1)
				oCalendarFile.datebegin = nDateBegin
				oCalendarFile.dateend = nDateEnd
				IF 0 < INSTR(aTempSplit(1),";categories") THEN
					IF 0 < LEN(sCategories) THEN oCalendarFile.categories = sCategories
				ELSEIF 0 < INSTR(aTempSplit(1),";holiday") THEN
					IF 0 < LEN(sHolidayCategories) THEN oCalendarFile.categories = sHolidayCategories
				END IF
				oCalendarFile.getDates( oCalendar )
			END IF
		NEXT 'sTemp
				
		g_htmlFormat_pictureFunc = sSavePictureFunc
		SET loadRemindFiles = oCalendar
		SET oCalendar = Nothing
		SET oCalendarFile = Nothing

	END IF
END FUNCTION
%>