<%@ Language=VBScript %>
<%
OPTION EXPLICIT


DIM	g_oFSO
SET g_oFSO = Server.CreateObject("Scripting.FileSystemObject")

%>
<!--#include file="scripts\findfiles.asp"-->
<!--#include file="scripts\includebody.asp"-->
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Gallery - Bear Consulting Group</title>
<meta name="navigate" content="tab">
<meta name="navtitle" content="Gallery">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" href="0style.css" type="text/css">
<style type="text/css">
<!--

#galleryContent td p
{
	padding: 2px;
	border: 2px solid #999999;
}

-->
</style>
</head>

<body bgcolor="#FFFFFF">
<!--#include file="scripts\page_begin.asp"-->
<!--#include file="scripts\include_navigation.asp"-->
<!--#include file="scripts\include_gallery.asp"-->
<%


CLASS CTabFormatGray

	PROPERTY GET colorBackground()
		colorBackground = "#999999"
	END PROPERTY
	
	PROPERTY GET colorTab()
		colorTab = "#CCCCCC"
	END PROPERTY
	
	PROPERTY GET colorTabSelected()
		colorTabSelected = "#FFFFFF"
	END PROPERTY
	
	PROPERTY GET classTab()
		classTab = "shoppingtab"
	END PROPERTY
	
	PROPERTY GET classSelected()
		classSelected = ""
	END PROPERTY
	
	PROPERTY GET alignTabHoriz()
		alignTabHoriz = "center"
	END PROPERTY
	
	PROPERTY GET imageTL()
		imageTL = "images/pie_tl_gray.gif"
	END PROPERTY
	
	PROPERTY GET imageTR()
		imageTR = "images/pie_tr_gray.gif"
	END PROPERTY
	
	PROPERTY GET imageBL()
		imageBL = "images/pie_bl_gray.gif"
	END PROPERTY

	PROPERTY GET imageBR()
		imageBR = "images/pie_br_gray.gif"
	END PROPERTY
	
END CLASS


CLASS CTabMemberData

	PRIVATE m_aData
	PRIVATE m_aSplit
	PRIVATE m_i
	PRIVATE m_sURL

	PRIVATE SUB Class_Initialize
		m_sURL = ""
		m_i = 0
	END SUB

	
	PROPERTY GET RecordCount()
		RecordCount = UBOUND(m_aData) + 1
	END PROPERTY
	
	PROPERTY GET EOF()
		IF m_i <= UBOUND(m_aData) THEN
			EOF = FALSE
		ELSE
			EOF = TRUE
		END IF
	END PROPERTY
	
	SUB MoveFirst()
		m_i = 0
		privParse
	END SUB
	
	SUB MoveNext()
		m_i = m_i + 1
		privParse
	END SUB
	
	FUNCTION IsCurrent( x )
		IF m_i = x THEN
			IsCurrent = TRUE
		ELSE
			IsCurrent = FALSE
		END IF
	END FUNCTION
	
	PROPERTY GET HREF()
		HREF = m_sURL & m_aSplit(kFI_Name)
	END PROPERTY
	
	PROPERTY GET TabLabel()
		TabLabel = m_aSplit(kFI_Title)
	END PROPERTY
	
	'----------------
	
	PRIVATE SUB privParse()
		IF NOT EOF() THEN
			m_aSplit = SPLIT( m_aData(m_i), vbTAB, -1, vbTextCompare )
		END IF
	END SUB
	
	PROPERTY LET Data( a )
		m_aData = a
	END PROPERTY
	
	PROPERTY LET URL( s )
		m_sURL = s
	END PROPERTY
	
END CLASS





DIM	aNumbers



aNumbers = ARRAY( _
	"1", _
	"2", _
	"3", _
	"4", _
	"5", _
	"6", _
	"7", _
	"8", _
	"9", _
	"10", _
	"11", _
	"12", _
	"13", _
	"14", _
	"15", _
	"16", _
	"17", _
	"18", _
	"19", _
	"20", _
	"21", _
	"22", _
	"23", _
	"24", _
	"25", _
	"26", _
	"27", _
	"28", _
	"29", _
	"30", _
	"31", _
	"32", _
	"33", _
	"34", _
	"35", _
	"36", _
	"37", _
	"38", _
	"39" _
	)


