<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\locationnames.asp"-->
<!--#include file="_private\includeradio.asp"-->
<!--#include file="_private\navigation.asp"-->
<%
DIM	sPageTitle
DIM	sNavTitle
DIM	sKwdTitle
DIM	sDescTitle

sPageTitle = ""
sDescTitle = ""
IF 0 < Len(sLocationName) THEN
	sPageTitle = " - " & sLocationName
	sDescTitle = " for " & sLocationName & " and vicinity"
END IF

sNavTitle = ""
sKwdTitle = ""
IF 0 < Len(sLocationFullName) THEN
	sNavTitle = "<br>" & sLocationFullName
	sKwdTitle = ", " & LCase(sLocationAbbrevName) & ", " & UCase(sLocationAbbrevName) & ", " & sLocationFullName
END IF
%>
<html>

<head>
<title>Region<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="rating" content="General">
<meta name="ROBOTS" content="ALL">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ref.css"
media="screen">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0"
bgcolor="#FFFFFF">

<%
FUNCTION includeBodyTable( sFile )
%>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="150">
      <table border="0" width="150" cellspacing="0" cellpadding="0">
        <tr>
          <td width="100%"></td>
        </tr>
      </table>
    </td>
    <td><%includeBody( sFile )%>
    </td>
  </tr>
</table>
<%
END FUNCTION


