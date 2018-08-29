<!--#include file="_private\deflocation.asp"-->
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="robots" content"noindex">
<title>Web Search</title>
<link rel="stylesheet" title="Default Styles" href="0style.css" media="screen">
<link rel="stylesheet" title="Default Styles" href="0style_ref.css" media="screen">
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
	if ( n <= i )
		i = 0;
	sValue = oEngine.options[i].value;
	if ( sValue.length < 1 )
		++i;
	oEngine.selectedIndex = i;
	document.search.submit.click();
	
	//return false;
}

function handleEngineChange()
{
	var oForm;
	var oEngine;
	var nMax;
	
	oForm = document.search;
	oEngine = oForm.SearchEngine;
	oForm.SearchText.focus();
	var nOption = oEngine.selectedIndex;
	var sEngine = oEngine.options[nOption].text;
	var which = oEngine.options[nOption].value;
	if ( which.length < 1 )
	{
		++nOption;
		if ( nOption < oEngine.length )
			oEngine.selectedIndex = nOption;
	}
}


//-->
</script>
</head>

<body topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" bgcolor="#FFFFFF">

<table border="0" cellspacing="0" cellpadding="0" height="100%">
  <tr>
    <td width="150" valign="top" align="left">
      <table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
        <tr>
          <td bgcolor="#996600" class="navbackground">&nbsp;</td>
          <td bgcolor="#996600" valign="middle" align="center" class="navbackground" rowspan="2"><a href="index.asp?<%=sLocArgx%>" target="_top"><img src="../images/bearpawc3.gif" width="40" height="50" alt="Grizzly Web Links" border="0"></a></td>
          <td bgcolor="#996600" valign="top" align="right" class="navbackground"><img src="../images/pie_tr.gif" WIDTH="16" HEIGHT="16"></td>
        </tr>
        <tr>
          <th bgcolor="#996600" align="center" class="navbackground">&nbsp;</th>
          <th bgcolor="#996600" align="center" class="navbackground">&nbsp;</th>
        </tr>
        <tr>
          <td bgcolor="#996600" valign="bottom" align="left" class="navbackground"><img src="../images/000000.gif" border="0" width="16" height="16"></td>
          <th bgcolor="#996600" class="navbackground">Web Search</th>
          <td bgcolor="#996600" valign="bottom" align="right" class="navbackground"><img src="../images/pie_br.gif" WIDTH="16" HEIGHT="16"></td>
        </tr>
      </table>
    </td>
    <td width="5"><img border="0" src="../images/000000.gif" WIDTH="1" HEIGHT="1"></td>
    <td>
      <form method="POST" action="isearchsearch.asp" name="search">
        <table border="0" cellspacing="0">
          <tr>
            <td><select size="1" name="SearchEngine" onchange="handleEngineChange()">
                <option value="altavista">AltaVista</option>
                <option value="excite">eXcite</option>
                <option value="goto">GoTo</option>
                <option value="hotbot">HotBot</option>
                <option value="infoseek">Infoseek</option>
                <option value="northernlight">NorthernLight</option>
                <option value="yahoo">Yahoo!</option>
                <option value style="color: #CCCCCC">----------------</option>
                <option value="about">About.com</option>
                <option value="directhit">DirectHit</option>
                <option value="google">Google!</option>
                <option value="looksmart">LookSmart</option>
                <option value="lycos">Lycos</option>
                <option value="dmoz">Open Directory</option>
                <option value style="color: #CCCCCC">----------------</option>
                <option value="go2net">Go2Net</option>
                <option value="realnames">RealNames *</option>
              </select></td>
            <td><input type="text" name="SearchText" size="35"></td>
            <td><input type="submit" value="Search" name="submit"></td>
          </tr>
          <tr>
            <td><a href="javascript:nextEngine();" target="_self">Next Engine</a></td>
            <td align="right"><select size="1" name="SearchType">
                <option selected value="all">All Words</option>
                <option value="any">Any Words</option>
                <option value="phrase">Exact Phrase</option>
              </select></td>
            <td></td>
          </tr>
        </table>
      </form>
    </td>
  </tr>
</table>

</body>

</html>
