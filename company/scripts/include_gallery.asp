<%



FUNCTION useGalleryFileName( sFileName )

	DIM	sSuffix
	DIM	i
	
	useGalleryFileName = FALSE
	i = InStrRev( sFileName, ".", -1, vbTextCompare )
	IF 0 < i THEN
		sSuffix = LCASE(MID( sFileName, i ))
		SELECT CASE sSuffix
		CASE ".gif", ".jpg", ".png"
			IF "_" = LEFT( sFileName, 1 ) THEN
				useGalleryFileName = FALSE
			ELSE
				useGalleryFileName = TRUE
			END IF
		END SELECT
	END IF

END FUNCTION



DIM aGalleryList
DIM nGalleryCount
'REDIM aGalleryList(5)
nGalleryCount = 0


SUB readGalleryFolder( sFolder, aGallery() )
	DIM oFolder
	DIM oFile
	DIM sName
	DIM sTitle
	DIM	sDescription
	DIM sTargetWindow
	DIM bIsIndex
	DIM	sSortName
	
	nGalleryCount = 0
	
	sTitle = ""
	sDescription = ""
	sSortName = ""
	sTargetWindow = ""

	SET oFolder = g_oFSO.GetFolder( sFolder )
	
	FOR EACH oFile IN oFolder.Files
		sName = LCase( oFile.Name )
		IF useGalleryFileName( sName ) THEN
			sSortName = ""
			IF UBOUND(aGallery) <= nGalleryCount THEN
				REDIM PRESERVE aGallery(nGalleryCount+20)
			END IF
			IF "" <> sSortName THEN
				sSortName = LCASE(sSortName) & sName
			ELSE
				sSortName = sName
			END IF
			aGallery(nGalleryCount) = sSortName _
					& vbTAB & sName _
					& vbTAB & oFile.Path _
					& vbTAB & sTitle _
					& vbTAB & sDescription _
					& vbTAB & sTargetWindow
			nGalleryCount = nGalleryCount + 1
		END IF
	NEXT 'oFile
	
	IF 0 < nGalleryCount THEN
		locationSort aGallery, 0, nGalleryCount-1
		REDIM PRESERVE aGallery(nGalleryCount-1)
	END IF

END SUB


SUB buildGalleryIndex( sFolder, sIndexName )

	DIM	aList()
	REDIM aList(50)
	DIM	sStream
	
	readGalleryFolder sFolder, aList
	
	sStream = JOIN( aList, vbCRLF )

	IF g_oFSO.FileExists( sIndexName ) THEN
		g_oFSO.DeleteFile sIndexName, TRUE
	END IF
	
	DIM	oFile
	SET oFile = g_oFSO.CreateTextFile( sIndexName, TRUE )
	IF NOT Nothing IS oFile THEN
		oFile.Write sStream
		oFile.Close
		SET oFile = Nothing
	END IF

END SUB


FUNCTION useGalleryIndex( sIndexName )
	IF g_oFSO.FileExists( sIndexName ) THEN
		DIM	oIndexFile
		SET oIndexFile = g_oFSO.GetFile( sIndexName )
		IF ABS(DATEDIFF( "d", oIndexFile.DateLastModified, NOW )) < 5 THEN
			useGalleryIndex = TRUE
		ELSE
			useGalleryIndex = FALSE
		END IF
	ELSE
		useGalleryIndex = FALSE
	END IF
END FUNCTION




SUB getAllGallery( sFolder, aJokes )

	DIM	sIndexName
	sIndexName = g_oFSO.BuildPath( sFolder, "_index.txt" )
	
	IF NOT useGalleryIndex( sIndexName ) THEN
		buildGalleryIndex sFolder, sIndexName
	END IF
	
	DIM	oIndexFile
	SET oIndexFile = g_oFSO.OpenTextFile( sIndexName, 1 )
	
	DIM	sIndexData
	sIndexData = oIndexFile.ReadAll
	oIndexFile.Close
	SET oIndexFile = Nothing
	
	aJokes = SPLIT( sIndexData, vbCRLF )

END SUB




SUB buildGalleryList( sPath )


	getAllGallery sPath, aGalleryList
	
	nGalleryCount = UBOUND(aGalleryList) + 1


END SUB




%>