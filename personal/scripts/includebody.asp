﻿<%



'PUBLIC aBuildPathRootSplit

FUNCTION buildFilePath( aRootSplit(), sPath )
	DIM sResultPath
	DIM nRoot
	DIM nPath
	DIM i
	DIM aBuildPathPathSplit
	
	IF "/" = LEFT(sPath,1)  OR  INSTR(1,sPath,"//",vbTextCompare)  _
			OR  "http:" = LEFT(sPath,5)  OR  "https:" = LEFT(sPath,6) _
			OR  "mailto:" = LEFT(sPath,7)  OR  "news:" = LEFT(sPath,5) _
			OR  "javascript:" = LEFT(sPath,11)  OR  "#" = sPath  THEN
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




DIM	g_aURLTag
g_aURLTag = ARRAY( _
	"src=""", _
	"href=""", _
	"action=""", _
	"background=""", _
	"param name=""fileName"" value=""", _
	"url\('", _
	"url\(" _
	)

FUNCTION getHtmlBody_urlTag( sText, aRootSplit, idxTag )
	DIM	sOutput
	DIM	sLinkURL
	DIM	sLinkText
	DIM	i, ix
	DIM	iLinkStart
	DIM	iLinkEnd
	DIM	oReg
	DIM	oMatchList
	DIM	oMatch
	DIM	lenText
	DIM	sTag
	DIM	ndxTag
	DIM	sCloseQuote
	
	ndxTag = idxTag
	
	IF UBOUND(g_aURLTag) < ndxTag THEN
		getHtmlBody_urlTag = sText
		EXIT FUNCTION
	END IF
	
	sTag = g_aURLTag(ndxTag)
	ndxTag = ndxTag + 1
	
	lenText = LEN(sText)
	' src="x.gif"
	IF lenText < 11 THEN
		getHtmlBody_urlTag = sText
		EXIT FUNCTION
	END IF

	sOutput = ""
	SET oReg = NEW RegExp
	oReg.Pattern = sTag
	oReg.IgnoreCase = TRUE
	oReg.Global = TRUE
	SET oMatchList = oReg.Execute( sText )
	IF 0 = oMatchList.Count THEN
		getHtmlBody_urlTag = getHtmlBody_urlTag( sText, aRootSplit, ndxTag )
	ELSE
		i = 1
		FOR EACH oMatch IN oMatchList
			iLinkStart = oMatch.FirstIndex + 1		'adjust for zero index
			IF i <= iLinkStart THEN
				ix = iLinkStart + oMatch.Length
				SELECT CASE RIGHT( oMatch.Value, 1 )
				CASE """"
					sCloseQuote = """"
				CASE "'"
					sCloseQuote = "'"
				CASE "("
					sCloseQuote = ")"
				CASE ELSE
					sCloseQuote = " "
				END SELECT
				iLinkEnd = INSTR(ix+1, sText, sCloseQuote, vbTextCompare )
				sLinkText = MID( sText, ix, iLinkEnd-ix )
				IF i < iLinkStart THEN sOutput = sOutput & getHtmlBody_urlTag(MID(sText, i, iLinkStart - i),aRootSplit,ndxTag)
				sOutput = sOutput & oMatch.Value & buildFilePath( aRootSplit, sLinkText ) & sCloseQuote
				iLinkEnd = iLinkEnd + 1
				i = iLinkEnd
			END IF
		NEXT 'oMatch
		getHtmlBody_urlTag = sOutput & getHtmlBody_urlTag(MID(sText, i),aRootSplit,ndxTag)
	END IF
END FUNCTION

FUNCTION getHtmlBody_src( sText, aRootSplit )
	getHtmlBody_src = getHtmlBody_urlTag( sText, aRootSplit, 0 )
END FUNCTION



FUNCTION getHtmlBody( sFile, aRootSplit )

	DIM	oFile
	DIM	sText
	
	IF 0 < LEN(sFile) THEN
		getHtmlBody = ""
		
		IF g_oFSO.FileExists( sFile ) THEN
			SET oFile = g_oFSO.OpenTextFile( sFile )
			IF NOT oFile IS Nothing THEN
				sText = oFile.ReadAll()
				
				DIM oReg
				DIM oMatchList

				SET oReg = NEW RegExp
				oReg.Pattern = "<body"
				oReg.IgnoreCase = TRUE
				oReg.Global = TRUE
				SET oMatchList = oReg.Execute( sText )
				
				IF 0 = oMatchList.Count THEN
					getHtmlBody = "<!-- Empty body -->"
				ELSE
					DIM i
					DIM	nBegin
					DIM	nEnd
					DIM	oMatch
					
					FOR EACH oMatch IN oMatchList
						i = oMatch.FirstIndex
					NEXT 'oMatch
					
					nBegin = INSTR( i+1, sText, ">", vbTextCompare )
					oReg.Pattern = "</body>"
					SET oMatchList = oReg.Execute( sText )
					IF 0 = oMatchList.Count THEN
						nEnd = LEN(sText)
					ELSE
						FOR EACH oMatch IN oMatchList
							nEnd = oMatch.FirstIndex
						NEXT 'oMatch
					END IF
					getHtmlBody = getHtmlBody_src( MID(sText,nBegin+1,nEnd-nBegin-2), aRootSplit )
				END IF
				SET oReg = Nothing
				SET oMatchList = Nothing
				SET oMatch = Nothing

			ELSE
				getHtmlBody = "<!-- Error includeBody " & sFile & " -->"
			END IF
		END IF
	ELSE
		getHtmlBody = ""
	END IF

END FUNCTION





FUNCTION includeBodyStream( sFile )

	includeBodyStream = ""
	
	Dim objInFile		'object variables for file access
	DIM oFSO
	Dim strIn			'string variables for reading
	DIM sFileName
	DIM strTemp
	DIM i
	Dim bProcessString		'flag determining whether or not to output each line
	DIM bInHTML
	DIM aIncludeBodyPathSplit

	bProcessString = FALSE
	bInHTML = FALSE

	IF sFile <> "" THEN

		SET oFSO = CreateObject( "Scripting.FileSystemObject" )
		strTemp = Request.ServerVariables( "PATH_TRANSLATED" )
		'Response.Write "strTemp = " & Server.HTMLEncode(strTemp) & "<br>" & vbCRLF
		i = InStrRev( strTemp, "\" )
		strTemp = Left( strTemp, i )
		sFileName = oFSO.BuildPath( strTemp, sFile )
		IF NOT oFSO.FileExists( sFileName ) THEN
			sFileName = ""
			IF LCASE(strTemp) = LCASE( LEFT( sFile, LEN(strTemp) )) THEN
				IF oFSO.FileExists( sFile ) THEN
					sFileName = sFile
				END IF
			END IF
		END IF
		IF "" <> sFileName THEN
		
			'Response.Write "sFile = " & sFile & "<br>" & vbCRLF
			aIncludeBodyPathSplit = SPLIT( sFile, "\", -1, vbTextCompare )
			IF -1 = UBOUND(aIncludeBodyPathSplit) THEN
				aIncludeBodyPathSplit = ""
			ELSE
				REDIM PRESERVE aIncludeBodyPathSplit(UBOUND(aIncludeBodyPathSplit)-1)
			END IF
			
			includeBodyStream = getHtmlBody( sFileName, aIncludeBodyPathSplit )

		END IF
		
		SET oFSO = Nothing

	END IF

END FUNCTION



FUNCTION includeBody( sFile )

	IF "" <> sFile THEN
		DIM	sResult
		sResult = includeBodyStream( sFile )
		Response.Write sResult
	END IF
	includeBody = ""
	
END FUNCTION





%>