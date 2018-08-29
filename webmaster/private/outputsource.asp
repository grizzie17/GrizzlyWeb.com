<%

OPTION EXPLICIT

DIM	gsOutString
DIM gnOutLen
DIM gsColorValue
DIM gnColorStack
DIM gnColorQue

SUB out_reset

	gsOutString = ""
	gnOutLen = 0
	gsColorValue = ""
	gnColorStack = 0
	gnColorQue = 0

END SUB

SUB out_beginColor( sColor )

	gsColorValue = sColor
	gnColorQue = gnColorQue + 1

END SUB

SUB out_endColor

	gnColorQue = gnColorQue - 1
	IF gnColorQue < gnColorStack THEN
		gsOutString = gsOutString & "</font>"
		gnColorStack = gnColorQue
	END IF

END SUB

SUB out_flush

	Response.Write gsOutString & vbCRLF
	gsOutString = ""
	gnOutLen = 0

END SUB

SUB out_string( s )

	IF gnColorStack < gnColorQue THEN
		gsOutString = gsOutString & "<font color=#" & gsColorValue & ">"
		gnColorStack = gnColorQue
	END IF
	gnOutLen = gnOutLen + Len(s)
	gsOutString = gsOutString & s

END SUB

SUB out_tab
	
	DIM	nLenTemp

	nLenTemp = gnOutLen MOD 4
	nLenTemp = 4 - nLenTemp
	IF nLenTemp = 0 THEN nLenTemp = 4
	gsOutString = gsOutString & Space( nLenTemp )
	gnOutLen = gnOutLen + nLenTemp

END SUB

SUB consumeLineComment( s, idx, nLen )

	DIM	i, iBegin
	DIM cTemp

	iBegin = idx
	FOR i = idx TO nLen
		cTemp = Mid( s, i, 1 )
		IF cTemp = Chr(9) THEN
			IF iBegin < i THEN
				CALL out_string( Mid( s, iBegin, i-iBegin ) )
				iBegin = i + 1
			END IF
			CALL out_tab
		END IF
	NEXT
	IF iBegin < i THEN
		CALL out_string( Mid( s, iBegin, i-iBegin ) )
	END IF

END SUB

FUNCTION getKeyword( s, i )

	DIM	idx
	DIM c
	DIM	cA, cZ
	DIM nLen

	cA = asc("A")
	cZ = asc("Z")

	idx = i

	IF Mid( s, idx, 1 ) = "/" THEN
		idx = idx + 1
	END IF
	nLen = Len(s)

	DO WHILE idx <= nLen
		c = Asc(UCase(Mid( s, idx, 1 )))
		IF cA <= c  AND  c <= cZ THEN
			idx = idx + 1
		ELSE
			EXIT DO
		END IF
	LOOP

	getKeyword = Mid( s, i, idx-i )

END FUNCTION


