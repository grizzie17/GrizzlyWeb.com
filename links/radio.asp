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
<title>Radio<%=sPageTitle%> - Grizzly Web Links</title>
<meta name="keywords"
content="radio, Radio, station, stations, list<%=sKwdTitle%>">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ent.css"
media="screen">
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0">

<table border="0" width="620" cellspacing="0" cellpadding="0">
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
		&	"1ent.asp;;Entertainment" & vbLF _
		&	"radio.asp;;Radio" & sNavTitle
	NavBack sPages, sLocArgx
%>

      <%IF 0 < Len(sLocation) THEN%>
      <p align="center"><a href="radio.asp?loc=">Other Locations</a><%END IF%>
            <p align="center"><b>Related Pages:</b><br>
            <a href="television.asp?<%=sLocArgx%>">Television</a></p>
      </td>
    <td valign="top" width="470"><%
	IF 1 < Len( sLocation ) THEN
		includeRadio( "location\" & sLocation & "\radio.txt" )
		includeBody( "location\" & sLocation & "\radio.asp" )
	ELSE
		buildLocationTable()
	END IF
      %>
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th align="left" bgcolor="#CC9966" class="entertainment">Directories</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.100000watts.com/">100000watts.com</a><br>
                  <a href="http://www.ilgradio.de/index.html">ILGRadio -
                  International Listening Guide</a><br>
                  <a
                  href="http://dialspace.dial.pipex.com/town/place/abn39/us.htm">U.S.
                  Radio Channel Listing</a><br>
                  <a
                  href="http://dialspace.dial.pipex.com/town/place/abn39/index.html">Mikes
                  Radio World</a>&nbsp;<br>
                  <a href="http://www.radiodirectory.com/">Radiodirectory.com</a>&nbsp;<br>
                  <a href="http://www.radio-locator.com/">Radio-Locator</a> <br>
				<a href="http://www.radiolovers.com/">RadioLovers.com - Old Time 
				Radio Shows</a><br>
                  <a href="http://virtualtuner.com/">VirtualTuner.com</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th align="left" bgcolor="#CC9966" class="entertainment">Online
                  Broadcasting</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC"><a href="http://www.live365.com/">Live365.com</a>&nbsp;<br>
                  <a href="http://talkradio.lycos.com/talkradio/lycos/home/home.asp">Lycos Talk Radio</a><br>
                  <a href="http://www.netradio.com/">NetRadio.com</a><br>
                  <a href="http://www.webradio.com/">WebRadio.com</a></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="_private/nav/ent_navbar.asp" tag="BODY" startspan -->

<br clear="all">
<!--table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../../../images/000000.gif" width="1" height="1"></td>
  </tr>
</table-->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#996600" align="left" valign="top" class="navbackground"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#996600" align="right" rowspan="2" class="navbackground"><span
      class="small">Entertainment</span>&nbsp;</th>
    <td bgcolor="#996600" rowspan="2" class="navbackground">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a href="art.asp"
            class="navigationsmall">Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="books.asp"
            class="navigationsmall">Books</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="comics.asp"
            class="navigationsmall">Comics</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="humor.asp"
            class="navigationsmall">Humor</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="movies.asp"
            class="navigationsmall">Movies</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="music.asp"
            class="navigationsmall">Music</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="magazine.asp" class="navigationsmall">News Stand</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="perform.asp" class="navigationsmall">Performance Art</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="radio.asp"
            class="navigationsmall">Radio</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="scifi.asp"
            class="navigationsmall">Science Fiction</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a
            href="television.asp" class="navigationsmall">Television</a></th>
          <th bgcolor="#CC9966" class="entertainment"><a href="trivia.asp"
            class="navigationsmall">Trivia</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img
      src="../images/pie_tr.gif" border="0"></td>
  </tr>
  <tr>
    <td bgcolor="#996600" align="left" valign="bottom" class="navbackground"><img
      src="../images/pie_bl.gif" border="0"></td>
    <td bgcolor="#996600" class="navbackground" valign="bottom" align="right"><img
      src="../images/pie_br.gif" border="0"></td>
  </tr>
</table>

<!--webbot bot="Include" i-checksum="8181" endspan -->

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