<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<html>

<head>
<title>Reference &amp; Education introduction - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ref.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<!--#include file="_private\ratings_meta_tags.asp"-->
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="150" cellspacing="0" cellpadding="0" align="left">
  <tr>
    <td valign="top" width="100%">
    <!--webbot bot="Include"
      u-include="_private/nav/0root.asp" tag="BODY" startspan -->

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a href="./" class="grizzlyweb">
    <img border="0" src="images/GrizzlyWebLinks.jpg" alt="Grizzly Web Links (Navigation)" width="150" height="65"></a></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="22514" -->
<%
DIM	sPages
'spages:::  url;class;title;tool-tips
	sPages = "index.asp;;Grizzly Web Links" & vbLF _
		&	"1ref.asp;;Reference & Education"
	NavBack sPages, sLocArgx
	
	sPages = "address.asp;;Addresses & Phone" & vbLF _
		&	"calendar.asp;;Calendar" & vbLF _
		&	"deskref.asp;;Desk Reference" & vbLF _
		&	"dict.asp;;Dictionaries / Thesauri" & vbLF _
		&	"education.asp;;Education" & vbLF _
		&	"encycl.asp;;Encyclopedias" & vbLF _
		&	"govern.asp;;Government" & vbLF _
		&	"history.asp;;History" & vbLF _
		&	"maps.asp;;Maps" & vbLF _
		&	"math.asp;science;Mathematics" & vbLF _
		&	"region.asp;;Regional Information" & vbLF _
		&	"internet.asp;;Web / Internet" & vbLF _
		&	"isearch.asp;;Web-Search"
	NavPages sPages, sLocArgx, "reference"

%>


    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="2" cellpadding="0">
  <tr>
    <td width="100%" valign="top" colspan="3">
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <td bgcolor="#CC9966" class="reference">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="reference">Quick Web Search</th>
                <td align="right"><a href="isearch.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody">
          <!--webbot bot="Include"
            u-include="_private/ref/qsearch.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
      <form method="GET" name="SearchForm"
      action="submit/searchengine/searchengine.asp">
        <table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><select name="e" size="1" onchange="handleEngineChange()">
                <option selected value="grizzlyweblinks">This Site</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="fast">Fast Search</option>
                <option value="google">Google!</option>
                <option value="looksmart">LookSmart</option>
                <option value="lycos">Lycos</option>
                <option value="nbci">NBCi</option>
                <option value="northernlight">Northern Light</option>
                <option value="dmoz">Open Directory (dmoz)</option>
                <option value="whatuseek">What-U-Seek</option>
                <option value="yahoo">Yahoo!</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="dogpile">DogPile</option>
                <option value="mamma">Mamma</option>
                <option value="omniseek">OmniSeek</option>
                <option value style="color: #CCCCCC">--------------------</option>
                <option value="websterdictionary" style="font-style:'italic'">Webster's
                Dictionary</option>
                <option value="websterthesaurus" style="font-style:'italic'">Webster's
                Thesaurus</option>
              </select> <input type="text" name="q" size="25"> <input
              type="submit" value="Find" name="x"></td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>
<script language="JavaScript">
<!--

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

function deleteDocumentCookie( oDoc, sName )
{
	oDoc.cookie = sName + "=";
}

function deleteCookie( sName )
{
	deleteDocumentCookie( document, sName );
}

