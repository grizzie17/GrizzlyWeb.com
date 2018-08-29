<%
OPTION EXPLICIT


FUNCTION formatHex( n )
	formatHex = HEX( n )
	IF LEN(formatHex) < 2 THEN formatHex = "0" & formatHex
END FUNCTION


FUNCTION formatSym( c )
	IF " " = c  OR  "" = c THEN
		formatSym = "&nbsp;"
	ELSE
		formatSym = Server.HTMLEncode(c)
	END IF
END FUNCTION

FUNCTION formatSymChar( c )
	IF " " = c  OR  "" = c THEN
		formatSymChar = "&nbsp;"
	ELSE
		formatSymChar = c
	END IF
END FUNCTION

FUNCTION formatVers( aVers() )
	IF LBOUND(aVers) < UBOUND(aVers) THEN
		formatVers = aVers(1) & " / " & aVers(0)
	ELSE
		formatVers = aVers(0)
	END IF
END FUNCTION


%>
<html>

<head>
<style type="text/css" media="all">
<!--
.titlex      { background-color: #DDDDDD; font-size: smaller; font-family: sans-serif }
.fixed       { font-family: Courier New }
.sym         { background-color: #FFFFCC; font-family: Courier New }
th.sym       { font-size: smaller; font-family: sans-serif }
.char        { background-color: #FFFF99; font-weight: bold; font-size: large; font-family: 
               'Lucida Sans', sans-serif }
.charUnicode { background-color: #FFFF99; font-weight: bold; font-size: large; font-family: 
               'Lucida Sans Unicode', sans-serif }
th.char      { font-size: x-small; font-family: sans-serif }
.spec        { background-color: #FFFFCC; font-family: sans-serif }
th.spec      { font-size: smaller }
.vers        { background-color: #DDDDDD }
th.vers      { font-size: smaller; font-family: sans-serif }
.deccode     { background-color: #FFEEDD; font-family: sans-serif }
th.deccode   { font-size: smaller }
.decchar     { color: #CC9966; background-color: #FFDDCC; font-weight: bold; font-size: large; 
					font-family: 'Lucida Sans', sans-serif }
.deccharUnicode { color: #CC9966; background-color: #FFDDCC; font-weight: bold; font-size: large;
					font-family: 'Lucida Sans Unicode', sans-serif }
th.decchar   { color: #000000; font-size: x-small; font-family: sans-serif }
.hex         { background-color: #CCCCCC }
th.hex       { font-size: smaller; font-family: sans-serif }
.desc        { background-color: #CCCCCC }
th.desc      { font-size: smaller; font-family: sans-serif }
-->
</style>
<link rel="stylesheet" title="Default Styles" href="../1webmaster.css"
media="screen">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Character Sets - Reference - Grizzly WebMaster</title>
</head>

<body bgcolor="#FFFFFF" topmargin="0" leftmargin="0" marginheight="0"
marginwidth="0">

<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <th valign="bottom" class="titleblock" align="left"><span class="subtitle">Reference</span><br>
      <span class="title">Character Sets</span></th>
    <td align="right" valign="bottom"><!--webbot bot="Include"
      u-include="../_private/gwm.htm" tag="BODY" startspan -->
      <table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="bottom">
            <table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="100%" bgcolor="#663300"><img border="0" src="../images/pie_brx.gif" width="16" height="16"></td>
              </tr>
            </table>
          </td>
          <td bgcolor="#663300"><a href="../"><img border="0" src="../images/bearpaw-header.jpg" alt="Grizzly WebMaster home" width="245" height="64"></a></td>
        </tr>
      </table>
<!--webbot bot="Include" endspan i-checksum="59381" -->
    </td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="3"><img border="0" src="../images/000000.gif"></td>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <th bgcolor="#CC9966" align="left" class="navigationpath">&nbsp;<a
      href="../">Grizzly WebMaster (HOME)</a> &gt;&gt; <a
      href="../reference.htm">Reference</a> &gt;&gt; Character Sets</th>
  </tr>
</table>
<table border="0" width="100%" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#663300" height="2"><img border="0" src="../images/000000.gif"></td>
  </tr>
</table>
<table border="0" cellspacing="4" cellpadding="0" align="left">
  <tr>
    <td>
      <ul>
        <li><a href="characters.asp?query=*">All</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th align="left">Character Sets</th>
  </tr>
  <tr>
    <td>
      <ul>
        <li><a href="characters.asp?query=ascii">ASCII</a></li>
        <li><a href="characters.asp?query=greek">Greek letters</a></li>
        <li><a href="characters.asp?query=latin-1">Latin-1</a></li>
        <li><a href="characters.asp?query=latin-ex">Latin-Extended</a></li>
        <li><a href="characters.asp?query=letter">Letters</a></li>
        <li><a href="characters.asp?query=lig">Ligatures</a></li>
        <li><a href="characters.asp?query=number">Numbers</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th align="left">Symbols</th>
  </tr>
  <tr>
    <td>
      <ul>
        <li><a href="characters.asp?query=accent">Accents</a></li>
        <li><a href="characters.asp?query=brace">Brackets / Parens</a></li>
        <li><a href="characters.asp?query=dash">Dashes &amp; Slashes</a></li>
        <li><a href="characters.asp?query=format">Formatting</a></li>
        <li><a href="characters.asp?query=math">Mathematics</a></li>
        <li><a href="characters.asp?query=money">Money</a></li>
        <li><a href="characters.asp?query=publish">Publish</a></li>
        <li><a href="characters.asp?query=punct">Punctuation</a></li>
        <li><a href="characters.asp?query=quote">Quotes</a></li>
        <li><a href="characters.asp?query=shape,arrows">Shapes</a></li>
        <li><a href="characters.asp?query=space">Spaces</a></li>
      </ul>
    </td>
  </tr>
</table>
<%
FUNCTION isQuerySet( sSets )
	DIM	sTemp
	DIM	i
	isQuerySet = FALSE
	sTemp = "," & sSets & ","
	FOR i = LBOUND(aCharSets) TO UBOUND(aCharSets)
		IF INSTR(1,sTemp,","&aCharSets(i)&",",vbTextCompare) THEN
			isQuerySet = TRUE
			EXIT FOR
		ELSEIF aCharSets(i) = "*" THEN
			isQuerySet = TRUE
			EXIT FOR
		END IF
	NEXT 'i
END FUNCTION

FUNCTION getQueryTitle()
	DIM	i
	DIM	sTemp
	getQueryTitle = ""
	sTemp = ""
	FOR i = LBOUND(aCharSets) TO UBOUND(aCharSets)
		SELECT CASE aCharSets(i)
		CASE "ascii"
			sTemp = "ASCII Char-set"
		CASE "latin-1"
			sTemp = "Latin-1 Char-set"
		CASE "latin-ex"
			sTemp = "Latin-Extended"
		CASE "greek"
			sTemp = "Greek Letters"
		CASE "letter"
			sTemp = "Letters"
		CASE "number"
			sTemp = "Numeric Characters"
		CASE "accent"
			sTemp = "Accent Marks"
		CASE "brace"
			sTemp = "Brackets"
		CASE "dash"
			sTemp = "Bars, Dashes &amp; Slashes"
		CASE "math"
			sTemp = "Mathematic Symbols"
		CASE "money"
			sTemp = "Monetary Symbols"
		CASE "publish"
			sTemp = "Publishing Marks"
		CASE "punct"
			sTemp = "Punctuation Marks"
		CASE "quote"
			sTemp = "Quotation Marks"
		CASE "shape"
			sTemp = "Symbols"
		CASE "arrows"
			sTemp = "Arrows"
		CASE "space"
			sTemp = "White Space"
		CASE "format"
			sTemp = "Formatting Marks"
		CASE "lig"
			sTemp = "Ligatures"
		CASE "*"
			sTemp = "ALL W3C Characters"
		CASE ELSE
			sTemp = aCharSets(i)
		END SELECT
		IF 0 < LEN(getQueryTitle) THEN
			getQueryTitle = getQueryTitle & ", " & sTemp
		ELSE
			getQueryTitle = sTemp
		END IF
	NEXT 'i
END FUNCTION

PUBLIC aCharSets
PUBLIC aLineSplit
PUBLIC aVersSplit
	DIM	sQuery
	DIM	oFSO
	DIM	oFile
	DIM	sFile
	DIM	sLine
	DIM	nCode
	DIM	sUnicode
	DIM	sTitle
	DIM	n

	IF Request.QueryString("query").Count THEN
		sQuery = LCASE(Request.QueryString("query"))
	ELSE
		sQuery = ""
	END IF
	IF 0 < LEN(sQuery) THEN
	aCharSets = SPLIT(sQuery,",",-1,vbTextCompare)
%>
<div align="center">
  <center>
  <table border="0" cellspacing="1">
    <tr>
      <th colspan="7" bgcolor="#EEEEEE"><%=getQueryTitle%></th>
    </tr>
    <%
SUB displayHeaders
    %>
    <tr>
      <th class="char">Sym<br>
        Glyph</th>
      <th class="spec">Sym</th>
      <th class="decchar">Dec<br>
        Glyph</th>
      <th class="deccode">Dec-Code</th>
      <th class="vers">Vers<br>
        S / D</th>
      <th class="hex">HEX</th>
      <!--th class="dec">Dec</th-->
      <th class="desc">Description</th>
    </tr>
    <%
END SUB
	displayHeaders
	n = 0
	SET oFSO = Server.CreateObject("Scripting.FileSystemObject")
	sFile = Server.MapPath("characters.txt")
	SET oFile = oFSO.OpenTextFile( sFile )
	sUnicode = ""
	DO UNTIL oFile.AtEndOfStream

		sLine = TRIM(oFile.ReadLine)
		nCode = LEN(sLine)
		IF 0 < nCode THEN
			IF "#" = LEFT(sLine,1) THEN
				IF 4 < nCode THEN
					IF "=" = MID(sLine,2,1) THEN
						sTitle = Server.HTMLEncode(TRIM(MID(sLine,3)))
					END IF
				END IF
			ELSE
				aLineSplit = SPLIT(sLine,vbTAB,-1,vbTextCompare)
				IF 4 = UBOUND(aLineSplit) THEN
					IF isQuerySet( aLineSplit(3) ) THEN
						nCode = CLNG(aLineSplit(0))
						IF 255 < nCode THEN sUnicode = "Unicode"
							IF 0 < LEN(sTitle) THEN
							%>
    <tr>
      <td colspan="7" class="titlex"><%=sTitle%></td>
    </tr>
							<%
								sTitle = ""
								n = n + 3
								IF 25 < n THEN
									n = 0
									displayHeaders
								END IF
							END IF
							aVersSplit = SPLIT(aLineSplit(2),"/",-1,vbTextCompare)
							n = n + 1
    %>
    <tr>
      <td class="char<%=sUnicode%>" align="center"><%=formatSymChar(aLineSplit(1))%></td>
      <td class="spec"><%=formatSym(aLineSplit(1))%>&nbsp;</td>
      <td class="decchar<%=sUnicode%>" align="center"><%="&#"&nCode&";"%></td>
      <td class="deccode">&amp;#<%=nCode%>;&nbsp;</td>
      <td class="vers" align="center" nowrap><%=formatVers(aVersSplit)%></td>
      <td class="hex" align="right"><%=formatHex(nCode)%></td>
      <!--td class="dec" align="right"><%=nCode%></td-->
      <td class="desc"><%=Server.HTMLEncode(aLineSplit(4))%></td>
    </tr>
    <%
					END IF
				END IF
			END IF
		END IF

	LOOP 'objInFile
    %>
    <tr>
      <td colspan="7">
        <ul>
          <li>Sym-Glyph - HTML result of using &quot;Sym&quot;</li>
          <li>Sym - Normal character or symbolic &amp;entity;</li>
          <li>Dec-Glyph - HTML result of using &quot;Dec-Code&quot;</li>
          <li>Dec-Code - Decimal coded entity</li>
          <li>Vers S / D - W3C version that Sym or Dec was introduced</li>
          <li>HEX - Hexadecimal character code</li>
          <li>Description - Name of Unicode glyph</li>
        </ul>
      </td>
    </tr>
  </table>
  </center>
</div>
<%
	oFile.Close
	SET oFile = Nothing
	SET oFSO = Nothing
	END IF
%>
<br clear="all">
<table border="0" cellspacing="4" width="100%" cellpadding="0">
  <tr>
    <th width="100%" align="left">References:</th>
  </tr>
  <tr>
    <td width="100%">
      <ul>
        <li><a href="http://www.w3.org/MarkUp/html-spec/html-spec_13.html">HTML
          Coded Character Set in HTML 2.0</a></li>
        <li><a href="http://www.w3.org/TR/REC-html32.html#latin1">HTML 3.2
          Reference Specification</a></li>
        <li><a href="http://www.w3.org/TR/REC-html40/sgml/entities.html">Character
          entity references in HTML 4</a></li>
        <li><a href="http://www.unicode.org/">Unicode Home Page</a></li>
      </ul>
    </td>
  </tr>
</table>
<!--webbot bot="Include" u-include="../_private/footer_free.htm" tag="BODY" startspan -->



<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td height="12" colspan="2"></td>
  </tr>
  <tr>
    <td valign="bottom"><font color="#CCCCCC" size="1"><a href="../../company/index.htm"
      style="color: #CCCCCC; TEXT-DECORATION: none">Service Provided by Bear Consulting Group</a></font></td>
    <td align="right"><font face="Arial" size="1" color="#999999"
      style="font-family: sans-serif; font-size: 10px">Last modified: 
    25 May 2009</font><br>
      <a style="color: #CCCCCC; TEXT-DECORATION: none" href="../9publicuse.htm"><font
      color="#CCCCCC" size="1">Copyright 2001 Bear Consulting Group</font></a></td>
  </tr>
</table>



<script language="JavaScript" src="../../javascript/remotelog.js"></script>



<!--webbot bot="Include" endspan i-checksum="396" -->



</body>

</html>
