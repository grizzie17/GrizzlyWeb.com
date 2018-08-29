<?xml version="1.0" ?>
<xsl:stylesheet
	version="1.0"
	exclude-result-prefixes="msxsl local"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:local="#local-functions"
>

<xsl:output method="xml" version="1.0" indent="yes" encoding="ISO-8859-1" />

<xsl:template match="/|@*|node()">
<xsl:copy>
<xsl:apply-templates select="@*|node()"  />
</xsl:copy>
</xsl:template>

<xsl:template match="text()">
<xsl:value-of select="local:encodeText(.)"/>
</xsl:template>


<msxsl:script implements-prefix="local" language="VBscript">
<![CDATA[


DIM k_ps
DIM k_p
DIM k_brs
DIM k_br
DIM	k_brxs
DIM k_brx
k_ps = "&lt;p&gt;"
k_p = "<p>"
k_brs = "&lt;br clear=""all""/&gt;"
k_br = "<br clear=""all""/" & ">"
k_brxs = "&lt;br style=""clear: both;""/&gt;"
k_brx = "<br style=""clear: both;""/>"

function encodeText(oNode)
	DIM s
	s = oNode.item(0).text
	s = REPLACE( s, CHR(174), "&reg;" )
	''s = REPLACE( s, "<", "&lt;", 1, -1, vbTextCompare )
	''s = REPLACE( s, ">", "&gt;", 1, -1, vbTextCompare )
	s = REPLACE( s, CHR(&H93), "&quot;" )
	s = REPLACE( s, CHR(&H94), "&quot;" )
	s = REPLACE( s, CHR(&H60), "'" )
	s = REPLACE( s, CHR(&H91), "'" )
	s = REPLACE( s, CHR(&H92), "'" )
	s = REPLACE( s, CHR(&HB4), "'" )
	s = REPLACE( s, CHRW(&H2018), "'" )
	s = REPLACE( s, CHRW(&H2019), "'" )
	s = REPLACE( s, CHRW(&H2032), "'" )
	s = REPLACE( s, CHRW(&HC293), "&quot;" )
	s = REPLACE( s, CHRW(&HC294), "&quot;" )
	s = REPLACE( s, CHRW(&H201C), "&quot;" )
	s = REPLACE( s, CHRW(&H201D), "&quot;" )
	s = REPLACE( s, CHRW(&H2033), "&quot;" )

	' check for spam type links
	DIM i, j
	i = INSTR( s, "height=""1"" width=""1""" )
	IF i < 1 THEN
		i = INSTR( s, "height:1px; width:1px" )
		IF i < 1 THEN
			i = INSTR( s, "display:none" )
			IF i < 1 THEN
				i = INSTR( s, "display: none" )
				IF i < 1 THEN
					i = INSTR( s, "title='Add to digg'" )
				END IF
			END IF
		END IF
	END IF
	IF 0 < i THEN
		i = INSTR( s, "pheedo" )
		IF i < 1 THEN
			i = INSTR( s, "http://ads." )
			IF i < 1 THEN
				i = INSTR( s, "/~" )
			END IF
		END IF
		IF 0 < i THEN
			j = INSTRREV( s, "&lt;", i )
			IF j < 1 THEN
				j = INSTRREV( s, "<", i )
			END IF
			IF 0 < j THEN
				s = LEFT( s, j-1 )
			END IF
			IF k_ps = RIGHT( s, LEN(k_ps) ) THEN
				s = LEFT( s, LEN(s)-LEN(k_ps) )
			ELSEIF k_p = RIGHT( s, LEN(k_p) ) THEN
				s = LEFT( s, LEN(s)-LEN(k_p) )
			END IF
		END IF
	END IF
	IF k_brs = RIGHT( s, LEN(k_brs) ) THEN
		s = LEFT( s, LEN(s)-LEN(k_brs) )
	ELSEIF k_br = RIGHT( s, LEN(k_br) ) THEN
		s = LEFT( s, LEN(s)-LEN(k_br) )
	ELSEIF k_brxs = RIGHT( s, LEN(k_brxs) ) THEN
		s = LEFT( s, LEN(s)-LEN(k_brxs) )
	ELSEIF k_brx = RIGHT( s, LEN(k_brx) ) THEN
		s = LEFT( s, LEN(s)-LEN(k_brx) )
	END IF

	'encodeText = "<" & "!" & "[CDATA[" & s & "]" & "]" & ">"
	encodeText = s
end function















]]></msxsl:script>

</xsl:stylesheet>