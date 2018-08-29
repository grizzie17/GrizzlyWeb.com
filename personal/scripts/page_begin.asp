<%

DIM g_dLocalPageDateModified
SUB LocalPageGetDate()
	DIM	oFile
	SET oFile = g_oFSO.GetFile( Request.ServerVariables("PATH_TRANSLATED") )
	DIM	dLastMod
	g_dLocalPageDateModified = oFile.DateLastModified
	SET oFile = Nothing
END SUB
LocalPageGetDate



%>
<div align="center">
<!--table border="0" cellpadding="0" cellspacing="0" width="770"-->
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="pageblock">
	<tr>
		<td align="left">

