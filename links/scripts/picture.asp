<%


FUNCTION fetchHTTP( sURL, sQuery, sRefer )

	DIM	oHTTP
	ON ERROR Resume Next
	SET oHTTP = Server.CreateObject("MSXML2.ServerXMLHTTP")
	IF Nothing IS oHTTP THEN
		ON ERROR GOTO 0
		Response.Write "Error: creating MSXML2.ServerXMLHTTP"
		fetchHTTP = ""
		EXIT FUNCTION
	END IF
	
	DIM	sURLQ
	IF sQuery <> "" THEN
		sURLQ = sURL & "?" & sQuery
	ELSE
		sURLQ = sURL
	END IF
	
	DIM	sRef
	IF sRefer = "" THEN
		sRef = "http://localhost/test.asp"
	ELSE
		sRef = sRefer
	END IF
	
	oHTTP.Open "GET", sURLQ, False
	oHTTP.Async = FALSE
	oHTTP.SetRequestHeader "Referer", sRef
	oHTTP.SetRequestHeader "User-Agent", Request.ServerVariables("HTTP_USER_AGENT")
	oHTTP.Send
	
	IF 200 <> oHTTP.Status THEN
		Response.Write "Status (" & oHTTP.Status & ") " & oHTTP.StatusText
		fetchHTTP = ""
	ELSE
		fetchHTTP = oHTTP.responseBody
	END IF
	
	SET oHTTP = Nothing

END FUNCTION

FUNCTION fetchHTTPsave( sURL, sQuery, sRefer )

	DIM oHTTP
	ON ERROR Resume Next
	SET oHTTP = Server.CreateObject( "SOFTWING.ASPtear" )
	IF Nothing IS oHTTP THEN
		ON ERROR GOTO 0
		EXIT FUNCTION
	END IF
	
	DIM	sContent
	
	oHTTP.Accept = "*/*"
	
	ON ERROR Resume Next
	sContent = oHTTP.Retrieve( sURL, 2, sQuery, "", "" )
	IF 0 = Err.Number THEN
		ON ERROR GOTO 0
		fetchHTTP = sContent
	ELSE
		fetchHTTP = ""
	END IF
	ON ERROR GOTO 0
	SET oHTTP = Nothing
END FUNCTION



DIM	sURL
DIM	sQuery
DIM	sRefer

sURL = Request("URL")
sQuery = Request("Q")
sRefer = Request("REFER")


IF "" <> sURL THEN

	DIM	sContent

	sContent = fetchHTTP( sURL, sQuery, sRefer )
	IF 0 < LEN(sContent) THEN

		DIM	aSuffix
		DIM	aMime
		DIM	i
	
		DIM	sSuffix
		DIM	sMime
	
		i = INSTRREV( sURL, "." )
		IF 0 < i THEN
			sSuffix = LCASE(MID( sURL, i+1 ))
		ELSE
			sSuffix = "gif"
		END IF

		aSuffix = ARRAY( "gif", "jpg", "bmp", "jpe", "jpeg", "png", "xbm", "wmf", "emf", "ico", "avi", "mpg", "mov" )
		aMime = ARRAY( "gif", "jpeg", "bmp", "jpeg", "jpeg", "png", "x-xbitmap", "x-wmf", "x-emf", "x-icon", "video/avi", "video/mpeg", "video/quicktime" )

		FOR	i = LBOUND(aSuffix) TO UBOUND(aSuffix)
			IF sSuffix = aSuffix(i) THEN
				sMime = aMime(i)
				EXIT FOR
			END IF
		NEXT 'i	

		'Response.Write "image/" & sMime & "<br>"
		'Response.Write "len = " & LEN(sContent)
		Response.ContentType = "image/" & sMime
		Response.BinaryWrite sContent
		Response.End

	END IF

END IF


%>