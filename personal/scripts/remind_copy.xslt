<?xml version="1.0"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xsi:noNamespaceSchemaLocation="remind.xsd"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:xi="http://www.w3.org/2001/XInclude"
>

<xsl:output method="xml" version="1.0" indent="yes" encoding="ISO-8859-1" />

<xsl:template match="xi:include">
	<xsl:apply-templates select="document(@href)"/>
</xsl:template>

<xsl:template match="*|@*">
<xsl:copy>
<xsl:apply-templates select="node()|@*"  />
</xsl:copy>
</xsl:template>



</xsl:stylesheet>