aNumbers = ARRAY( _
	"One", _
	"Two", _
	"Three", _
	"Four", _
	"Five", _
	"Six", _
	"Seven", _
	"Eight", _
	"Nine", _
	"Ten", _
	"Eleven", _
	"Twelve", _
	"Thirteen", _
	"Fourteen", _
	"Fifteen", _
	"Sixteen", _
	"Seventeen", _
	"Eighteen", _
	"Nineteen", _
	"Twenty", _
	"Twenty-One", _
	"Twenty-Two", _
	"Twenty-Three", _
	"Twenty-Four", _
	"Twenty-Five", _
	"Twenty-Six", _
	"Twenty-Seven", _
	"Twenty-Eight", _
	"Twenty-Nine", _
	"Thirty", _
	"Thirty-One", _
	"Thirty-Two", _
	"Thirty-Three", _
	"Thirty-Four", _
	"Thirty-Five", _
	"Thirty-Six", _
	"Thirty-Seven", _
	"Thirty-Eight", _
	"Thirty-Nine", _
	"Forty", _
	"Forty-One", _
	"Forty-Two", _
	"Forty-Three", _
	"Forty-Four", _
	"Forty-Five", _
	"Forty-Six", _
	"Forty-Seven", _
	"Forty-Eight", _
	"Forty-Nine", _
	"Fifty" _
	)





	DIM	g_nPicturePage
	g_nPicturePage = 2

	DIM	oTabGen
	DIM	oTabData
	DIM	oTabFormat
	
	g_sPage = Request("page")
	
	SET oTabGen = NEW CTabGenerate
	SET oTabData = NEW CTabMemberData
	SET oTabFormat = NEW CTabFormatGray
	
	
	
	DIM	sGalleryPath
	sGalleryPath = findFolder( "cgi-bin\gallery" )
	
	buildGalleryList sGalleryPath
	
	
	DIM	nPages
	nFileCount = nGalleryCount \ g_nPicturePage
	IF 0 < ((nGalleryCount / g_nPicturePage) - nFileCount) THEN nFileCount = nFileCount + 1
	nPages = nFileCount
	
	
	REDIM aFileList(nFileCount-1)
	
	FOR nLen = 0 TO nFileCount-1
		aFileList(nLen) = nLen+1 _
				& vbTAB & nLen+1 _
				& vbTAB & nLen+1 _
				& vbTAB & aNumbers(nLen) _
				& vbTAB & "" _
				& vbTAB & ""
	
	NEXT 'nLen
	
	'buildGalleryList sGalleryPath
	
	g_sFile = ""
	g_nIndex = 0
	FOR nLen = 0 TO nFileCount-1
		aFileSplit = SPLIT( aFileList(nLen), vbTAB, -1, vbTextCompare )
		IF LCASE(g_sPage) = LCASE(aFileSplit(kFI_Name)) THEN
			g_sPageTitle = aFileSplit(kFI_Title)
			g_sFile = aFileSplit(kFI_Name)
			g_nIndex = nLen
			EXIT FOR
		END IF
	NEXT 'nLen
	IF "" = g_sFile THEN
		aFileSplit = SPLIT( aFileList(g_nIndex), vbTAB, -1, vbTextCompare )
		g_sFile = aFileSplit(kFI_Name)
	END IF

	
	oTabData.Data = aFileList
	oTabData.URL = "gallery.asp?page="
	
	SET oTabGen.TabData = oTabData
	SET oTabGen.TabFormat = oTabFormat
	oTabGen.MaxCols = 22
	oTabGen.Current = g_nIndex
	oTabGen.makeTabs
	
	
	Response.Write "<center>" & vbCRLF
%>
<table id="galleryContent">
<tr>
<td align="center">
<%
	
	DIM	i
	DIM	nStart
	DIM	nEnd
	DIM	aTemp
	DIM	j
	DIM	sFile
	DIM	oFile
	
	nStart = g_nIndex * g_nPicturePage
	nEnd = nStart + g_nPicturePage - 1
	IF UBOUND(aGalleryList) < nEnd THEN nEnd = UBOUND(aGalleryList)

	Response.Write "Pictures " & nStart+1 & " thru " & nEnd+1 & " of " & UBOUND(aGalleryList)+1

	FOR i = nStart TO nEnd
		aTemp = SPLIT( aGalleryList(i), vbTAB )
		'sFile = aTemp(kFI_Path)
		sFile = g_oFSO.BuildPath( sGalleryPath, aTemp(kFI_Name) )
		Response.Write "<p>"
		Response.Write "<img src=""picture.asp?file=" & Server.URLEncode( sFile ) & """>"
		'Response.Write "<img src=""" & virtualFromPhysicalPath( sFile ) & """>"
		j = INSTRREV( sFile, "." )
		IF 0 < j THEN
			sFile = LEFT(sFile,j) & "txt"
			IF g_oFSO.FileExists(sFile) THEN
				SET oFile = g_oFSO.OpenTextFile( sFile )
				Response.Write "<br>" & vbCRLF
				Response.Write Server.HTMLEncode(oFile.ReadAll())
				oFile.Close
				SET oFile = Nothing
			END IF
		END IF
		Response.Write "</p>" & vbCRLF
	NEXT 'i
	
%>
</td>
</tr>
</table>
<%
	Response.Write "</center>" & vbCRLF

	'includeBody "members\" & g_sFile

	oTabGen.makeTabsInverted
	
	SET oTabFormat = Nothing
	SET oTabData = Nothing
	SET oTabGen = Nothing

%>
	<table border="0" cellspacing="0" width="100%" cellpadding="0">
		<tr>
			<td bgcolor="#AAAAAA" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
		<tr>
			<td bgcolor="#CCCCCC" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
		<tr>
			<td bgcolor="#DDDDDD" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
		<tr>
			<td bgcolor="#EEEEEE" height="6"><spacer type="block" height="1" width="1"></td>
		</tr>
	</table>
<!--#include file="scripts\page_end.asp"-->
<!--webbot bot="Include" u-include="_private/byline.htm" tag="BODY" startspan -->

<script language="JavaScript">
<!--

function makeByLine()
{
	document.write( '<' + 'script language="JavaScript" src="http://' );
	if ( "localhost" == location.hostname )
	{
		document.writeln( 'localhost/GrizzlyWeb' );
	}
	else
	{
		document.writeln( 'GrizzlyWeb.com' );
	}
	document.writeln( '/company/designby.js"></' + 'script>' );
}
makeByLine()

//-->
</script>
<!--script language="JavaScript" src="http://GrizzlyWeb.com/company/designby.js"></script-->

<!--webbot bot="Include" i-checksum="30698" endspan -->

</body>

</html>
<%
SET g_oFSO = Nothing
%>