function fetchDocumentCookie( oDoc, sName )
{
	var sValue = "";
	var index = 0;

	if( oDoc.cookie )
		index = oDoc.cookie.indexOf( sName + "=" );
	else
		index = -1;

	if ( index < 0 )
	{
		sValue = "";
	}
	else
	{
		var countbegin = (oDoc.cookie.indexOf( "=", index ) + 1);
		if ( 0 < countbegin )
		{
			var countend = oDoc.cookie.indexOf( ";", countbegin );
			if ( countend < 0 )
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

function loadSearchCookie()
{
	var sEngine = fetchNamedCookie( "GrizzlyWebSearch" );
	var objEngines = document.SearchForm.e;
	var nMaxOptions = objEngines.length;
	var n = 0;
	document.SearchForm.q.focus();
	for ( n = 0; n < nMaxOptions; ++n )
	{
		if ( sEngine == objEngines.options[n].text )
		{
			document.SearchForm.e.selectedIndex = n;
			return;
		}
	}
	/*
	// if we got to here then we did not find a match
	// we will just let it default
	*/
}


function handleEngineChange()
{
	document.SearchForm.q.focus();
	var nOption = document.SearchForm.e.selectedIndex;
	var sEngine = document.SearchForm.e.options[nOption].text;
	var which = document.SearchForm.e.options[nOption].value;
	if ( which.length < 1 )
	{
		document.SearchForm.e.selectedIndex = nOption - 1;
		return;
	}

	setNamedCookie( "GrizzlyWebSearch", sEngine );
}

loadSearchCookie();

//-->
</script>

<!--webbot bot="Include" endspan i-checksum="56068" -->

          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<table border="0" width="470" cellspacing="2" cellpadding="0">
  <tr>
    <td width="50%" valign="top">
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <td bgcolor="#CC9966" align="left" colspan="2" class="reference">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="reference">Dictionaries / Thesauri</th>
                <td align="right"><a href="dict.asp?<%=sLocArgx%>" class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody"><em><a
            href="http://www.onelook.com/index.html">OneLook</a></em></td>
          <td bgcolor="#FFFFCC" class="boxbody">
          <!--webbot bot="Include"
            u-include="_private/ref/dictonel.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><form METHOD="POST"
    ACTION="http://www.onelook.com/cgi-bin/cgiwrap/bware/dofind.cgi" NAME="inword">
      <table border="0" width="100%" cellspacing="1" cellpadding="0">
        <tr>
          <td width="100%" colspan="2"><input NAME="word" value size="15"> <input TYPE="submit"
          VALUE="Search"></td>
        </tr>
        <tr>
          <td valign="top" align="right"><input TYPE="radio" NAME="type" VALUE="type_x" CHECKED></td>
          <td valign="top"><a HREF="http://www.onelook.com/browse.shtml#type_x">Special Subjects</a>
          <font SIZE="-1">(If no match then automatically tries General)</font></td>
        </tr>
        <tr>
          <td valign="top" align="right"><input TYPE="radio" NAME="type" VALUE="type_g"></td>
          <td valign="top"><a HREF="http://www.onelook.com/browse.shtml#type_g">General Words</a> </td>
        </tr>
        <tr>
          <td valign="top" align="right"><input TYPE="radio" NAME="type" VALUE="type_w"></td>
          <td valign="top"><a HREF="http://www.onelook.com/browse.shtml#type_w">Spelling Word Lists</a>
          </td>
        </tr>
        <tr>
          <td valign="top" align="right"><input TYPE="radio" NAME="type" VALUE="type_a"></td>
          <td valign="top">All Dictionaries (<font SIZE="-1">takes longer</font>) </td>
        </tr>
        <tr>
          <td width="100%" colspan="2"><small><small>HINTS: Adding wild cards expands the search.<br>
          (* = any number of characters and <br>
          ? = exactly one character). <br>
          For example, &quot;tomo*ow&quot;, &quot;tomo??ow&quot; or &quot;tomor*&quot; will find
          &quot;tomorrow&quot;. </small></small></td>
        </tr>
      </table>
    </form>
    </td>
  </tr>
</table>
<!--webbot bot="Include" endspan i-checksum="24924" -->

          </td>
        </tr>
        <tr>
          <td colspan="2">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td class="gutter" bgcolor="#C0C0C0" height="1"><img border="0"
                  src="../images/000000.gif"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" nowrap class="boxbody"><a
            href="http://www.m-w.com/dictionary.htm">WWWebster</a></td>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody">
          <!--webbot
            bot="Include" u-include="_private/ref/dictwebs.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><form method="post" action="http://www.m-w.com/cgi-bin/dictionary">
      <input type="hidden" name="book" value="Dictionary"><p><input type="text" name="va"
      size="15"> <input type="submit" value="Search"></p>
    </form>
    </td>
  </tr>
</table>
<!--webbot
            bot="Include" endspan i-checksum="3816" -->

          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFF99" colspan="2" class="boxsubtitle"><strong>Thesaurus</strong></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody"><em><a
            href="http://www.m-w.com/thesaurus.htm">WWWebster Thesaurus</a></em></td>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody">
          <!--webbot
            bot="Include" u-include="_private/ref/thesari.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td><form method="post" action="http://www.m-w.com/cgi-bin/thesaurus">
      <input type="hidden" name="book" value="Thesaurus"><p><input type="text" name="va"
      size="15"> <input type="submit" value="Search"></p>
    </form>
    </td>
  </tr>
</table>
<!--webbot
            bot="Include" endspan i-checksum="28984" -->

          </td>
        </tr>
      </table>
    </td>
    <td valign="top" class="gutter" bgcolor="#C0C0C0" width="1"><img border="0"
      src="../images/000000.gif"></td>
    <td width="50%" valign="top">
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <td align="left" bgcolor="#CC9966" colspan="2" class="reference">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="reference">Encyclopedia</th>
                <td align="right"><a href="encycl.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody"><a
            href="http://infoplease.com/">Information Please</a></td>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody">
          <!--webbot
            bot="Include" u-include="_private/ref/encycl.htm" tag="BODY" startspan -->

<table border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <form method="GET" action="http://infoplease.com/search.php3">
        <table border="0" cellspacing="1" cellpadding="0">
          <tr>
            <td align="right"><input value name="query" size="18"> <select
              name="in" size="1">
                <option value="all" selected>All Sources</option>
                <option value="general">Almanac</option>
                <option value="entertainment">Entertainment</option>
                <option value="sports">Sports</option>
                <option value="dictionary">Dictionary</option>
                <option value="encyclopedia">Encyclopedia</option>
              </select> <input type="submit" value="Search" alt="go!" name="go"></td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>

<!--webbot
            bot="Include" endspan i-checksum="46984" -->

          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFF99" valign="top" colspan="2" class="boxsubtitle"><strong>Almanacs</strong></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" colspan="2" class="boxbody"><a
            href="http://www.howstuffworks.com/index.htm">HowStuffWorks</a><br>
            <a href="http://www.almanac.com/"><em>Old Farmers Almanac</em></a></td>
        </tr>
      </table>
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <td align="left" bgcolor="#CC9966" class="reference">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="reference">Addresses &amp; Phone</th>
                <td align="right"><a href="address.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody">
            <a href="http://mmiworld.com/bigchoice.htm">Telephone Area Code
            Finder</a> <br>
            <a href="submit/affiliate/whitepages_com.asp"><img border="0" src="images/logos/whitepages.gif"></a></td>
        </tr>
      </table>
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <th align="left" bgcolor="#CC9966" class="science">Calculators</th>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" class="boxbody"><a
            href="http://www.convert-me.com/en/">Convert-Me.com</a><br>
            <a href="rpn.htm">RPN Calculator</a></td>
        </tr>
      </table>
      <table border="0" cellpadding="2" width="100%">
        <tr>
          <td align="left" bgcolor="#CC9966" class="reference">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <th align="left" class="reference">Magazines</th>
                <td align="right"><a href="magazine_ref.asp?<%=sLocArgx%>"
                  class="more">more...</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFCC" valign="top" class="boxbody">
          <!--webbot
            bot="Include" u-include="_private/magazine/1ref.htm" tag="BODY" startspan -->

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><a href="http://www.keymags.co.uk/afm/index.html">AirForcesMonthly</a><br>
      <a href="http://www.thehistorynet.com/AmericanHistory/">AMERICAN HISTORY</a><br>
      <a href="http://www.cq.com/">Congressional Quarterly</a><br>
      <a href="http://www.readersdigest.com/">Reader's Digest</a><br>
      <a href="http://www.edweek.org/tm/">Teacher</a> <br>
      (<a href="magazine_ref.asp">more...</a>)</td>
  </tr>
</table>

<!--webbot
            bot="Include" endspan i-checksum="48545" -->

          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<script language="JavaScript">
<!--
	LinkExchangePage = "8";
//-->
</script>
<!--webbot bot="Include" u-include="_private/banners/le_banner.asp" tag="BODY" startspan
-->

<%
IF 0 = 1 THEN
	DIM	sLEhost

	sLEHost = LCase(Request.ServerVariables("HTTP_HOST"))

	IF 0 = InStr(1,sLEHost,"tosh",1)  AND  0 = InStr(1,sLEHost,"localhost",1) THEN
%>
<br clear="all">
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr>
    <td align="center" nowrap><script language="JavaScript">
<!--

	var sTempLoc = window.location.href;
	var sTemp = sTempLoc.toLowerCase();

	if ( sTemp.indexOf("file:") < 0  &&  sTemp.indexOf("//tosh") < 0  &&  sTemp.indexOf("//localhost") < 0 )
	{
		//<!-- BEGIN LINKEXCHANGE CODE -->

		var sTempPage;

		if ( !LinkExchangePage )
			sTempPage = "1"
		else
			sTempPage = "" + LinkExchangePage;

		with (document)
		{
			write('<iframe src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showiframe?" width=468 height=60 ');
			writeln('marginwidth=0 marginheight=0 hspace=0 vspace=0 frameborder=0 scrolling=no>');
			write('<a href="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/clickle" target="_top">');
			writeln('<img width=468 height=60 border=0 ismap alt="" ');
			write('src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showle?"></a>');
			writeln('</iframe><br>');
			write('<a href="http://leader.linkexchange.com/');
			write(sTempPage);
			write('/X921570/clicklogo" target="_top">');
			write('<img src="http://leader.linkexchange.com/');
			write(sTempPage);
			writeln('/X921570/showlogo?" width=468 height=16 border=0 ismap alt=""></a>');
		}

		//<!-- END LINKEXCHANGE CODE -->
	}
//-->
</script></td>
  </tr>
</table>
<%
	END IF
END IF
%>

<!--webbot bot="Include" endspan i-checksum="12126"
-->

<!--webbot bot="Include" u-include="_private/nav/0root_navbar.asp" tag="BODY" startspan
-->

<br clear="all">
<!--table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td height="10"><img src="../../../images/000000.gif" width="1" height="1"></td>
  </tr>
</table-->
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" align="left" valign="top" width="16"><img
      src="../images/pie_tl.gif" border="0" width="16" height="16"></td>
    <th bgcolor="#663300" align="right" rowspan="3"><font color="#FFCC00">Web
      Links</font></th>
    <td bgcolor="#663300" rowspan="3">
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="entertainment"><a href="1ent.asp"
            class="navigationsmall">Entertainment</a></th>
          <th bgcolor="#CC9966" class="home"><a href="1home.asp"
            class="navigationsmall">Home &amp; Family</a></th>
          <th bgcolor="#CC9966" class="living"><a href="1living.asp"
            class="navigationsmall">Living</a></th>
          <th bgcolor="#CC9966" class="money"><a href="1money.asp"
            class="navigationsmall">Money &amp; Business</a></th>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="1">
        <tr>
          <th bgcolor="#CC9966" class="news"><a href="1news.asp"
            class="navigationsmall">News &amp; Events</a></th>
          <th bgcolor="#CC9966" class="recreation"><a href="1rec.asp"
            class="navigationsmall">Recreation</a></th>
          <th bgcolor="#CC9966" class="reference"><a href="1ref.asp"
            class="navigationsmall">Reference</a></th>
          <th bgcolor="#CC9966" class="science"><a href="1sci.asp"
            class="navigationsmall">Science &amp; Nature</a></th>
          <th bgcolor="#CC9966" class="technology"><a href="1tech.asp"
            class="navigationsmall">Technology</a></th>
        </tr>
      </table>
    </td>
    <td bgcolor="#663300" valign="top" align="right"><img
      src="../images/pie_tr.gif" border="0" width="16" height="16"></td>
  </tr>
  <tr>
    <td bgcolor="#663300" align="left" width="16"><img
      src="../images/000000.gif" width="1" height="1"></td>
    <td bgcolor="#663300" height="1"><img src="../images/000000.gif"
      alt="." width="1" height="1"></td>
  </tr>
  <tr>
    <td bgcolor="#663300" align="left" valign="bottom" width="16"><img
      src="../images/pie_bl.gif" border="0" width="16" height="16"></td>
    <td bgcolor="#663300" valign="bottom" align="right"><img
      src="../images/pie_br.gif" alt="pie_br.gif (861 bytes)" border="0"
      width="16" height="16"></td>
  </tr>
</table>

<!--webbot bot="Include" endspan i-checksum="12083"
-->

<!--webbot bot="Include" u-include="../_private/include/footer.asp"
tag="BODY" startspan -->



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




<!--webbot bot="Include" endspan i-checksum="37146" -->



</body>

</html>