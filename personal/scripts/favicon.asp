<%

SUB makeFavIconLink()

	DIM	s
	DIM	i

	Response.Write "<link rel=""shortcut icon"" type=""image/ico"" href=""http://"
	
	s = Request.ServerVariables("HTTP_HOST")
	
	Response.Write s
	
	s = Request.ServerVariables("URL")
	i = INSTRREV( s, "/" )
	IF 0 < i THEN
		s = LEFT( s, i-1 )
	ELSE
		s = ""
	END IF
	Response.Write s
	Response.Write "/favicon.ico"">" & vbCRLF


END SUB
makeFavIconLink

%>