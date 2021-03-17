
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
   
    <xsl:template match="/scene[@name]">
        <!-- root element-->
        <scene name="{@name}">
            <xsl:apply-templates/>
        </scene>
    </xsl:template>
    
    <xsl:template match="descendant::p[@class='italic']"><!-- stage directions-->
        <stage><xsl:apply-templates/></stage>
    </xsl:template>
    
    <xsl:template match="descendant::br"><!-- signify boxes-->
        <xsl:apply-templates/>
        <boxstart/>
    </xsl:template>
    
    <xsl:template match="descendant::b"><!--move text to attribute value -->
            <speaker>
            <xsl:attribute name="name" select="text()"/>
            <xsl:apply-templates/></speaker>     
    </xsl:template>
    
    <xsl:template match="descendant::div[@class]">
        <speaker name="Cloud">
            <xsl:apply-templates/>
        </speaker>
        
    </xsl:template>
</xsl:stylesheet>