FUNCTION outputSource( sFile )

	Dim objFSO, objInFile	'object variables for file access
	Dim strFileName			'string containing filename of Source file to view
	Dim strIn					'string variables for reading
	DIM	strTemp
	DIM	nLen, nLenTemp		'string length
	DIM cTemp
	Dim i					'standard loop control variable
	Dim bProcessString		'flag determining whether or not to output each line
	Dim bInComment
	Dim bInScript
	DIM bInASP
	DIM bInQuote
	DIM	bInHTML

	outputSource = ""
	bProcessString = 1
	bInComment = 0
	bInScript = 0
	bInASP = 0
	bInQuote = 0
	bInHTML = 0
	
	EXIT FUNCTION

	strTemp = Request.ServerVariables( "PATH_TRANSLATED" )
	i = InStrRev( strTemp, "\" )
	strFileName = Left( strTemp, i ) & sFile

	IF strFileName <> "" THEN

		Response.Write "filename = " & strFileName & "<br>" & vbCRLF
		ON ERROR RESUME NEXT
		Set objFSO = CreateObject( "Scripting.FileSystemObject" )
		ON ERROR GOTO 0
		Set objInFile = objFSO.OpenTextFile( strFileName )

		Response.Write "<pre><font color=#999999>" & vbCRLF
		CALL out_reset

		'
		' Loop Through Real File and Output Results to Browser
		'
		DO UNTIL objInFile.AtEndOfStream

			strIn = Server.HTMLEncode( RTrim(objInFile.ReadLine) )

			'
			' check for hidden flags
			'
			IF InStr( 1, strIn, "&lt;!-- BEGIN HIDE --&gt;", 1 ) THEN
				bProcessString = 0
			ELSEIF InStr( 1, strIn, "&lt;!-- END HIDE --&gt;", 1 ) THEN
				bProcessString = 1
				IF objInFile.AtEndOfStream THEN
					EXIT DO
				ELSE
					strIn = Server.HTMLEncode( RTrim(objInFile.ReadLine) )
				END IF
			END IF

			' If we're on a line to be processed then do so
			IF bProcessString THEN

				nLen = Len( strIn )

				'
				' Loop through line
				'
				i = 1
				FOR i = 1 TO nLen

					cTemp = Mid( strIn, i, 1 )

					IF bInASP THEN

						IF InStr(i, strIn, "%&gt;", 1) = i THEN
							CALL out_string( "%&gt;" )
							CALL out_endColor
							bInASP = 0
							i = i + 4
						ELSE
							IF cTemp = Chr(9) THEN
								CALL out_tab
							ELSE
								IF cTemp = "'" THEN
									CALL out_beginColor( "009900" )
									CALL consumeLineComment( strIn, i, nLen )
									CALL out_endColor
									i = nLen
								ELSE
									CALL out_string( cTemp )
								END IF
							END IF
						END IF

					ELSEIF bInHTML THEN

						IF InStr(i, strIn, "&gt;", 1) = i THEN
							CALL out_endColor
							CALL out_string( "&gt;" )
							CALL out_endColor
							bInHTML = 0
							i = i + 3
						ELSE
							IF cTemp = Chr(9) THEN
								CALL out_tab
							ELSE
								IF bInHTML = 1 THEN
									bInHTML = 2
									strTemp = getKeyword( strIn, i )
									nLenTemp = Len(strTemp)
									IF 0 < nLenTemp THEN nLenTemp = nLenTemp - 1
									i = i + nLenTemp
									IF UCase(strTemp) = "SCRIPT" THEN
										bInScript = 1
									END IF
									CALL out_string( strTemp )
									CALL out_beginColor( "990000" )
								ELSE
									IF InStr(i, strIn, "&lt;%", 1) = i THEN
										bInASP = 1
										CALL out_beginColor( "996633" )
										CALL out_string( "&lt;%" )
										i = i + 4
									ELSE
										CALL out_string( cTemp )
									END IF
								END IF
							END IF
						END IF

					ELSEIF bInScript THEN

						IF bInScript = 1 THEN
							bInScript = 2
							CALL out_beginColor( "000000" )
						END IF
						IF InStr( i, strIn, "--&gt;", 1) = i THEN
							CALL out_string( "--&gt;" )
							CALL out_endColor
							i = i + 6
							bInScript = 0
						ELSE
							IF cTemp = Chr(9) THEN
								CALL out_tab
							ELSE
								IF bInComment THEN
									IF InStr( i, strIn, "*/", 1 ) = i THEN
										CALL out_string( "*/" )
										CALL out_endColor
										i = i + 1
										bInComment = 0
									ELSE
										CALL out_string( cTemp )
									END IF
								ELSE
									IF InStr( i, strIn, "//--", 1 ) = i THEN
										CALL out_string( "//" )
										i = i + 1
									ELSEIF InStr( i, strIn, "/*", 1 ) = i THEN
										CALL out_beginColor( "009900" )
										CALL out_string( "/*" )
										bInComment = 1
										i = i + 1
									ELSEIF InStr( i, strIn, "//", 1 ) = i THEN
										CALL out_beginColor( "009900" )
										CALL consumeLineComment( strIn, i, nLen )
										CALL out_endColor
										i = nLen
									ELSE
										CALL out_string( cTemp )
									END IF
								END IF
							END IF
						END IF

					ELSEIF bInComment THEN

						IF InStr( i, strIn, "--&gt;", 1) = i THEN
							CALL out_string( "--&gt;" )
							CALL out_endColor
							i = i + 6
							bInComment = 0
						ELSE
							IF cTemp = Chr(9) THEN
								CALL out_tab
							ELSE
								CALL out_string( cTemp )
							END IF
						END IF

					ELSE

						IF InStr(i, strIn, "&lt;", 1) = i THEN
							' Look for begining comment
							IF InStr(i, strIn, "&lt;!--", 1) = i THEN
								bInComment = 1
								CALL out_beginColor( "669933" )
								CALL out_string( "&lt;!--" )
								i = i + 6
							ELSEIF InStr(i, strIn, "&lt;%", 1) = i THEN
								bInASP = 1
								CALL out_beginColor( "996633" )
								CALL out_string( "&lt;%" )
								i = i + 4
							ELSE
								bInHTML = 1
								CALL out_beginColor( "990099" )
								CALL out_string( "&lt;" )
								i = i + 3
							END IF
						ELSE
							IF cTemp = Chr(9) THEN
								CALL out_tab
							ELSE
								' If neither just copy to strOut as is
								CALL out_string( cTemp )
							END IF
						END IF
					END IF

				NEXT
				' Output processed line
				CALL out_flush
			END IF
		LOOP

		Response.Write "</font></pre>" & vbCRLF
		
		' Close file and free variables
		objInFile.Close
		Set objInFile = Nothing
		Set objFSO = Nothing

	ELSE

		' If they entered no filename or one with a / or \ ... deny access
		Response.Write "Sorry, but you do not have access to view files outside the current directory."

	END IF

END FUNCTION
%>
