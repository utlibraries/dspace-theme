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

	 <xsl:template name="contactURI">
		<!-- contact is build into Dspace so no URI template is needed -->
	 </xsl:template>
    
    <xsl:template name="contactBreadcrumb">
		  <!-- contect is build into Dspace so no URI template is needed -->                		
	 </xsl:template>
	
    <xsl:template name="contactBody">
    	
    	<div class="headwrapper">
	<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
	<h1>
	<div class="ds-div-head">Contact</div>
	</h1>
	</div>
	<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
                    	<br />
			<p>For questions about established collections and autorizations or how to get started with the Repository, contact  
			Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> or (512) 495-4244</p>

                    <p>For questions about copyright, contact Lexie Thompson-Young
			at <a href="mailto:utdr-copyright@utlists.utexas.edu">utdr-copyright@utlists.utexas.edu</a> or (512) 495-4251</p>

    	

    </xsl:template>
 
</xsl:stylesheet>
