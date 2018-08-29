
<html>

<head>
<meta name="ROBOTS" content="noindex">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body>
<%

	DIM	oFSO
	DIM	oFolder
	DIM	nSize
	
	SET oFSO = Server.CreateObject( "Scripting.FileSystemObject" )
	SET oFolder = oFSO.GetFolder( Server.MapPath(".") )
	nSize = oFolder.size

%>
Folder Size = <%=FORMATNUMBER(nSize,0,0,0,-1)%> Bytes, <%=FORMATNUMBER(nSize/(1024*1024),2,-1,0,-1)%> MB
</body>

</html>
