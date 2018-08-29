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
	<xsl:apply-templates select="aws:alerts"/>
</xsl:template>

<xsl:template match="aws:alert">
<div class="weatherAlert">
	<xsl:value-of select="aws:type" /> - <xsl:apply-templates select="aws:expires-date" />
</div>
</xsl:template>

<xsl:template match="aws:expires-date">
	<xsl:call-template name="weatherDate" />
</xsl:template>

<xsl:template name="weatherDate">
	<span class="weatherAlertDateExpires">
	<xsl:value-of select="aws:day/@abbrv" />,
	<xsl:text> </xsl:text>
	<xsl:value-of select="aws:month/@number" />/<xsl:value-of select="aws:day/@number" />/<xsl:value-of select="aws:year/@number" />
	<xsl:text> </xsl:text>
	<xsl:value-of select="aws:hour/@number"/>:<xsl:value-of select="aws:minute/@number"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="aws:am-pm/@abbrv"/>
	</span>
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
	wxicon = "images/wxaws/forecast/" & right(s,11)
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