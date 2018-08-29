<?xml version="1.0"?>
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
		<xsl:apply-templates select="channel"/>
</xsl:template>

<xsl:template match="channel">
	<xsl:apply-templates select="aws:weather"/>
</xsl:template>
<xsl:template match="aws:weather">
	<xsl:apply-templates select="aws:ob"/>
</xsl:template>

<xsl:template match="aws:ob">
	<xsl:call-template name="weatherLocation" />
	<xsl:call-template name="weatherConditions" />
</xsl:template>

<xsl:template name="weatherWindGauge">
	<div class="weatherWindGauge">
	<xsl:choose>
	<xsl:when test="0 &lt; aws:wind-speed-avg">
	<img><xsl:attribute name="alt"><xsl:value-of select="aws:wind-direction-avg" /></xsl:attribute><xsl:attribute name="src">images/wxaws/wind/<xsl:value-of select="aws:wind-direction-avg" />.gif</xsl:attribute></img>
	<div>
	<xsl:value-of select="aws:wind-speed-avg" />
	</div>
	</xsl:when>
	<xsl:otherwise>
	<img alt="Calm" src="images/wxaws/wind/0.gif" />
	<div>
	-0-
	</div>
	</xsl:otherwise>
	</xsl:choose>
	</div>
</xsl:template>

<xsl:template name="weatherConditions">
<table border="0">
	<tr>
<td>
	<xsl:apply-templates select="aws:current-condition"/>
	<div class="weatherCurrentText">
	<xsl:value-of select="aws:current-condition"/>
	</div>
	</td>
	<td align="center">
	<xsl:call-template name="weatherCurrentTemp" />
	<xsl:apply-templates select="aws:ob-date" />
	</td>
	<td>
	<xsl:call-template name="weatherWindGauge" />
	</td>
	</tr>
	</table>
</xsl:template>

<xsl:template name="weatherLocation">
	<div class="weatherCurrentCity">
	<xsl:value-of select="aws:city-state" />
	</div>
</xsl:template>

<xsl:template match="aws:ob-date">
	<div class="weatherCurrentDate">
	<xsl:value-of select="aws:hour/@number"/>:<xsl:value-of select="aws:minute/@number"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="aws:am-pm/@abbrv"/>
	</div>
</xsl:template>

<xsl:template match="aws:current-condition">
	<img ><xsl:attribute name="alt"><xsl:value-of select="."/></xsl:attribute><xsl:attribute name="src"><xsl:value-of select="local:wxicon(@icon)"/></xsl:attribute></img>
</xsl:template>

<xsl:template name="weatherCurrentTemp">
<div class="weatherCurrentTemp">
<xsl:value-of select="local:roundValue(aws:temp)" /><xsl:text disable-output-escaping="yes">&amp;deg;</xsl:text>
	<xsl:if test="3 &lt; local:absdiff(aws:temp, aws:feels-like)">
	<span class="weatherFeelsLike"><xsl:text> </xsl:text>(<xsl:value-of select="aws:feels-like"/>)</span>
	</xsl:if>
</div>
<div class="weatherTodaysTemps">
	<span class="weatherTodaysHigh"><xsl:value-of select="aws:temp-high" /></span>
	<span class="weatherTodaysLow"><xsl:value-of select="aws:temp-low" /></span>
</div>

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


function absdiff(o1, o2)
	dim	s1
	dim	s2
	s1 = o1(0).text
	s2 = o2(0).text
	dim n1
	dim n2
	n1 = cdbl(s1)
	n2 = cdbl(s2)
	absdiff = abs(n1 - n2)
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