<!--#include file="_private\includeBody.asp"-->
<!--#include file="_private\deflocation.asp"-->
<!--#include file="_private\navigation.asp"-->
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Internet / Search - Grizzly Web Links</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ref.css"
media="screen">
</head>

<body onload="loadSearchCookie()" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

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
		&	"1ref.asp;;Reference" & vbLF _
		&	"isearch.asp;;Web/Internet Search & Browse"
	NavBack sPages, sLocArgx
	
%>

    </td>
    <td valign="top" width="470">
      <table border="0" width="100%" cellspacing="3">
        <tr>
          <td align="center" bgcolor="#CCCCCC" class="small"><a
            href="#Advanced Search" target="_self">Advanced Search</a></td>
          <td align="center" bgcolor="#CCCCCC" class="small"><a
            href="#Directories" target="_self">Directories</a></td>
          <td align="center" bgcolor="#CCCCCC" class="small"><a
            href="#Find People" target="_self">Find People/Places</a></td>
          <td align="center" bgcolor="#CCCCCC" class="small"><a
            href="#MetaSearch" target="_self">MetaSearch</a></td>
          <td align="center" bgcolor="#CCCCCC" class="small"><a href="#Portals"
            target="_self">Portals</a></td>
          <td align="center" bgcolor="#CCCCCC" class="small"><a href="#Search"
            target="_self">Search</a></td>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td valign="top" colspan="2">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">Quick Web
                  Search</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
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