SUB genIncludeLocal( sName )
	includeBody( "location\" & sLocation & "\" & sName )
END SUB

SUB genRelatedPages( sName, sTitle )

	DIM	oFSO
	DIM	strTemp
	DIM	i
	DIM	sFileName
	DIM	sFile
	DIM	sPath
	DIM	bFound
	
	DIM	aNames
	
	SET oFSO = CreateObject( "Scripting.FileSystemObject" )
	strTemp = Request.ServerVariables( "PATH_TRANSLATED" )
	i = InStrRev( strTemp, "\" )
	strTemp = Left( strTemp, i )
	
	sPath = oFSO.BuildPath( strTemp, "location\" & sLocation & "\" )
	aNames = SPLIT( sName, "," )
	sFile = aNames(0)
	
	bFound = FALSE
	FOR i = LBOUND(aNames) TO UBOUND(aNames)
		sFileName = oFSO.BuildPath( sPath, aNames(i) )
		IF oFSO.FileExists( sFileName ) THEN
			bFound = TRUE
			EXIT FOR
		END IF
	NEXT 'i
	
	IF bFound THEN
		Response.Write "<a href=""" & sFile & "?loc=" & sLocation & """>" & Server.HTMLEncode(sTitle) & "</a><br>" & vbCRLF
	END IF
	
	SET oFSO = Nothing

END SUB



%>


<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="150">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

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
		&	"1ref.asp;;Reference" & vbLF _
		&	"region.asp;;Regional Information" & sNavTitle
	NavBack sPages, sLocArgx
	
%>


      <%
      IF 0 < Len(sLocation) THEN
      %>
      <p align="center"><a href="region.asp?loc=">Other Locations</a>
      <%
      END IF
      IF 1 < LEN( sLocation ) THEN
      	Response.Write "<p align=""center""><strong>Related Pages:</strong><br>" & vbCRLF
      	genRelatedPages "index.asp,index_ent.asp,index_news.asp,index_sports.asp,index_weather.asp", "Grizzly Web Links"
		genRelatedPages "auto.asp", "Automotive"
		genRelatedPages "education.asp", "Education"
		genRelatedPages "health.asp", "Health & Medicine"
		genRelatedPages "maps.asp", "Maps / Atlases"
		genRelatedPages "motorcycle.asp", "Motorcycling"
		genRelatedPages "news.asp", "News"
		genRelatedPages "movies.asp", "Movies"
		genRelatedPages "parent.asp", "Parenting"
		'includeRadio( "location\" & sLocation & "\radio.txt" )
		genRelatedPages "radio.asp,radio.txt", "Radio"
		genRelatedPages "religion.asp", "Religion"
		genRelatedPages "sports.asp", "Sports"
		genRelatedPages "sports_baseball.asp", "Sports :: Baseball"
		genRelatedPages "sports_basketball.asp", "Sports :: Basketball"
		genRelatedPages "sports_bowling.asp", "Sports :: Bowling"
		genRelatedPages "sports_football.asp", "Sports :: Football"
		genRelatedPages "outdoors_golf.asp", "Sports :: Golf"
		genRelatedPages "sports_racing.asp", "Sports :: Racing"
		genRelatedPages "sports_volleyball.asp", "Sports :: Volleyball"
		genRelatedPages "television.asp", "Television"
		genRelatedPages "weather.asp,weather_forecast.asp,weather_radar.asp", "Weather"
      	Response.Write "</p>"
      END IF
      %>
    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="470">
<%
	IF 1 < Len( sLocation ) THEN
		genIncludeLocal( "region.asp" )
		genIncludeLocal( "maps.asp" )
		genIncludeLocal( "health.asp" )
		genIncludeLocal( "news.asp" )
		genIncludeLocal( "weather.asp" )
		genIncludeLocal( "auto.asp" )
		genIncludeLocal( "motorcycle.asp" )
		genIncludeLocal( "sports.asp" )
		genIncludeLocal( "sports_baseball.asp" )
		genIncludeLocal( "sports_basketball.asp" )
		genIncludeLocal( "sports_bowling.asp" )
		genIncludeLocal( "sports_football.asp" )
		genIncludeLocal( "outdoors_golf.asp" )
		genIncludeLocal( "sports_racing.asp" )
		genIncludeLocal( "sports_volleyball.asp" )
		genIncludeLocal( "movies.asp" )
		genIncludeLocal( "television.asp" )
		includeRadio( "location\" & sLocation & "\radio.txt" )
		genIncludeLocal( "radio.asp" )
		genIncludeLocal( "education.asp" )
		genIncludeLocal( "parent.asp" )
		genIncludeLocal( "religion.asp" )
	ELSE
		buildLocationTable()
	END IF
            %>
    </td>
  </tr>
</table>
<br clear="all">
<!--webbot bot="Include" u-include="_private/nav/ref_navbar.asp" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img src="../images/pie_tl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span class="small">Reference</span>&nbsp;
    </th>
    <td bgcolor="#996600" rowspan="2" class="navbackground"><table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="reference"><a href="address.asp" class="navigationsmall">Addresses</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="deskref.asp" class="navigationsmall">Desk Reference</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="dict.asp" class="navigationsmall">Dictionaries</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="education.asp" class="navigationsmall">Education</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="encycl.asp" class="navigationsmall">Encyclopedias</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="govern.asp" class="navigationsmall">Government</a></th>
      </tr>
    </table>
    <table border="0" width="100%" cellspacing="1">
      <tr>
        <th bgcolor="#CC9966" class="reference"><a href="history.asp" class="navigationsmall">History</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="maps.asp" class="navigationsmall">Maps</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="math.asp" class="navigationsmall">Mathematics</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="region.asp" class="navigationsmall">Regional Information</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="internet.asp" class="navigationsmall">Web / Internet</a></th>
        <th bgcolor="#CC9966" class="reference"><a href="isearch.asp" class="navigationsmall">Web-Search</a></th>
      </tr>
    </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" checked="false" valign="bottom" class="navbackground"><img src="../images/pie_bl.gif" border="0" WIDTH="16" HEIGHT="16"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img src="../images/pie_br.gif" border="0" WIDTH="16" HEIGHT="16"></td>
  </tr>
</table>
<!--webbot bot="Include" i-checksum="601" endspan -->

<!--webbot
bot="Include" u-include="../_private/include/footer.htm" tag="BODY" startspan -->


<br clear="all">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="5" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom">
      <form method="GET" name="SearchForm_bottom"
      action="submit/searchengine/grizzlyweblinks.asp">
        <table border="0" cellspacing="0">
          <tr>
            <td bgcolor="#FFCC99"><input type="text" name="q" size="25"> <input
              type="submit" value="Search Site" name="x"></td>
          </tr>
          <tr>
            <td><a href="submitlink.asp" class="small">Add
              Link...</a>&nbsp;&nbsp; <span class="small">*</span>&nbsp;&nbsp; <a
              href="comments.asp" class="small">Comments /
              Problems...</a></td>
          </tr>
        </table>
      </form>
    </td>
    <td align="right" valign="top"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    30 Sep 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none"
      href="../company/9copyright.htm"><font color="#CCCCCC" size="1">Copyright
      2004 Bear Consulting Group</font></a><font color="#CCCCCC" size="1"><a
      style="color: #CCCCCC; text-decoration: none"><br>
      </a><a href="../company/" style="color: #CCCCCC; TEXT-DECORATION: none">Service
      Provided by Bear Consulting Group</a></font></td>
  </tr>
</table>




<!--webbot bot="Include" i-checksum="59332" endspan -->


</body>

</html>