<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body>
		<h1 style="text-align:center">Faculty Details</h1>
		<table border="2" align="center">
		<tr>
		<th>Name</th>
		<th>Age</th>
		<th>Salary</th>
		</tr>
		<xsl:for-each select="ChristUniversity/Faculty">
		<xsl:sort select="Name"></xsl:sort>
		<xsl:if test="Salary &gt; 25000">
		<tr>
		<td>
		<xsl:value-of select="Name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Salary"></xsl:value-of>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>