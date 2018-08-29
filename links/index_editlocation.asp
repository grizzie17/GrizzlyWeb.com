<html>

<head>
<title>Edit Location - Grizzly Web Links</title>
<meta name="robots" content="noindex">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script language="JavaScript">
<!--
function replaceWindowURL( win, url )
{
	win.location.href = url;
}
//-->
</script>
<script language="JavaScript1.2">
<!--
function replaceWindowURL( win, url )
{
	win.location.replace( url );
}
//-->
</script>
<script language="JavaScript">
<!--

var bLoadDone = false;
var nFail = 0;

function setDocumentCookie( oDoc, sName, sValue )
{
	if ( sName.length < 1 )
		return;

	if ( 0 < sValue.length )
	{
		var	expDate = new Date();
		expDate.setTime( expDate.getTime() + 365*24*60*60*1000 );
		oDoc.cookie = ""
						+ sName + "=" + sValue + "; "
						+ "expires=" + expDate.toGMTString();
	}
	else
	{
		oDoc.cookie = sName + "=";
	}
}

function setNamedCookie( sName, sValue )
{
	setDocumentCookie( document, sName, sValue );
}

function fetchDocumentCookie( oDoc, sName )
{
	var sValue = "";
	var index = 0;

	if( oDoc.cookie )
		index = oDoc.cookie.indexOf( sName + "=" );
	else
		index = -1;

	if ( index == -1 )
	{
		sValue = "";
	}
	else
	{
		var countbegin = (oDoc.cookie.indexOf( "=", index ) + 1);
		if ( 0 < countbegin )
		{
			var countend = oDoc.cookie.indexOf( ";", countbegin );
			if ( countend == -1 )
				countend = oDoc.cookie.length;
			sValue = oDoc.cookie.substring( countbegin, countend );
		}
		else
		{
			sValue = "";
		}
	}
	return sValue;
}

function fetchNamedCookie( sName )
{
	return fetchDocumentCookie( document, sName );
}

function getOptions()
{
	//
	// load region selection
	//
	sRegion = fetchNamedCookie( "location" );
	objRegions = document.RegionForm.Region;
	nMaxOptions = objRegions.length;
	for ( n = 0; n < nMaxOptions; ++n )
	{
		if ( sRegion == objRegions.options[n].value )
		{
			document.RegionForm.Region.selectedIndex = n;
			return;
		}
	}
	// if we got to here then we did not find a match
	document.RegionForm.Region.selectedIndex = 0;
}

function setOptions()
{
	//
	// set region
	//
	nOption = document.RegionForm.Region.selectedIndex;
	sRegion = document.RegionForm.Region.options[nOption].value;

	setNamedCookie( "location", sRegion );

	replaceWindowURL( window, "index.asp?loc=" + sRegion );
}


// -->
</script>

<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<style>
<!--
.navbackground { background-color: #663300; color: #FFFFFF }
-->
</style>
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#FFFFFF" onload="getOptions()">

<table border="0" width="620" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include" u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="22514" endspan -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1ent.asp;;Edit Location"
	NavBack sPages, sLocArgx
	


%>

      <table border="0" width="100%" cellspacing="0" cellpadding="4">
        <tr>
          <td width="100%"></td>
        </tr>
        <tr>
          <td width="100%"></td>
        </tr>
      </table>
    </td>
    <td valign="top" width="470">
      <form method="POST" name="RegionForm" action="index_editlocation.asp" webbot-action="--WEBBOT-SELF--">
        <table border="0" width="100%" cellpadding="4" cellspacing="4">
          <tr>
            <td bgcolor="#FFFFCC" align="right"><select name="Region" size="10" onchange="setOptions()">
                <option>[None]</option>
                <%
'
' This function builds a table with links to "location" specific files.
' The names of the files are the same as the "current" file.
'
FUNCTION buildLocationSelectList()

	DIM	sCurrentPath
	DIM	sCurrentFile
	DIM	sFolderName
	DIM	sFile
	DIM	sSubPath
	DIM	sLocationFile
	DIM	sHREF
	DIM	sTemp
	DIM	i,j
	DIM	iCol

	DIM	objFSO
	DIM	objFolder
	DIM	objSubFolder
	DIM	objFile

	DIM	aLocList()
	DIM	nLocCount
	REDIM aLocList(8)
	nLocCount = 0


	SET objFSO = CreateObject( "Scripting.FileSystemObject" )
	SET objFolder = objFSO.GetFolder( Server.MapPath( "location" ) )

	sCurrentPath = LCase( Request.ServerVariables( "URL" ) )
	i = InStrRev( sCurrentPath, "/", -1, vbTextCompare )
	sCurrentFile = Mid( sCurrentPath, i+1 )

	FOR EACH objSubFolder IN objFolder.SubFolders

		sFolderName = LCase( objSubFolder.Name )
		IF NOT 1 = InStr( 1, sFolderName, "_", vbTextCompare ) THEN	'make sure we ignore _private
			sSubPath = "location/" & sFolderName & "/location.txt"
			sFile = Server.MapPath( sSubPath )
			IF objFSO.FileExists( sFile ) THEN
				sTemp = sSubPath
				sLocationFile = Server.MapPath( sTemp )
				SET objFile = objFSO.OpenTextFile( sLocationFile )
				sTemp = objFile.ReadLine
				objFile.Close
				SET objFile = Nothing

				i = InStr( 1, sTemp, ",", vbTextCompare )
				sTemp = Trim( Mid(sTemp,i+1) ) & ", " & Trim( Mid(sTemp,1,i-1) )

				IF UBound(aLocList) <= nLocCount THEN
					REDIM PRESERVE aLocList(nLocCount+8)
				END IF
				aLocList(nLocCount) = "<option value=""" & sFolderName & """>" & sTemp & "</option>"
				nLocCount = nLocCount + 1

			END IF
		END IF

	NEXT ' objSubFolder

	IF 0 < nLocCount THEN

		CALL locationSort( aLocList, 0, nLocCount-1 )

		i = 0
		FOR i = 0 TO nLocCount-1
			Response.Write aLocList(i) & vbCRLF
		NEXT 'i
	END IF

	SET objFolder = Nothing
	SET objSubFolder = Nothing
	SET objFile = Nothing
	SET objFSO = Nothing

END FUNCTION
buildLocationSelectList
                %>
              </select><br>
              <input type="button" value="Select" name="Select" onclick="setOptions()"></td>
            <td bgcolor="#FFFFCC">Select a location/vicinity from the list to
              allow for the display of local links for weather, news, movies,
              television, radio, etc..</td>
          </tr>
        </table>
      </form>
      <h3>WARNING:</h3>
      <p>Some Browsers do not correctly refresh the new information.&nbsp; If
      your browser does not show the correct location (in the title) after this
      page dismisses, simply select your browser's &quot;reload&quot; button.</td>
  </tr>
</table>

</body>

</html>