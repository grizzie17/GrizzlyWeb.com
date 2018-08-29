<%
OPTION EXPLICIT


DIM	g_oFSO
SET g_oFSO = CreateObject( "Scripting.FileSystemObject" )

DIM bForm
DIM i

bForm = FALSE
i = Request.Form("url").Count
IF 0 < i THEN bForm = TRUE



SUB locationSort( A(), ByVal Lb, ByVal Ub )
    DIM n
    DIM h
    DIM i
    DIM j
    DIM t

    ' sort array[lb..ub]

    ' compute largest increment
    n = Ub - Lb + 1
    h = 1
    IF n < 14 THEN
        h = 1
    ELSE
        DO WHILE h < n
            h = 3 * h + 1
        LOOP
        h = h \ 3
        h = h \ 3
    END IF

    DO WHILE h > 0
        ' sort by insertion in increments of h
        FOR i = Lb + h TO Ub
            t = A(i)
            FOR j = i - h TO Lb STEP -h
                IF A(j) <= t THEN EXIT FOR
                A(j + h) = A(j)
            NEXT 'j
            A(j + h) = t
        NEXT 'i
        h = h \ 3
    LOOP
END SUB

DIM aEngineList()
DIM aTitleList()
DIM nEngineCount

nEngineCount = 0
REDIM aEngineList(20)
REDIM aTitleList(20)



SUB dualSort( A(), B(), ByVal Lb, ByVal Ub )
    DIM n
    DIM h
    DIM i
    DIM j
    DIM t
	DIM	t2

    ' sort array[lb..ub]

    ' compute largest increment
    n = Ub - Lb + 1
    h = 1
    IF (n < 14) THEN
        h = 1
    ELSE
        DO WHILE h < n
            h = 3 * h + 1
        LOOP
        h = h \ 3
        h = h \ 3
    END IF

    DO WHILE h > 0
        ' sort by insertion in increments of h
        FOR i = Lb + h TO Ub
            t = A(i)
			t2 = B(i)
            FOR j = i - h TO Lb STEP -h
                IF A(j) <= t THEN EXIT FOR
                A(j + h) = A(j)
				B(j + h) = B(j)
            NEXT 'j
            A(j + h) = t
			B(j + h) = t2
        NEXT 'i
        h = h \ 3
    LOOP
END SUB


SUB getWebFileInfo( sTitle, bIsIndex, sFile )
	DIM objInFile			'object variables for file access
	DIM strIn				'string variables for reading
	DIM	strTemp
	DIM	i,j
	DIM bProcessString		'flag determining whether or not to work with each line
	DIM	bInTitle

	bIsIndex = TRUE
	sTitle = ""
	
	bInTitle = FALSE
	bProcessString = 0

	IF sFile <> "" THEN

		IF g_oFSO.FileExists( sFile ) THEN

			SET objInFile = g_oFSO.OpenTextFile( sFile )

			DO UNTIL objInFile.AtEndOfStream

				strIn = objInFile.ReadLine
				strTemp = LCase( strIn )
				
				IF bProcessString THEN
					' we need to look for "</head>"
					IF InStr( 1, strTemp, "</head>", 1 ) THEN
						bProcessString = 0
						EXIT DO
					END IF
				ELSE
					' looking for "<head...>"
					IF 1 = InStr( 1, strTemp, "<head", 1 ) THEN
						bProcessString = 1
					END IF
				END IF

				' If we're on a line to be processed then do so
				IF bProcessString THEN
				
					IF bInTitle THEN
						i = InStr( 1, strTemp, "</title>", vbTextCompare )
						IF 0 < i THEN
							sTitle = sTitle & " " & TRIM(LEFT(strIn,i-1))
							bInTitle = FALSE
						ELSE
							sTitle = sTitle & " " & TRIM(strIn)
						END IF
					ELSE
						i = InStr( 1, strTemp, "<title>", vbTextCompare )
						IF 0 < i THEN
							i = i + 7
							j = InStr( i, strTemp, "</title>", vbTextCompare )
							IF j < i THEN
								sTitle = MID( strIn, i )
								bInTitle = TRUE
							ELSE
								sTitle = MID( strIn, i, j-i )
							END IF
						END IF
					END IF
					IF InStr( 1, strTemp, "<meta", 1 ) THEN
						IF InStr( 6, strTemp, "name=", 1 ) THEN
							IF InStr(12, strTemp, "robots", 1 ) THEN
								IF InStr(18, strTemp, "noindex", 1) THEN
									bIsIndex = FALSE
									EXIT DO
								END IF
							END IF
						END IF
					END IF

				END IF
			LOOP
			
			' Close file and free variables
			objInFile.Close
			SET objInFile = Nothing

		ELSE

			'Response.Write "file not found: " & strFileName

		END IF

	END IF
END SUB




