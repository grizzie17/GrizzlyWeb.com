<?xml version="1.0"?>
<xsl:stylesheet
	version="1.0"
	exclude-result-prefixes="msxsl local"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:yweather="http://xml.weather.yahoo.com/ns/rss/1.0"
	xmlns:local="#local-functions"
	>

<xsl:output method="html" indent="no" encoding="UTF-8"/>



<xsl:template match="/">
	<xsl:apply-templates select="rss"/>
</xsl:template>


<xsl:template match="rss">
		<xsl:apply-templates select="channel"/>
</xsl:template>

<xsl:template match="channel">
	<xsl:apply-templates select="item"/>
</xsl:template>

<xsl:template match="item">
	<table class="weatherForecastTable">
	<tr>
	<td colspan="5" class="weatherCurrentBlock">
	<xsl:apply-templates select="yweather:condition"/>
	</td>
	</tr>
	<tr>
	<xsl:apply-templates select="yweather:forecast"/>
	</tr>
	</table>
	<xsl:apply-templates select="pubDate"/>
</xsl:template>

<xsl:template match="yweather:location">
Weather: <xsl:value-of select="@city"/>, <xsl:value-of select="@region"/>
</xsl:template>

<xsl:template match="yweather:condition">
	<img align="texttop"><xsl:attribute name="alt"><xsl:value-of select="@text"/></xsl:attribute><xsl:attribute name="src">images/weather/<xsl:value-of select="@code"/>.gif</xsl:attribute></img>
	<span class="weatherCurrentTemp"><xsl:value-of select="@temp"/><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text></span>
	<xsl:text> </xsl:text>
	<span class="weatherCurrentText"><xsl:value-of select="@text"/></span>
	<xsl:if test="@temp != ../yweather:wind/@chill">something</xsl:if>
	<div class="weatherCurrentDate">
	<xsl:value-of select="@date"/>
	</div>
</xsl:template>

<xsl:template match="yweather:forecast">
	<td width="20%">
	<div class="weatherForecastUpperBlock">
	<div class="weatherForecastDay"><xsl:value-of select="@day"/></div>
	<div class="weatherForecastImage"><img ><xsl:attribute name="alt"><xsl:value-of select="@text"/></xsl:attribute><xsl:attribute name="src">images/weather/<xsl:value-of select="@code"/>.gif</xsl:attribute></img></div>
	<div class="weatherForecastText"><xsl:value-of disable-output-escaping="yes" select="local:encodeForecastText(@text)"/></div>
	</div>
	<div class="weatherForecastBottomBlock"></div>
	<!--div class="weatherForecastLowerBlock"-->
	<div class="weatherForecastHigh"><xsl:value-of select="@high"/><xsl:if test="@high != '-'"><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text></xsl:if></div>
	<div class="weatherForecastLow"><xsl:value-of select="@low"/><xsl:if test="@low != '-'"><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text></xsl:if></div>
	<!--/div-->
	</td>
</xsl:template>

<xsl:template match="processForecastText">
<xsl:value-of select="local:encodeForecastText(.)"/>
</xsl:template>

<xsl:template match="pubDate">
	<xsl:if test="local:uniqueDate(.)">
	<div style="color: #999999; font-size: xx-small; font-family: sans-serif;">
	Updated: <xsl:value-of select="local:encodeDate(.)"/>
	</div>
	</xsl:if>
</xsl:template>

<xsl:template match="lastBuildDate">
	<div style="color: #999999; font-size: smaller; font-family: sans-serif;">
	Updated: <xsl:value-of select="local:encodeDate(.)"/>
	</div>
</xsl:template>

<xsl:template match="description">
	<div>
	<xsl:value-of disable-output-escaping="yes" select="."/>
	</div>
</xsl:template>

<xsl:template match="image">
	<a><xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
	<img border="0" align="absbottom"><xsl:attribute name="src"><xsl:value-of select="url"/></xsl:attribute></img></a>
</xsl:template>

<xsl:template match="content:encoded">
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




function encodeText(oNode)
	DIM s
	s = oNode.item(0).text
	''s = REPLACE( s, "<", "&lt;", 1, -1, vbTextCompare )
	''s = REPLACE( s, ">", "&gt;", 1, -1, vbTextCompare )
	''s = REPLACE( s, "&", "&amp;", 1, -1, vbTextCompare )
	encodeText = s
end function


function encodeForecastText(oNode)
	DIM s
	s = oNode.item(0).text
	s = REPLACE( s, "Thunderstorms", "T-Storms", vbTextCompare )
	s = REPLACE( s, "Thundershowers", "T-showers", vbTextCompare )
	s = REPLACE( s, "Scattered", "Scat'rd", vbTextCompare )
	s = REPLACE( s, "/", "<hr/>", vbTextCompare )
	encodeForecastText = s
end function


DIM g_sPrevDate
g_sPrevDate = ""

FUNCTION uniqueDate( oNode )
	DIM	s
	s = oNode.item(0).text
	IF s <> g_sPrevDate THEN
		uniqueDate = TRUE
	ELSE
		uniqueDate = FALSE
	END IF
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