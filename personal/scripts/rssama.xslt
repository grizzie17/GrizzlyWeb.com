<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet
	version="1.0"
	exclude-result-prefixes="msxsl local"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:local="#local-functions"
	>

<xsl:output method="html" indent="no" encoding="ISO-8859-1"/>


<xsl:template match="/">
	<div id="rssFeed">
	<xsl:apply-templates select="feed"/>
	<xsl:apply-templates select="rss"/>
	</div>
</xsl:template>


<xsl:template match="feed">
	<div class="rssTitle">
	<xsl:value-of select="title"/>
	</div>
	<xsl:apply-templates select="subtitle"/>
	<xsl:apply-templates select="updated"/>
	
	<xsl:apply-templates select="entry"/>

</xsl:template>

<xsl:template match="subtitle">
	<div class="rssSubtitle">
	<xsl:value-of select="subtitle"/>
	</div>
</xsl:template>


<xsl:template match="entry">
	<div class="rssItem">
	<div class="rssItemTitle">
	<xsl:choose>
	<xsl:when test="link">
		<b><a target="_blank"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="title"/></a></b>
	</xsl:when>
	<xsl:otherwise>
		<b><xsl:value-of disable-output-escaping="yes" select="title"/></b>
	</xsl:otherwise>
	</xsl:choose>
	</div>
	
	<xsl:apply-templates select="content"/>
	</div>
	<xsl:apply-templates select="updated"/>
</xsl:template>










<xsl:template match="rss">
		<xsl:apply-templates select="channel"/>
</xsl:template>


<xsl:template match="channel">
	<div class="rssTitle">
	<xsl:choose>
		<xsl:when test="image">
	<xsl:apply-templates select="image"/><br/>
		</xsl:when>
		<xsl:otherwise>
	<!--img align="absbottom" src="images/ama.gif"/-->
		</xsl:otherwise>
	</xsl:choose>
	<b><a target="_blank"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="title"/></a></b>
	</div>
	<xsl:apply-templates select="description"/>
	<xsl:choose>
		<xsl:when test="pubDate">
	<xsl:apply-templates select="pubDate"/>
		</xsl:when>
		<xsl:otherwise>
	<xsl:apply-templates select="lastBuildDate"/>
		</xsl:otherwise>
	</xsl:choose>
	<xsl:call-template name="clearDate"/>
	
	<xsl:apply-templates select="item"/>
</xsl:template>

<xsl:template match="lastBuildDate|updated|pubDate">
	<xsl:if test="local:uniqueDate(.)">
	<div class="rssDate">
	Date: <xsl:value-of select="local:encodeDate(.)"/>
	</div>
	</xsl:if>
</xsl:template>


<xsl:template match="description">
	<div class="rssItemDescription">
	<xsl:value-of disable-output-escaping="yes" select="local:encodeText(.)"/>
	</div>
</xsl:template>

<xsl:template match="image">
	<xsl:choose>
		<xsl:when test="link">
		<a target="_blank"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
		<xsl:call-template name="image_content"/>
		</a>
		</xsl:when>
		<xsl:otherwise>
		<xsl:call-template name="image_content"/>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template name="image_content">
	<img border="0" align="bottom">
	<xsl:if test="title">
		<xsl:attribute name="alt"><xsl:value-of select="title"/></xsl:attribute>
	</xsl:if>
	<xsl:attribute name="src"><xsl:value-of select="url"/></xsl:attribute></img>
</xsl:template>

<xsl:template match="item">
	<div class="rssItem">
	<div class="rssItemTitle">
	<xsl:choose>
	<xsl:when test="link">
		<b><a target="_blank"><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute><xsl:value-of disable-output-escaping="yes" select="local:encodeText(title)"/></a></b>
	</xsl:when>
	<xsl:otherwise>
		<b><xsl:value-of disable-output-escaping="yes" select="local:encodeText(title)"/></b>
	</xsl:otherwise>
	</xsl:choose>
	</div>
	
	<xsl:if test="title != description  and  link != description">
		<xsl:apply-templates select="description"/>
	</xsl:if>
	<xsl:apply-templates select="content:encoded"/>
	<xsl:apply-templates select="enclosure"/>
	</div>
	<xsl:apply-templates select="pubDate"/>
</xsl:template>

<xsl:template name="clearDate">
	<xsl:value-of select="local:clearPrevDate()"/>
</xsl:template>


<xsl:template match="content|content:encoded">
	<div class="rssContent">
	<xsl:value-of disable-output-escaping="yes" select="."/>
	</div>
</xsl:template>

<xsl:template match="enclosure">
	<div class="rssEnclosure">
	<img ><xsl:attribute name="src"><xsl:value-of select="@url"/></xsl:attribute></img>
	</div>
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

	encodeText = s
end function


DIM g_sPrevDate
g_sPrevDate = ""

FUNCTION clearPrevDate()
	g_sPrevDate = ""
	clearPrevDate = ""
END FUNCTION

FUNCTION uniqueDate( oNode )
	DIM	s
	s = oNode.item(0).text
	IF s <> g_sPrevDate THEN
		uniqueDate = TRUE
	ELSE
		uniqueDate = FALSE
	END IF
	uniqueDate = TRUE
	g_sPrevDate = s
END FUNCTION

FUNCTION encodeDate( oNode )
	DIM s
	DIM	d
	s = oNode.item(0).text
	encodeDate = s
	EXIT FUNCTION
	IF ISDATE( s ) THEN
		d = CDATE( s )
		encodeDate = FORMATDATETIME( d, 1 )
	ELSE
		DIM	i
		i = INSTR( s, "," )
		IF 0 < i THEN
			DIM	t
			t = TRIM(MID( s, i+1 ))
			IF ISDATE( t ) THEN
				d = CDATE( t )
				encodeDate = CSTR(FORMATDATETIME( d, 1 ))
			ELSE
				DIM	a
				a = SPLIT( t, " " )
				t = a(0) & "-" & a(1) & "-" & a(2)
				FOR i = 3 TO UBOUND(a)
					t = t & " " & a(i)
				NEXT 'i
				'd = CDATE( t )
				encodeDate = t
			END IF
		ELSE
			encodeDate = s
		END IF
	END IF
	'encodeDate = CSTR( CDATE( s ) )
END FUNCTION












]]></msxsl:script>

</xsl:stylesheet>