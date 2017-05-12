<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml" indent="yes"  standalone="yes"/>

	<xsl:template match="/plugins">
		<ivy-module version="2.0">
			<info module="viskit" organisation="com.kony" />
			<dependencies>
				<xsl:apply-templates select="pluginInfo"/>
			</dependencies>
		</ivy-module>
	</xsl:template>

	<xsl:template match="pluginInfo">
		<dependency rev="{@version-no}" name="{@plugin-id}"/>
	</xsl:template>

</xsl:stylesheet>