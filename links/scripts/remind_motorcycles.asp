﻿<%








FUNCTION useMotorcycleFile( sFile, sCategories )
	useMotorcycleFile = FALSE
	DIM	sFileLC
	sFileLC = LCASE(sFile)
	IF 0 < INSTR( sFileLC, "motorcycle" ) THEN
		useMotorcycleFile = TRUE
	ELSEIF 0 < INSTR( sFileLC, "key" ) THEN
		IF "" = sCategories THEN
			useMotorcycleFile = TRUE
		ELSEIF 0 < INSTR(sCategories, "email") THEN
			useMotorcycleFile = TRUE
		ELSEIF 0 < INSTR(sCategories, "key") THEN
			useMotorcycleFile = TRUE
		END IF
	END IF
END FUNCTION


'DIM	dRemindLastModified


FUNCTION loadMotorcycleFiles( nDateBegin, nDateEnd, sCategories, sHolidayCategories, bShowToday, dToday )

	DIM	sRemindFile
	DIM	oCalendar
	DIM	oCalendarFile
	
	DIM	aFileList()
	REDIM aFileList(5)
	DIM	aTempSplit
	DIM	sTemp
	DIM	dateTemp
	
	getRemindList aFileList
	
	
	SET loadMotorcycleFiles = Nothing
	
	IF -1 < UBOUND(aFileList) THEN
		aTempSplit = SPLIT( aFileList(0), vbTAB )
		dRemindLastModified = CDATE(aTempSplit(2))
		
		SET	oCalendar = new CCalendar
		
		IF bShowToday THEN
			oCalendar.juliandate = jdateFromVBDate( dToday )
			oCalendar.subject = "* T * O * D * A * Y *"
			oCalendar.style = "RmdToday"
			oCalendar.time = "00:00"
			oCalendar.outputMessage
		END IF

		FOR EACH sTemp IN aFileList
			IF useMotorcycleFile( sTemp, sCategories ) THEN
				IF "" <> sTemp THEN
					aTempSplit = SPLIT( sTemp, vbTAB )
					dateTemp = CDATE( aTempSplit(2) )
					IF dRemindLastModified < dateTemp THEN dRemindLastModified = dateTemp
					SET oCalendarFile = new CCalendarFile
					oCalendarFile.file = aTempSplit(1)
					oCalendarFile.datebegin = nDateBegin
					oCalendarFile.dateend = nDateEnd
					IF 0 < INSTR(aTempSplit(1),";categories") THEN
						IF 0 < LEN(sCategories) THEN oCalendarFile.categories = sCategories
					ELSEIF 0 < INSTR(aTempSplit(1),";holiday") THEN
						IF 0 < LEN(sHolidayCategories) THEN oCalendarFile.categories = sHolidayCategories
					ELSE
						IF 0 < LEN(sCategories) THEN oCalendarFile.categories = sCategories
					END IF
					oCalendarFile.getDates( oCalendar )
				END IF
			END IF
		NEXT 'sTemp
				
		SET loadMotorcycleFiles = oCalendar
		SET oCalendar = Nothing
		SET oCalendarFile = Nothing

	END IF
END FUNCTION



%>