SUB buildEngineList

	DIM oFolder
	DIM oFile
	DIM sName
	DIM sTitle
	DIM sTemp
	DIM bIndex
	DIM i
	
	SET oFolder = g_oFSO.GetFolder( Server.MapPath( "submiturl" ) )
	
	FOR EACH oFile IN oFolder.Files
		sName = oFile.Name
		i = INSTR( 1, sName, ".asp", vbTextCompare )
		IF 0 < i THEN
			sTitle = LEFT( sName, i-1 )
			CALL getWebFileInfo( sTemp, bIndex, oFile.Path )
			IF bIndex THEN
				IF 0 < LEN(sTemp) THEN sTitle = sTemp
				IF UBOUND(aEngineList) <= nEngineCount THEN
					REDIM PRESERVE aEngineList(nEngineCount+20)
					REDIM PRESERVE aTitleList(nEngineCount+20)
				END IF
				aEngineList(nEngineCount) = "submiturl/" & sName
				aTitleList(nEngineCount) = sTitle
				nEngineCount = nEngineCount + 1
			END IF
		END IF
	NEXT 'oFile
	
	IF 0 < nEngineCount THEN
		CALL dualSort( aEngineList, aTitleList, 0, nEngineCount-1 )
	END IF
	
	SET oFile = Nothing
	SET oFolder = Nothing
END SUB



%>
<html>

<head>
<title>Submit Helper</title>
<meta name="robots" content"noindex">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link REL="stylesheet" TITLE="Default Styles" HREF="1webmaster.css" MEDIA="screen">
<base target="search">
<script language="JavaScript">
<!--
function nextEngine()
{
	var n;
	var i;
	var oEngine;
	var sValue;
	
	oEngine = document.search.SearchEngine;
	n = oEngine.length;
	i = oEngine.selectedIndex;
	++i;
	if ( i < n )
	{
		sValue = oEngine.options[i].value;
		if ( sValue.length < 1 )
		{
			++i;
			sValue = oEngine.options[i].value;
		}
		oEngine.selectedIndex = i;
		document.search.action = sValue;
		document.search.submit.click();
	}
	
	//return false;
}

function handleEngineChange()
{
	var oForm;
	var oEngine;
	var nMax;
	
	oForm = document.search;
	oEngine = oForm.SearchEngine;
	var nOption = oEngine.selectedIndex;
	var sEngine = oEngine.options[nOption].text;
	var which = oEngine.options[nOption].value;
	if ( which.length < 1 )
	{
		++nOption;
		if ( nOption < oEngine.length )
			oEngine.selectedIndex = nOption;
		which = oEngine.options[nOption].value;
	}
	else
	{
		oForm.action = which;
	}
}


//-->
</script>
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#FFFFFF">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th align="left" bgcolor="#663300"><a href="index.htm" target="_top"><font color="#FFCC00">Grizzly
    WebMaster</font></a></th>
  </tr>
</table>

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" align="left"><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td bgcolor="#663300" checked="false"><table border="0" cellspacing="0" cellpadding="4">
          <tr>
            <th><a href="promotion.htm" target="_top"><font size="5" color="#FFFFFF">Site Promotion</font></a></th>
          </tr>
        </table>
        </td>
        <td valign="top" align="right"><table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top" align="right" bgcolor="#663300"><img src="images/pie_tlx.gif" border="0" WIDTH="16" HEIGHT="16"></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
    <td>
<%
IF NOT bForm THEN
%>
      <h1>Submit URL Helper</h1>
<%
ELSE
	CALL buildEngineList
%>
      <form method="POST" action="<%=aEngineList(0)%>" name="search">
        <table border="0" cellspacing="0">
          <tr>
            <td valign="top">
<%
	DIM	sSiteName
	
	sSiteName = Request.Form("title")
%>
<b><%=sSiteName%></b>
<%
	DIM	sField
	DIM	sValue
	
	FOR EACH sField IN Request.Form
		IF "submit" <> sField  AND  "reset" <> sField THEN
			sValue = Request.Form( sField )
			Response.Write "<input type=""hidden"" name=""" & sField & """ value=""" & sValue & """>" & vbCRLF
		END IF
	NEXT 'sField
%>
            </td>
            <td><select size="1" name="SearchEngine" onchange="handleEngineChange()">
<%
	'DIM	i
	FOR i = 0 TO nEngineCount-1
		%><option value="<%=aEngineList(i)%>"><%=aTitleList(i)%></option>
		<%
	NEXT 'i
%>
              </select><br>
              <a href="javascript:nextEngine();" target="_self">Next Engine</a></td>
            <td><input type="submit" value="Submit" name="submit"></td>
            <td bgcolor="#FFCC99"><a href="submiturl.asp" target="_top">New URL</a></td>
          </tr>
        </table>
      </form>
<%
END IF
%>
    </td>
  </tr>
</table>


</body>

</html>
<%
	SET g_oFSO = Nothing
	Response.End
%>
