<%
'---------------------------------------------------------------------
'
'            Copyright 1986 .. 2005 Bear Consulting Group
'                          All Rights Reserved
'
'    This software-file/document, in whole or in part, including	
'    the structures and the procedures described herein, may not	
'    be provided or otherwise made available without prior written
'    authorization.  In case of authorized or unauthorized
'    publication or duplication, copyright is claimed.
'
'---------------------------------------------------------------------

'OPTION EXPLICIT


DIM g_oFSO
SET g_oFSO = CreateObject( "Scripting.FileSystemObject" )
%>
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<!--#include file="scripts/sortutil.asp"-->
<!--#include file="scripts/remind.asp"-->
<!--#include file="scripts/remind_files.asp"-->
<!--#include file="scripts/remind_utils.asp"-->
<%


DIM	sMon
DIM	m
sMon = Request("m")
IF 0 < LEN(sMon) THEN
	m = CINT(sMon)
ELSE
	m = 6
END IF

%>
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<title>Calendar - Grizzly Web Links</title>
<meta name="rating" content="General">
<meta name="ROBOTS" content="ALL">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" type="text/css">
<link rel="stylesheet" title="Category Styles" href="0style_ref.css" type="text/css">
<link rel="stylesheet" href="<%=remindCSS()%>" type="text/css">
<style type="text/css">
<!--
.line        { border-bottom: 2px solid black }
.headline    { font-family: sans-serif; font-size: xx-small }
.title    { font-family: sans-serif; font-size: xx-small }
.RemindMonthHeader { background-image: url('images/bkg_remindMonthHeader.jpg') }



h1, h2, h3, h4 { background-color: #FFDD99; font-family: sans-serif; font-weight: bold; 
               border-bottom: 2px solid black; padding: 6px }
th { font-family: sans-serif }


.RmdToday     { font-size: large; }


-->
</style>
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

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

<!--webbot bot="Include" i-checksum="22514" endspan --><%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1ref.asp;;Reference" & vbLF _
		&	"calendar.asp;;Calendar"
	NavBack sPages, sLocArgx

	sPages = "calendar_defs.asp;;Calendar Definitions" & vbLF
	NavPages sPages, sLocArgx, "reference"
	
%>

<center>
<table border="0" cellspacing="0" cellpadding="2">
  <tr>
    <th width="100%" nowrap>Display<br>
      Months<br>
      <a href="calendar.asp?m=3&<%=sLocArgx%>">3</a>, <a href="calendar.asp?m=6&<%=sLocArgx%>">6</a>, <a href="calendar.asp?m=9&<%=sLocArgx%>">9</a>,<br>
      <a href="calendar.asp?m=12&<%=sLocArgx%>">12</a>, <a href="calendar.asp?m=18&<%=sLocArgx%>">18</a>, <a href="calendar.asp?m=24&<%=sLocArgx%>">24</a>,<br>
      <a href="calendar.asp?m=36&<%=sLocArgx%>">36</a>, <a href="calendar.asp?m=48&<%=sLocArgx%>">48</a>, <a href="calendar.asp?m=60&<%=sLocArgx%>">60</a>
      </th>
  </tr>
</table>
</center>
      </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" width="470">
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%">
<%
DIM	oCalendar


DIM	nYear, nYearEnd
DIM	nMon, nMonEnd

nYear = YEAR(NOW)
nMon = MONTH(NOW)
nMonEnd = nMon + m
IF 12 < nMonEnd THEN
	nYearEnd = nYear + FIX(nMonEnd/12)
	nMonEnd = nMonEnd MOD 12
ELSE
	nYearEnd = nYear
END IF

'Response.Write "m = " & nMon & ", y = " & nYear & "<br>"
'Response.Write "m = " & nMonEnd & ", y = " & nYearEnd & "<br>" & vbCRLF
		
DIM	nDateBegin
DIM	nDateEnd

nDateBegin = jdateFromGregorian( 1, nMon, nYear )
nDateEnd = jdateFromGregorian( 1, nMonEnd, nYearEnd ) - 1



'nDateBegin = jdateFromVBDate( NOW )
'nDateEnd = nDateBegin + 28 * 3 - 1
'nDateEnd = -14	'pending

SET oCalendar = loadRemindFiles( nDateBegin, nDateEnd, "", "holiday,usa,none", TRUE, NOW )
IF NOT Nothing IS oCalendar THEN

	'Load the XSL
	DIM	oXSL
	DIM	oXML
	SET oXSL = Server.CreateObject("msxml2.DOMDocument")
	'SET oXSL = Server.CreateObject("Microsoft.XMLDOM")
	oXSL.async = false
	oXSL.load(Server.MapPath("scripts/remind.xslt"))
	
	SET oXML = oCalendar.xmldom
	Response.Write oXML.transformNode(oXSL)

END IF


%>
    </td>
  </tr>
</table>

      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td width="50%" valign="top">
            <!--table border="0" cellpadding="2" cellspacing="2" width="100%">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">Directories</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"></td>
              </tr>
            </table-->
          </td>
          <td width="50%" valign="top">
            &nbsp;</td>
        </tr>
        <tr>
          <td width="50%" valign="top">
            &nbsp;</td>
          <td width="50%" valign="top">
            &nbsp;</td>
        </tr>
      </table>
    </td>
  </tr>
</table>
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
<!--webbot bot="Include" i-checksum="601" endspan --><!--webbot
bot="Include" u-include="../_private/include/footer.asp" tag="BODY" startspan -->



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




<!--webbot bot="Include" i-checksum="37146" endspan -->

</body>

</html>