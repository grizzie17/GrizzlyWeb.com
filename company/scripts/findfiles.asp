<%

FUNCTION findFolder( sFolderName )
	DIM	sTemp
	DIM	oFolder
	
	DIM	g_oFSO
	SET g_oFSO = Server.CreateObject("Scripting.FileSystemObject")

	findFolder = ""
	SET oFolder = g_oFSO.GetFolder(Server.MapPath("."))
	DO UNTIL oFolder.IsRootFolder
		sTemp = g_oFSO.BuildPath( oFolder.Path, sFolderName )
		IF g_oFSO.FolderExists( sTemp ) THEN
			findFolder = sTemp
			EXIT DO
		END IF
		ON Error RESUME Next
		SET oFolder = oFolder.ParentFolder
		IF Err THEN EXIT DO
	LOOP
	ON Error GOTO 0
	SET oFolder = Nothing
	SET g_oFSO = Nothing

END FUNCTION


FUNCTION findCGIBIN()
	findCGIBIN = findFolder( "cgi-bin" )
END FUNCTION



FUNCTION findfiles_dbFolderSessionKey()
	DIM	i
	DIM	sSessionKey
	sSessionKey = "MDBFolder" & Request.ServerVariables("PATH_INFO")
	i = INSTRREV(sSessionKey,"/")
	IF 0 < i THEN sSessionKey = LEFT(sSessionKey,i-1)
	findfiles_dbFolderSessionKey = sSessionKey
END FUNCTION





FUNCTION findDatabaseFolder()
	DIM	sFolder

	DIM	sSessionKey
	sSessionKey = findfiles_dbFolderSessionKey()

	sFolder = Session.Contents(sSessionKey)
	IF "" <> sFolder THEN
		findDatabaseFolder = sFolder
		EXIT FUNCTION
	END IF

	sFolder = findFolder( "cgi-bin\database" )
	IF 0 < LEN(sFolder) THEN
		Session(sSessionKey) = sFolder
		findDatabaseFolder = sFolder
		EXIT FUNCTION
	END IF
	
	sFolder = findFolder( "database" )
	IF 0 < LEN(sFolder) THEN
		Session(sSessionKey) = sFolder
		findDatabaseFolder = sFolder
		EXIT FUNCTION
	END IF
	findDatabaseFolder = ""
	
END FUNCTION




FUNCTION findProductsFolder()
	DIM	sFolder
	DIM	sPath
	
	sFolder = findFolder( "cgi-bin\products" )
	IF 0 < LEN(sFolder) THEN
		findProductsFolder = sFolder
		EXIT FUNCTION
	END IF
	sFolder = findFolder( "products" )
	IF 0 < LEN(sFolder) THEN
		findProductsFolder = sFolder
		EXIT FUNCTION
	END IF
	findProductsFolder = ""
END FUNCTION


FUNCTION findDBFile( sName )
	DIM	sFolder
	DIM	sPath
	
	sFolder = findDatabaseFolder()
	IF 0 < LEN( sFolder ) THEN
		sPath = g_oFSO.BuildPath( sFolder, sName )
		IF g_oFSO.FileExists( sPath ) THEN
			findDBFile = sPath
			EXIT FUNCTION
		END IF
	END IF
	sFolder = findProductsFolder()
	IF 0 < LEN( sFolder ) THEN
		sPath = g_oFSO.BuildPath( sFolder, sName )
		IF g_oFSO.FileExists( sPath ) THEN
			findDBFile = sPath
			EXIT FUNCTION
		END IF
	END IF
	findDBFile = ""
END FUNCTION



FUNCTION findXMLFile( sName )
	DIM	sFolder
	DIM	sPath
	
	sFolder = findProductsFolder()
	IF 0 < LEN( sFolder ) THEN
		sPath = g_oFSO.BuildPath( sFolder, sName )
		IF g_oFSO.FileExists( sPath ) THEN
			findXMLFile = sPath
			EXIT FUNCTION
		END IF
	END IF
	findXMLFile = ""
END FUNCTION


FUNCTION findCgibinFile( sFileName )
	DIM	sFolder
	DIM	sPath
	
	sFolder = findFolder( "cgi-bin" )
	IF 0 < LEN( sFolder ) THEN
		sPath = g_oFSO.BuildPath( sFolder, sFileName )
		IF g_oFSO.FileExists( sPath ) THEN
			findCgibinFile = sPath
			EXIT FUNCTION
		END IF
	END IF
	findCgibinFile = ""
END FUNCTION



FUNCTION findCategoryFile()
	findCategoryFile = findXMLFile( "categories.xml" )
END FUNCTION



FUNCTION findProductFile()
	findProductFile = findXMLFile( "products.xml" )
END FUNCTION


FUNCTION createFolderHierarchy( sCacheFolder )
	createFolderHierarchy = TRUE
	IF NOT g_oFSO.FolderExists( sCacheFolder ) THEN
		DIM aTempSplit
		DIM sTemp
		DIM i
		aTempSplit = SPLIT( sCacheFolder, "\", -1, vbTextCompare )
		sTemp = aTempSplit(0)
		FOR i = 1 TO UBOUND(aTempSplit)
			sTemp = sTemp & "\" & aTempSplit(i)
			IF NOT g_oFSO.FolderExists( sTemp ) THEN
				ON ERROR Resume Next
				g_oFSO.CreateFolder( sTemp )
				IF Err THEN createFolderHierarchy = FALSE
				ON ERROR GOTO 0
			END IF
		NEXT 'i
	END IF
END FUNCTION


FUNCTION virtualFromPhysicalPath( s )
	virtualFromPhysicalPath = ""
	IF "" <> s THEN
		DIM	sRootPath
		DIM	sVirtPath
		DIM	sTemp
		sRootPath = Server.MapPath("/")
		sTemp = MID(s,LEN(sRootPath)+1)
		virtualFromPhysicalPath = REPLACE(sTemp,"\","/",1,-1,vbTextCompare)
	END IF
END FUNCTION






%>