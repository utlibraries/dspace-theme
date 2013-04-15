<?xml version="1.0" encoding="UTF-8"?>

<!-- 
    Author: Steven Williams
    
-->    

<xsl:stylesheet xmlns:i18n="http://apache.org/cocoon/i18n/2.1"
	xmlns:dri="http://di.tamu.edu/DRI/1.0/"
	xmlns:mets="http://www.loc.gov/METS/"
	xmlns:xlink="http://www.w3.org/TR/xlink/"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:dim="http://www.dspace.org/xmlns/dspace/dim"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:mods="http://www.loc.gov/mods/v3"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="mets xlink xsl dim xhtml mods dc">

    <xsl:output indent="yes"/>

	 <xsl:template name="policiesURI">
			<xsl:text>Policies</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policiesBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Policies</li>

	 </xsl:template>
	
    <xsl:template name="policiesBody">
    	
		<div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
		<h1>
		<div class="ds-div-head">Policies</div>
		</h1>
		</div>
		<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
		    <ul>
		        <li><a href="/policies_services">UT Digital Repository Services</a></li>
		        <li><a href="/policies_submission">Submission and Withdrawal Policy</a></li>
		        <li><a href="/policies_collections">Collections Policy</a></li>
		        <li><a href="/policies_metadata">Metadata Policy</a></li>
		        <li><a href="/policies_copyright">Copyright and Licensing Policy</a></li>
		        <li><a href="/policies_preservation">Preservation Policy</a></li>
		        <li><a href="/recommended_file_formats">Recommended File Formats</a></li>
		    </ul>

    </xsl:template>
 
</xsl:stylesheet>