<!--webbot bot="Include" i-checksum="56068" endspan -->

                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td valign="top" width="50%">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference"><a
                  name="Portals">Portals</a></th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC" valign="top"><em>
                <a href="http://www.altavista.com/">AltaVista</a><br>
                  <a href="http://www.aol.com/">AOL.com</a></em><br>
                  <a href="http://www.excite.com/">e<em>X</em>cite</a><br>
                  <a href="http://www.go2net.com/">Go2Net</a><em>&nbsp;<br>
                  <a href="http://www.looksmart.com/">LookSmart</a><br>
                  <a href="http://www.lycos.com/">Lycos</a></em><br>
                  <a href="http://www.msn.com/">MSN.com</a><br>
                  <a href="http://home.nbci.com/">NBCi</a><br>
                  <a href="http://home.netscape.com/">NetCenter</a><br>
                  <em><a href="http://www.yahoo.com/">Yahoo!</a></em></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference"><a
                  name="Search">Search</a></th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC">
                  <a href="http://www.2020search.com/">2020search</a><br>
                  <a href="http://www.alltheweb.com/">All the Web</a> (FastSearch)<br>
                  <a href="http://www.anzwers.com.au/">ANZWERS</a><br>
                  <a href="http://www.aol.com/netfind/home.html">AOL NetFind</a><br>
                  <a href="http://www.directhit.com/">Direct Hit</a><br>
                  <a href="http://www.google.com/">Google!</a><br>
                  <a href="http://raging.com/">Raging.com</a> (AltaVista)<br>
                  <a href="http://www.scrubtheweb.com/">Scrub The Web</a>&nbsp;<br>
                  <a href="http://vivisimo.com/">Vivisimo Clustering</a><br>
                  <a href="http://www.whatuseek.com/">What-U-Seek</a><br>
                  <a href="http://www.where2go.com/">Where2Go</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference"><a
                  name="MetaSearch">MetaSearch</a></th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.1blink.com/">1Blink.com</a><br>
                  <a href="http://37.com/">37.com - 37 Search Engines!</a><br>
                  <a href="http://www.800go.com/800go.html">800go</a><br>
                  <a href="http://www.askjeeves.com/">Ask Jeeves</a><br>
                  <a href="http://www.chubba.com/">chubba.com</a>&nbsp;<br>
                  <a href="http://www.c4.com/">C4</a><br>
                  <a href="http://www.cyber411.com/">Cyber 411</a><br>
                  <a href="http://www.debriefing.com/">Debriefing</a><br>
                  <a href="http://www.dogpile.com/">DogPile</a><br>
                  <a href="http://www.explode2000.com/">Explode2000</a><br>
                  <a href="http://www.itools.com/find-it/">Find-It!</a><br>
                  <a href="iwebsearch.asp">Grizzly Multi-Search</a><br>
                  <a href="http://www.highway61.com/">Highway 61</a><br>
                  <a href="http://www.infind.com/">Inference Find!</a><br>
                  <a href="http://www.isleuth.com/">iSleuth</a>&nbsp;<br>
                  <a href="http://ixquick.com/eng/">ixquick</a><br>
                  <a href="http://www.mamma.com/">Mamma</a><br>
                  <a href="http://www.megaspider.com/">MegaSpider</a><br>
                  <em><a href="http://www.metacrawler.com/">MetaCrawler</a></em><br>
                  <a href="http://www.metafind.com/">MetaFind</a><br>
                  <a href="http://metasearch.com/">MetaSearch</a><br>
                  <a href="http://www.oneseek.com/">OneSeek.Com</a> <br>
                  <a href="http://www.planetsearch.com/">PlanetSearch</a><br>
                  <a href="http://www.profusion.com/">ProFusion</a><br>
                  <a href="http://www.seek123.com/">Seek123</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">Usenet
                  Search</th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.dejanews.com/">DejaNews</a> - source for
                  internet discussion groups<br>
                  <a href="http://www.reference.com/">Reference.COM</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">Search
                  Other</th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.nexor.com/public/aliweb/doc/search.html">ALIWEB</a>
                  - search for registered services on the web<br>
                  <a href="http://www.allworld.net/">All World Internet Services</a><br>
                  <a href="http://www.askjeeves.com/">Ask Jeeves</a><br>
                  <a href="http://www.thedaily.com/bikini.html">Daily Bikini</a>&nbsp;<br>
                  <a href="http://www.domainsurfer.com/">DomainSurfer</a><br>
                  <a href="http://www.findsame.com/">FindSame</a><br>
                  <a href="http://ftpsearch.ntnu.no/">FTP Search</a><br>
                  <a href="http://www.happytrails.com/">Happy Trails</a> -
                  search engine sites<br>
                  <a href="http://www.infohiway.com/">infohiway</a> -
                  information for web developers<br>
                  <a href="http://www.opentext.com/">OpenText</a> - web search
                  and colaboration services<br>
                  <a href="http://www.cs.colostate.edu/~dreiling/smartform.html">SavvySearch</a><br>
                  <a href="http://www.websitez.com/">WebSitez</a> - find
                  web-site by site name</td>
              </tr>
            </table>
          </td>
          <td valign="top" width="50%">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference"><a
                  name="Directories">Channels/Directories</a></th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.100hot.com/">100hot.com</a><br>
                  <a href="http://www.4anything.com/">4anything</a><br>
                  <a href="http://about.com/">About.com</a><br>
                  <a href="http://www.access-search-engines.com/">Access Search
                  Engines</a><br>
                  <a href="http://www.alcanseek.com/">AlCanSeek</a> - Alaska
                  &amp; Canada<br>
                  <a href="http://www.allsearchengines.com/">AllSearchEngines.com</a><br>
                  <a href="http://www.britannica.com/">Britannica</a><br>
                  <a href="http://www.ceoexpress.com/">CEO Express</a><br>
                  <a href="http://www.devsearch.com/">DevSearch</a><br>
                  <a href="http://www.dvorak.org/home.htm">Dvorak's Home page</a><br>
                  <a href="http://home.microsoft.com/exploring/exploring.asp">Exploring
                  the Internet</a><br>
                  <a href="http://www.findlink.com/">FindLink</a><br>
                  <a href="http://www.rhapsodyrecords.com/floodpage3.htm">floodpage</a><br>
                  <a href="http://www.einet.net/">Galaxy</a>&nbsp;<br>
                  <a href="http://www.go.com/">Go.com</a><br>
                  <a href="./">Grizzly Web Links</a><br>
                  <a href="http://ahandyguide.com/">HandiLinks</a><br>
                  <a href="http://www.hotbot.com/">Hot Bot</a><br>
                  <a href="http://www.infospace.com/">InfoSpace</a><br>
                  <a href="http://launchbase.net/">Launchbase Network</a><br>
                  <a href="http://www.libraryspot.com/">LibrarySpot</a><br>
                  <a href="http://www.thefrontpage.com/search/">List of Lists</a>
                  - the frontpage<br>
                  <a href="http://www.mckinley.com/">Magellan</a><br>
                  <a href="http://mel.lib.mi.us/main-index.html">MEL</a> -
                  Michigan Electronic Lib<br>
                  <a href="http://www.netguide.com/">NetGuide</a><br>
                  <a href="http://dmoz.org/">Open Directory Project</a><br>
                  <a href="http://peekaboo.net/">Peek-A-Boo</a><br>
                  <a href="http://www.planetclick.com/">PlanetClick</a><br>
                  <em><a href="http://www.search.com/">Search.com</a></em><br>
                  <a href="http://www.searchengine2.com/">SearchEngine2.com</a><br>
                  <a href="http://www.searchking.com/">SearchKing</a><br>
                  <a href="http://www.selectsurf.com/">SelectSurf</a><br>
                  <a href="http://www.stpt.com/">Starting Point</a><br>
                  <a href="http://surffast.com/">Surf Fast.com</a><br>
                  <a href="http://www.topclick.com/">TopClick.com</a><br>
                  <em><a href="http://www.webcrawler.com/">WebCrawler</a></em><br>
                  <a href="http://www.webportal.org/">Web Portal</a><br>
                  <a href="http://websearch2k.com/">Web Search 2K</a><br>
                  <a href="http://www.whatuseek.com/">What-U-Seek</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference"><a
                  name="Find People">Find People/Places</a></th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.allonesearch.com/">All in One</a><br>
                  <a href="http://www.anywho.com/index.html">AnyWho</a><br>
                  <a href="http://www.bigfoot.com/">BigFoot</a><br>
                  <a href="http://www.hotbot.com/">Hot Bot</a><br>
                  <a href="http://www.infospace.com/">InfoSpace</a><br>
                  <a href="http://www.iaf.net/">internet @ddress finder</a><br>
                  <a href="http://www.mamma.com/">Mamma</a><br>
                  <a href="http://www.metacrawler.com/">MetaCrawler</a><br>
                  <a href="http://www.search.com/">Search.com</a><br>
                  <a href="http://www.switchboard.com/">Switchboard</a><br>
                  <a href="http://www.whowhere.com/">WhoWhere</a></td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">Directories</th>
              </tr>
              <tr>
                <td width="100%" bgcolor="#FFFFCC"><a
                  href="http://www.1second.com/others.htm">1Second.com</a><br>
                  <a href="http://www.blueangels.net/">BlueAngles.net</a> -
                  Search Engines in Review<br>
                  <a href="http://www.happytrails.com/">Happy Trails</a></td>
              </tr>
            </table>
            <p>&nbsp;</td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" class="reference"><a
            name="Advanced Search">eXcite Advanced Search</a></th>
        </tr>
        <tr>
          <td>
            <form action="http://www.excite.com/search.gw" method="get">
              <input type="hidden" name="FL_1" value="3"><input type="hidden"
              name="FL_2" value="4"><input type="hidden" name="FL_3" value="2"><input
              type="hidden" name="mode" value="advanced"><input type="hidden"
              name="numFields" value="4"><input type="hidden" name="lk"
              value="default"><input type="hidden" name="sorig" value="rpage">
              <table border="0" cellpadding="2" width="100%">
                <tr>
                  <td align="right" bgcolor="#FFFFCC" valign="bottom"><font
                    face="geneva,arial" size="-1"><b>&nbsp;I want to search </b><select
                    name="c" size="1">
                      <option selected value="web">the Web</option>
                      <option value="web.review">Selected Web Sites</option>
                      <option value="timely">Current News</option>
                      <option value="web.de">Excite Germany</option>
                      <option value="web.fr">Excite France</option>
                      <option value="web.uk">Excite UK</option>
                      <option value="web.se">Excite Sweden</option>
                    </select></font></td>
                  <td bgcolor="#FFFFCC" valign="bottom" colspan="3"><font
                    size="-1"><b>Do NOT use quotation marks, modifiers like '+'
                    and '-' or operators like 'AND' in this form.</b></font></td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" valign="bottom"><font
                    face="geneva,arial" size="-1"><b>&nbsp;Results CAN contain </b><select
                    name="FT_1" size="1">
                      <option selected value="w">the word(s)</option>
                      <option value="p">the phrase</option>
                    </select></font></td>
                  <td bgcolor="#FFFFCC" valign="bottom" colspan="2"><input
                    type="text" name="FI_1" size="20" value></td>
                  <td bgcolor="#FFFFCC" rowspan="4" valign="top"><font
                    face="Arial,Geneva" size="-1"><b>Hint:</b> A phrase is a
                    group of two or more words that form a unit based on the
                    exact order in which they appear, e.g. <b>seven wonders of
                    the world</b></font></td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" valign="bottom"><font
                    face="geneva,arial" size="-1"><b>&nbsp;Results MUST contain </b><select
                    name="FT_2" size="1">
                      <option selected value="w">the word(s)</option>
                      <option value="p">the phrase</option>
                    </select></font></td>
                  <td bgcolor="#FFFFCC" valign="bottom" colspan="2"><input
                    type="text" name="FI_2" size="20" value></td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" valign="bottom">&nbsp;<font
                    face="geneva,arial" size="-1"><b>&nbsp;Results MUST NOT
                    contain </b><select name="FT_3" size="1">
                      <option selected value="w">the word(s)</option>
                      <option value="p">the phrase</option>
                    </select></font></td>
                  <td bgcolor="#FFFFCC" valign="bottom" colspan="2"><input
                    type="text" name="FI_3" size="20" value></td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" valign="bottom"><font
                    face="geneva,arial" size="-1"><b>Search results</b></font> <select
                    name="FL_4" size="1">
                      <option selected value="0">CAN contain</option>
                      <option value="1">MUST contain</option>
                      <option value="-1">MUST NOT contain</option>
                    </select><br>
                    <font face="geneva,arial" size="-1"><select name="FT_4"
                    size="1">
                      <option selected value="w">the word(s)</option>
                      <option value="p">the phrase</option>
                    </select></font></td>
                  <td bgcolor="#FFFFCC" valign="bottom" colspan="2"><input
                    type="text" name="FI_4" size="20" value></td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" colspan="3">&nbsp;<font
                    face="geneva,arial" size="-1">Click here to<br>
                    <input type="submit" name="oneMoreBox"
                    value="Add more constraints"></font></td>
                  <td bgcolor="#FFFFCC">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right" bgcolor="#FFFFCC" colspan="2"><b>&nbsp;<input
                    type="radio" name="sort" value="relevance" checked><font
                    face="geneva,arial" size="-1">Display results <font
                    color="ff0000">by document</font> with</font></b><font
                    face="geneva,arial" size="-1"><select name="showSummary"
                    size="1">
                      <option selected value="true">titles &amp; summaries</option>
                      <option value="false">titles only</option>
                    </select></font></td>
                  <td align="right" bgcolor="#FFFFCC" colspan="2"><font
                    face="geneva,arial" size="-1"><b>and</b><select
                    name="perPage" size="1">
                      <option selected>10</option>
                      <option>20</option>
                      <option>30</option>
                      <option>40</option>
                      <option>50</option>
                    </select><b>results per page.</b></font></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFFCC" align="right" colspan="3">&nbsp;<b>&nbsp;<input
                    type="radio" name="sort" value="site"><font
                    face="geneva,arial" size="-1">Display the top 40 results
                    grouped <font color="ff0000">by web site</font>.</font></b></td>
                  <td bgcolor="#FFFF99"><font face="geneva,arial" size="-1"><input
                    type="submit" name="advanced" value="Search"></font></td>
                </tr>
              </table>
            </form>
          </td>
        </tr>
      </table>
      <table border="0" width="100%" cellpadding="2">
        <tr>
          <th bgcolor="#CC9966" align="left" class="reference">AltaVista
            Advanced Search</th>
        </tr>
        <tr>
          <td>
            <form name="mfrm" method="GET"
            action="http://altavista.digital.com/cgi-bin/query">
              <input type="hidden" name="pg" value="q">
              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td>
                    <table border="0" bgcolor="#FFFFCC" cellpadding="2"
                    width="100%">
                      <tr>
                        <td valign="top"><b><font size="-1" face="arial">Search <select
                          name="what" size="1">
                            <option value="web" selected>the Web</option>
                            <option value="news">Usenet</option>
                          </select> for documents in <select name="kl" size="1">
                            <option value="XX" selected>any language</option>
                            <option value="zh">Chinese</option>
                            <option value="cs">Czech</option>
                            <option value="da">Danish</option>
                            <option value="nl">Dutch</option>
                            <option value="en">English</option>
                            <option value="et">Estonian</option>
                            <option value="fi">Finnish</option>
                            <option value="fr">French</option>
                            <option value="de">German</option>
                            <option value="el">Greek</option>
                            <option value="he">Hebrew</option>
                            <option value="hu">Hungarian</option>
                            <option value="is">Icelandic</option>
                            <option value="it">Italian</option>
                            <option value="ja">Japanese</option>
                            <option value="ko">Korean</option>
                            <option value="lv">Latvian</option>
                            <option value="lt">Lithuanian</option>
                            <option value="no">Norwegian</option>
                            <option value="pl">Polish</option>
                            <option value="pt">Portuguese</option>
                            <option value="ro">Romanian</option>
                            <option value="ru">Russian</option>
                            <option value="es">Spanish</option>
                            <option value="sv">Swedish</option>
                          </select></font></b></td>
                      </tr>
                      <tr>
                        <td><textarea name="q" cols="50" rows="3" wrap="virtual"></textarea></td>
                      </tr>
                      <tr>
                        <td><font size="-1" face="arial"><b><a
                          href="http://altavista.digital.com/av/content/help_advanced.htm#ranking">Ranking:</a></b></font>
                          <input type="text" name="r" size="25" maxlength="800"
                          value><br>
                          &nbsp; <a
                          href="http://altavista.digital.com/av/content/help_advanced.htm#dates"
                          title="Keep documents published after this date"><font
                          size="-1" face="arial"><b>From:</b></font></a> <input
                          type="text" name="d0" size="9" maxlength="32"
                          value="21/Mar/86"> <a
                          href="http://altavista.digital.com/av/content/help_advanced.htm#dates"
                          title="Keep documents published before this date"><font
                          size="-1" face="arial"><b>To:</b></font></a> <input
                          type="text" name="d1" size="9" maxlength="32" value></td>
                      </tr>
                      <tr>
                        <td><input type="checkbox" name="fmt" value="n"> <b>Give
                          me only a precise count of matches.</b></td>
                      </tr>
                      <tr>
                        <td align="center" bgcolor="#FFFF99"><input
                          type="submit"
                          src="http://altavista.digital.com/av/gifs/search.gif"
                          height="17" width="85" border="0" value="Search"
                          name="search" alt="search"> <input type="submit"
                          src="http://altavista.digital.com/av/gifs/refine.gif"
                          height="17" width="85" border="0" value="Refine"
                          name="refine" alt="refine"></td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </form>
          </td>
        </tr>
      </table>
      <table border="0" width="100%" cellspacing="4" cellpadding="0">
        <tr>
          <td width="100%" valign="top">
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">DejaNews
                  Search</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
                  <form action="http://www.dejanews.com/dnquery.xp" method="get">
                    <table cellspacing="0" cellpadding="0" border="0"
                    width="100%">
                      <tr>
                        <td width="295" align="left" valign="top"><input
                          type="text" name="QRY" size="30" value> <input
                          type="submit" value="Find"><br>
                          <font face="arial,helvetica" size="2">Find messages in
                          the <select name="DBS" size="1">
                            <option value="1">complete</option>
                            <option value="2" selected>standard</option>
                            <option value="3">adult</option>
                            <option value="4">jobs</option>
                            <option value="5">for sale</option>
                          </select> archive </font><!--webbot bot="HTMLMarkup"
                          startspan --><INPUT type="hidden" name="maxhits" value="20"><!--webbot
                          bot="HTMLMarkup" endspan --><!--webbot
                          bot="HTMLMarkup" startspan --><INPUT type="hidden" name="format" value="terse"><!--webbot
                          bot="HTMLMarkup" endspan --><!--webbot
                          bot="HTMLMarkup" startspan --><INPUT type="hidden" name="showsort" value="score"><!--webbot
                          bot="HTMLMarkup" endspan --><!--webbot
                          bot="HTMLMarkup" startspan --><INPUT type="hidden" name="ST" value="QS"><!--webbot
                          bot="HTMLMarkup" endspan --><!--webbot
                          bot="HTMLMarkup" startspan --><INPUT type="hidden" name="LNG" value="ALL"><!--webbot
                          bot="HTMLMarkup" endspan --></td>
                      </tr>
                    </table>
                  </form>
                </td>
              </tr>
            </table>
            <table border="0" width="100%" cellpadding="2">
              <tr>
                <th bgcolor="#CC9966" align="left" class="reference">DejaNews
                  Power Search</th>
              </tr>
              <tr>
                <td bgcolor="#FFFFCC">
                  <form action="http://www.dejanews.com/dnquery.xp" method="get">
                    <p><font size="-1" face="arial,helvetica">Search for:</font><br>
                    <input type="text" name="QRY" size="30" value> <input
                    type="submit" value="Find"></p>
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr valign="top">
                        <td colspan="6"><font face="arial,helvetica" size="-2">Match
                          </font><input type="radio" name="defaultOp"
                          value="AND" checked> <font face="arial,helvetica"
                          size="-2">all </font><input type="radio"
                          name="defaultOp" value="OR"> <font
                          face="arial,helvetica" size="-2">any keywords</font></td>
                      </tr>
                      <tr>
                        <td colspan="6"></td>
                      </tr>
                      <tr valign="middle">
                        <td align="right"><font face="arial,helvetica" size="1">Subject</font></td>
                        <td colspan="2"><font size="2"><input type="text"
                          name="subjects" size="15"></font></td>
                        <td rowspan="6"></td>
                        <td align="right"><font face="arial,helvetica" size="1">Archive</font></td>
                        <td><font size="2"><select name="DBS" size="1">
                            <option value="1">complete</option>
                            <option value="2" selected>main</option>
                            <option value="3">adult</option>
                            <option value="4">jobs</option>
                            <option value="5">for sale</option>
                          </select></font></td>
                      </tr>
                      <tr valign="middle">
                        <td align="right"><font face="arial,helvetica" size="1">Forum</font></td>
                        <td colspan="2"><font size="2"><input type="text"
                          name="groups" size="15"></font></td>
                        <td align="right"><font face="arial,helvetica" size="1">Results
                          per page</font></td>
                        <td><font size="2"><select name="maxhits" size="1">
                            <option value="15">15</option>
                            <option value="25" selected>25</option>
                            <option value="50">50</option>
                            <option value="100">100</option>
                          </select></font></td>
                      </tr>
                      <tr valign="middle">
                        <td align="right"><font face="arial,helvetica" size="1">Author</font></td>
                        <td colspan="2"><font size="2"><input type="text"
                          name="authors" size="15"></font></td>
                        <td align="right"><font face="arial,helvetica" size="1">Sort
                          by</font></td>
                        <td><font size="2"><select name="showsort" size="1">
                            <option value="score" selected>score</option>
                            <option value="subject">subject</option>
                            <option value="newsgroup">forum</option>
                            <option value="author">author</option>
                            <option value="date">date</option>
                          </select></font></td>
                      </tr>
                      <tr valign="middle">
                        <td align="right"><font face="arial,helvetica" size="1">Date</font></td>
                        <td><font size="2"><input type="text" name="fromdate"
                          size="6"></font></td>
                        <td><font size="2"><input type="text" name="todate"
                          size="6" value></font></td>
                        <td align="right"><font face="arial,helvetica" size="1">Results
                          format</font></td>
                        <td><font size="2"><select name="format" size="1">
                            <option value="delta" selected>list</option>
                            <option value="terse">tabular</option>
                            <option value="threaded">threaded</option>
                          </select></font></td>
                      </tr>
                      <tr valign="middle">
                        <td></td>
                        <td><font face="arial,helvetica" size="2">to</font></td>
                        <td><font face="arial,helvetica" size="2">from</font></td>
                      </tr>
                    </table>
                  </form>
                </td>
              </tr>
            </table>
          </td>
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