<xsl:stylesheet
	version="1.0"
	exclude-result-prefixes="msxsl local"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:local="#local-functions">


<xsl:output method="html" indent="no" encoding="windows-1252"/>




<xsl:template match="/calendar">

	<table cellspacing="0" cellpadding="0" border="0" width="100%" style="border:0px solid #FFFFFF; border-collapse: collapse">
		<xsl:apply-templates select="event">
			<xsl:sort select="date"/>
		</xsl:apply-templates>
	</table>
</xsl:template>

<xsl:template match="event">
	<xsl:apply-templates select="date"/>
	<tr>
	<td valign="top" align="right" class="remind_date"><xsl:value-of select="local:buildDateString(.)"/></td>
	<td width="5" valign="top" class="remind_date">&#xA0;</td>
	<td valign="top" class="remind_date"><xsl:value-of select="local:buildWeekdayString(.)"/></td>
	<td width="15" valign="top" align="center" class="remind_dash">-</td>
	<td><xsl:if test="style"><xsl:attribute name="class"><xsl:value-of select="style"/></xsl:attribute></xsl:if>
		<xsl:apply-templates select="subject"/>
		<xsl:if test="bodytext"><xsl:apply-templates select="bodytext"/></xsl:if></td>
	</tr>
</xsl:template>

<xsl:template match="date">
	<xsl:if test="local:isNewMonth(.)">
		<xsl:if test="local:isLastDaySpecified()">
		  <tr>
		    <td height="10" colspan="5"><spacer type="block" height="1" width="1"/></td>
		  </tr>
		</xsl:if>
		  <tr>
		    <th align="left" style="color: #000099" colspan="5" class="RemindMonthHeader"><xsl:value-of select="local:buildMonthString(.)"/></th>
		  </tr>
		  <tr>
		    <td height="2" bgcolor="#000099" colspan="5" class="RemindMonthRule"><spacer type="block" height="1" width="1"/></td>
		  </tr>
	</xsl:if>
	<xsl:if test="local:isNewWeek(.)">
		  <tr>
		    <td height="1" bgcolor="#99CCFF" colspan="5" class="RemindWeekRule"><spacer type="block" height="1" width="1"/></td>
		  </tr>
	</xsl:if>
</xsl:template>

<xsl:template match="subject">
		<xsl:value-of disable-output-escaping="yes" select="." />
</xsl:template>
<xsl:template match="bodytext">
	-- <i><xsl:value-of disable-output-escaping="yes" select="." /></i>
</xsl:template>

<xsl:template match="text()">
	<xsl:value-of select="."/>
</xsl:template>


<xsl:template match="small">
<span style="font-size: small"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="large">
<span style="font-size: large"><xsl:apply-templates/></span>
</xsl:template>


<msxsl:script implements-prefix="local" language="VBscript">
<![CDATA[


DIM g_sLastDay
DIM g_nLastMonth
DIM g_nNextSat
DIM g_bNewDay

g_sLastDay = ""
g_nLastMonth = 0
g_nNextSat = 0
g_bNewDay = false


FUNCTION isLastDaySpecified()
	IF 0 < LEN(g_sLastDay) THEN
		isLastDaySpecified = TRUE
	ELSE
		isLastDaySpecified = FALSE
	END IF
END FUNCTION


function encodeText(oNode)
	DIM s
	s = oNode.item(0).text
	''s = REPLACE( s, "<", "&lt;", 1, -1, vbTextCompare )
	''s = REPLACE( s, ">", "&gt;", 1, -1, vbTextCompare )
	''s = REPLACE( s, "&", "&amp;", 1, -1, vbTextCompare )
	encodeText = s
end function


function getMonthName(m,n)
	getMonthName = MONTHNAME( m, n )
end function


function getDayName(d,n)
	getDayName = WEEKDAYNAME( d, TRUE, 1 )
end function

function isNewDay(oDate)

	DIM sTemp

	sTemp = oDate.text

	if sTemp = g_sLastDay then
		isNewDay = false
	else
		g_sLastDay = sTemp
		isNewDay = true
	end if
end function

sub calcNextSat(oDate)

	DIM dd, wd
	DIM nDay, nWd
	DIM oAttrs

	SET oAttrs = oDate.item(0).attributes
	dd = oAttrs.getNamedItem("d").value
	wd = oAttrs.getNamedItem("wd").value
	nDay = CINT(dd)
	nWd = CINT(wd)
	g_nNextSat = (7 - nWd) + nDay
end sub


function isNewWeek(oDate)
	dim oAttrs
	dim dd, nDay

	SET oAttrs = oDate.item(0).attributes
	dd = oAttrs.getNamedItem("d").value
	nDay = CINT(dd)

	if g_nNextSat < nDay then
		calcNextSat oDate
		isNewWeek = true
	else
		isNewWeek = false
	end if

end function

function isNewMonth(oDate)
	dim oAttrs
	dim mm

	SET oAttrs = oDate.item(0).attributes
	mm = oAttrs.getNamedItem("m").value

	if mm = g_nLastMonth then
		isNewMonth = false
	else
		calcNextSat oDate

		g_nLastMonth = mm
		isNewMonth = true
	end if
end function

function buildDateString(oEvent)

	dim oAttrs
	dim dd
	dim oDate

	set oDate = oEvent.item(0).selectSingleNode("date")
	if isNewDay( oDate ) then

		set oAttrs = oDate.attributes
		dd = oAttrs.getNamedItem("d").value

		g_bNewDay = true
		buildDateString = "" & dd & ", "

	else

		g_bNewDay = false
		buildDateString = ""
	end if
end function

function buildWeekdayString(oEvent)
	dim oAttrs
	dim wd
	dim oDate

	if g_bNewDay then
		set oDate = oEvent.item(0).selectSingleNode("date")
		set oAttrs = oDate.attributes
		wd = oAttrs.getNamedItem("wd").value
	
		g_bNewDay = false
		buildWeekdayString = getDayName(wd,3)
	else
		buildWeekdayString = ""
	end if
end function

function buildMonthString(oDate)
	dim oAttrs
	dim mm, yy

	SET oAttrs = oDate.item(0).attributes
	mm = oAttrs.getNamedItem("m").value
	yy = oAttrs.getNamedItem("y").value

	buildMonthString = getMonthName(mm,0) & " - " & yy
end function



]]></msxsl:script>
</xsl:stylesheet>