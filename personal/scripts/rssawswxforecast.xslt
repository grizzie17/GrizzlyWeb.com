<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
	version="1.0"
	exclude-result-prefixes="msxsl local"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:content="http://purl.org/rss/1.0/modules/content/"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:aws="http://www.aws.com/aws"
	xmlns:yweather="http://xml.weather.yahoo.com/ns/rss/1.0"
	xmlns:local="#local-functions"
	>

	<xsl:output method="html" indent="no" encoding="UTF-8"/>
	
	<xsl:template match="/">
		<xsl:apply-templates select="rss"/>
	</xsl:template>


	<xsl:template match="rss">
		<xsl:apply-templates select="channel" />
	</xsl:template>


	<xsl:template match="channel">
		<xsl:apply-templates select="aws:weather" />
	</xsl:template>


	<xsl:template match="aws:weather">
		<xsl:apply-templates select="aws:forecasts" />
	</xsl:template>


	<xsl:template match="aws:forecasts">
		<table border="0">
			<xsl:apply-templates select="aws:forecast" />
		</table>
	</xsl:template>


	<xsl:template match="aws:forecast">
		<tr>
			<td class="weatherForecastDay">
	<xsl:value-of select="aws:title/@alttitle" />
	</td>
			<td class="weatherForecastImage">
	<img width="25" height="21"><xsl:attribute name="alt"><xsl:value-of select="aws:short-prediction"/></xsl:attribute><xsl:attribute name="src"><xsl:value-of select="local:wxicon(aws:image/@icon)"/></xsl:attribute></img>
	</td>
			<td class="weatherForecastText">
	<xsl:value-of select="aws:short-prediction" />
	</td>
			<td class="weatherForecastTemps">
	<span class="weatherForecastHigh"><xsl:value-of select="aws:high"/><xsl:if test="aws:high != '--'"><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text></xsl:if></span> / <span class="weatherForecastLow"><xsl:value-of select="aws:low"/><xsl:if test="aws:low != '--'"><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text></xsl:if></span>
	</td>
		</tr>
		<xsl:if test="local:foreCount() &lt; 4">
			<tr>
				<td colspan="4" class="weatherForecastDescription"><xsl:value-of disable-output-escaping="yes" select="aws:prediction" /> </td>
			</tr>
		</xsl:if>
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
	
	<xsl:template match="image">
		<a>
			<xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
			<img border="0" align="absbottom">
				<xsl:attribute name="src"><xsl:value-of select="url"/></xsl:attribute>
			</img>
		</a>
	</xsl:template>
	
	<xsl:template match="enclosure">
		<div class="rssEnclosure">
			<img >
				<xsl:attribute name="src"><xsl:value-of select="@url"/></xsl:attribute>
			</img>
		</div>
	</xsl:template>




<msxsl:script implements-prefix="local" language="VBscript">
<![CDATA[


dim	g_nForeCount
g_nForeCount = 0

function foreCount()
	g_nForeCount = g_nForeCount + 1
	foreCount = g_nForeCount
end function


function wxicon(o)
	dim	s
	s = o(0).text
	if 0 = len(s) then
		wxicon = "images/wxaws/forecast/cond999.gif"
	else
		wxicon = "images/wxaws/forecast/" & right(s,11)
	end if
end function

function roundValue(oNode)
	DIM	s
	s = oNode.item(0).text
	IF ISNUMERIC(s) THEN
		roundValue = ROUND(CLNG(s),0)
	ELSE
		roundValue = s
	END IF
end function



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