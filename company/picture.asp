<%@ Language=VBScript %>
<%
OPTION EXPLICIT

Response.Expires = 30


DIM	g_oFSO
SET g_oFSO = Server.CreateObject("Scripting.FileSystemObject")

%>
<!--#include file="scripts\ado.inc"-->
<!--#include file="scripts\findfiles.asp"-->
<!--#include file="scripts\include_picture.asp"-->
<%


FUNCTION getMime( s )

	getMime = "image/gif"
	DIM	sSuffix
	DIM	aSuffix
	DIM	aMime
	DIM	i

	aSuffix = ARRAY( "gif", "jpg", "bmp", "jpe", "jpeg", "png", "xbm", "wmf", "emf", "ico", "avi", "mpg", "mov", "txt" )
	aMime = ARRAY( "gif", "jpeg", "bmp", "jpeg", "jpeg", "png", "x-xbitmap", "x-wmf", "x-emf", "x-icon", "video/avi", "video/mpeg", "video/quicktime", "text/plain" )
	
	sSuffix = LCASE( s )

	FOR i = LBOUND(aSuffix) TO UBOUND(aSuffix)
		IF sSuffix = aSuffix(i) THEN
			getMime = aMime(i)
			IF 0 = INSTR(1,getMime,"/",vbTextCompare) THEN getMime = "image/" & getMime
			EXIT FOR
		END IF
	NEXT 'i

END FUNCTION

FUNCTION getContentType( s )

	DIM	i
	DIM	sSuffix
	i = INSTRREV( s, ".", -1, vbTextCompare )
	IF 0 < i THEN
		sSuffix = MID( s, i+1 )
		getContentType = getMime( sSuffix )
		IF "asp" = sSuffix  OR  "xslt" = sSuffix THEN
			getContentType = ""
		END IF
	ELSE
		getContentType = "image/gif"
	END IF
	
END FUNCTION



DIM	sTable
sTable = Request.QueryString("file")

DIM	sName

DIM	sPicturePath

IF "" <> sTable THEN

	IF ":" = MID(sTable,2,1) THEN
		sPicturePath = sTable
	ELSE
		sPicturePath = Server.MapPath(sTable)
	END IF
	IF NOT g_oFSO.FileExists( sPicturePath ) THEN
		sPicturePath = Server.MapPath("images/notfound.jpg")
	END IF

ELSE
	sPicturePath = Server.MapPath("images/notfound.jpg")
END IF

DIM	oStream
SET oStream = Server.CreateObject("ADODB.Stream")

IF NOT oStream IS Nothing THEN

	DIM	cType
	
	cType = getContentType( sPicturePath )
	IF "" <> cType THEN

		oStream.Open
		oStream.Type = adTypeBinary
	
		oStream.LoadFromFile sPicturePath
	
		Response.ContentType = getContentType( sPicturePath )
		Response.BinaryWrite oStream.Read
		
		oStream.Close
	
	END IF

	Response.End

END IF

SET oStream = Nothing
SET g_oFSO = Nothing


%>