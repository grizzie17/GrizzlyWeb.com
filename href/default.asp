<%

aSuffix = ARRAY( "htm", "html", "asp", "css", "txt", "xml", "gif", "jpg", "bmp", "jpe", "jpeg", "png", "xbm", "wmf", "emf", "ico", "avi", "mpg", "mov", "wmv", "wma", "asf", "exe" )
aMime = ARRAY( "text/html", "text/html", "text/html", "text/css", "text/plain", "text/xml", "image/gif", "image/jpeg", "image/bmp", "image/jpeg", "image/jpeg", "image/png", "image/x-xbitmap", "image/x-wmf", "image/x-emf", "image/x-icon", "video/avi", "video/mpeg", "video/quicktime", "video/x-ms-wmv", "audio/x-ms-wma", "video/x-ms-asf", "application/octet-stream" )


SUB fetchHTTP( sContent, sMime, sURL, sQuery, bBinary )

	DIM	oHTTP
	ON ERROR Resume Next
	SET oHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
	IF Nothing IS oHTTP THEN
		ON ERROR GOTO 0
		sContent = ""
		EXIT SUB
	END IF
	
	oHTTP.Open "GET", sURL, False
	oHTTP.SetRequestHeader "Referer", "http://localhost/test.asp"
	oHTTP.SetRequestHeader "User-Agent", Request.ServerVariables("HTTP_USER_AGENT")
	oHTTP.Send
	
	DIM	sNewMime
	
	sNewMime = oHTTP.getRequestHeader( "Content-Type" )
	IF "" <> sNewMime THEN sMime = sNewMime
	bBinary = TRUE
	IF "text" = LEFT(sMime, 4) THEN bBinary = FALSE
	IF bBinary THEN
		sContent = oHTTP.responseBody
	ELSE
		sContent = oHTTP.responseText
	END IF
	SET oHTTP = Nothing

END SUB


FUNCTION buildURL( sBase, sURL, sQuery )

	DIM	i

	IF "http:" = LEFT(sURL,5) THEN
		buildURL = sURL
	ELSE
		buildURL = sBase
		IF "/" <> RIGHT(sBase,1) THEN
			buildURL = buildURL & "/"
		END IF
		IF "/" = LEFT(sURL,1) THEN
			i = INSTR(buildURL,"//")
			i = INSTR(i+2, buildURL, "/")
			buildURL = LEFT(buildURL, i) & MID(sURL,2)
			'buildURL = buildURL & MID(sURL,2)
		ELSE
			DIM	sNURL
			DIM	j
			sNURL = sURL
			j = INSTR( buildURL, "//" )
			j = INSTR( j+2, buildURL, "/" )
			DO WHILE "../" = LEFT(sNURL,3)
				IF j < LEN(buildURL) THEN
					buildURL = LEFT(buildURL, LEN(buildURL)-1)
					i = INSTRREV( buildURL, "/" )
					IF j <= i THEN
						buildURL = LEFT( buildURL, i )
					END IF
					sNURL = MID(sNURL,4)
				ELSE
					EXIT DO
				END IF
			LOOP
			buildURL = buildURL & sNURL
		END IF
	END IF
	IF "" = sQuery THEN
		buildURL = buildURL & "?" & sQuery
	END IF

END FUNCTION

FUNCTION getFolder( sURL )
	DIM	i
	i = INSTRREV( sURL, "/" )
	IF 0 < i THEN
		getFolder = LEFT( sURL, i )
	ELSE
		getFolder = sURL
	END IF
END FUNCTION

FUNCTION convertHTML( sContent, sBase )

	DIM	sTemp
	DIM	sEncodeBase
	sEncodeBase = Server.URLEncode(sBase)
	sTemp = REPLACE( sContent, "src=""", "src=""default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "src='", "src='default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "src=/", "src=default.asp?BASE=" & sEncodeBase & "&URL=/" )
	sTemp = REPLACE( sTemp, "SRC=""", "SRC=""default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "SRC='", "SRC='default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "href=""", "href=""default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "href='", "href='default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "href=http:", "href=default.asp?BASE=" & sEncodeBase & "&URL=http:" )
	sTemp = REPLACE( sTemp, "HREF=""", "HREF=""default.asp?BASE=" & sEncodeBase & "&URL=" )
	sTemp = REPLACE( sTemp, "background=""", "background=""default.asp?BASE=" & sEncodeBase & "&URL=" )
	convertHTML = sTemp
END FUNCTION


FUNCTION convertCSS( sContent, sBase )
	DIM	sTemp
	DIM	sEncodeBase
	sEncodeBase = Server.URLEncode(sBase)
	IF 0 < INSTR( sContent, "url('" ) THEN
		sTemp = REPLACE( sContent, "url('", "url('default.asp?BASE=" & sEncodeBase & "&URL=" )
	ELSEIF 0 < INSTR( sContent, "url(""" ) THEN
		sTemp = REPLACE( sContent, "url(""", "url(""default.asp?BASE=" & sEncodeBase & "&URL=" )
	ELSE
		sTemp = REPLACE( sContent, "url(", "url(default.asp?BASE=" & sEncodeBase & "&URL=" )
	END IF

	convertCSS = sTemp
END FUNCTION



DIM	sBase
DIM	sURL
DIM	sQuery

sBase = Request("BASE")
sURL = Request("URL")
sQuery = Request("Q")

IF "" <> sURL THEN

	DIM	aSuffix
	DIM	aMime
	DIM	i
	DIM	j
	
	DIM	sSuffix
	DIM	sMimePrefix
	DIM	sMime
	DIM	bBinary
	
	i = INSTRREV( sURL, "." )
	IF 0 < i THEN
		sSuffix = LCASE(MID( sURL, i+1 ))
	ELSE
		sSuffix = "htm"
	END IF

	bBinary = FALSE
	sMime = "text/html"
	FOR	i = LBOUND(aSuffix) TO UBOUND(aSuffix)
		IF sSuffix = aSuffix(i) THEN
			sMime = aMime(i)
			j = INSTR(sMime,"/")
			IF 0 < j THEN
				sMimePrefix = LEFT(sMime,j-1)
			ELSE
				sMimePrefix = LEFT(sMime,5)
			END IF
			SELECT CASE sMimePrefix
			CASE "image", "video", "audio", "application"
				bBinary = TRUE
			CASE ELSE
				bBinary = FALSE
			END SELECT
			EXIT FOR
		END IF
	NEXT 'i	

	DIM	sContent
	DIM	sNewURL
	
	sNewURL = buildURL( sBase, sURL, sQuery )

	fetchHTTP sContent, sMime, sNewURL, sQuery, bBinary
	IF 0 < LEN(sContent) THEN

		Response.ContentType = sMime
		
		IF "text/html" = sMime THEN
			Response.Write convertHTML( sContent, getFolder(sNewURL) )
		ELSEIF "text/css" = sMime THEN
			Response.Write convertCSS( sContent, getFolder(sNewURL) )
		ELSEIF bBinary THEN
			Response.BinaryWrite sContent
		ELSE
			Response.Write sContent
		END IF
		Response.End

	END IF

END IF


%>