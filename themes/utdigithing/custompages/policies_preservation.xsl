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

	 <xsl:template name="policies_preservationURI">
			<xsl:text>Preservation Policy</xsl:text>
	 </xsl:template>

    <xsl:template name="policies_preservationBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Preservation Policy</li>
    </xsl:template>

    <xsl:template name="policies_preservationBody">

		 <div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1>
			<div class="ds-div-head">Preservation Policy</div>
			</h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>


                    <p>The University of Texas Digital Repository is  committed to responsible and sustainable management of submitted works. </p>
                    <ol start="1" type="1">
                        <li><a href="/glossary#digital-preservation">Digital preservation</a> is an  evolving field; therefore, UT Digital Repository’s long-term access strategies are shaped by the <a href="/glossary#oais">Open Archival Information System </a>(OAIS)       reference model <a href="http://www.iso.org/iso/home/store/catalogue_ics/catalogue_detail_ics.htm?csnumber=57284">(ISO 14721:2012)</a> and informed by relevant international standards and emerging best practices.  </li>
                    </ol>

                    <ol start="2" type="1">
                        <li><p>Prudent efforts will be employed to preserve work in any digital format submitted to UT Digital   Repository, however submission in a <a href="/glossary#file-formats">recommended file format</a> is strongly encouraged in order to facilitate long-term preservation.  Please see <a href="/recommended_file_formats">Recommended File Formats</a> for a list of preferred formats</p>
                            <p>For  files in formats other than those listed in <a href="/recommended_file_formats">Recommended File Formats</a>, a  <a href="/glossary#derivative">derivative file</a> in a more stable format might be created.  In such cases, resources permitting, the  original file as well as the derivative will be preserved, along with  associated descriptive and administrative <a href="/glossary#metadata">metadata</a> for both files.</p>
                        </li>
                    </ol>
                    <ol start="3" type="1">
                        <li><p>UT Digital Repository will provide long-term access to submitted works, as well as associated  descriptive and administrative <a href="/glossary#metadata">metadata</a>, by employing a strategy combining the following:</p>

                            <p>•     Secure backup<br />
                                •     <a href="/glossary#storage-refreshment">Storage media refreshment </a><br />
                                •     <a href="/glossary#file-migration">File format migration</a> (including possible  migration to standard formats during submission)</p>
                            <p>At  this time, UT Digital Repository is committed to preserving the <a href="/glossary#bitstream">bitstream</a> (the  binary form of the data).  Further  practical measures to preserve as much functionality (“look and feel”) of the  original as possible will be employed as resources permit.    </p>
                        </li>
                    </ol>
                    <ol start="4" type="1">
                        <li>All works submitted to UT Digital Repository will be assigned a <a href="/glossary#persistent-url">persistent URL</a>.</li>
                    </ol>
                    <ol start="5" type="1">
                        <li>This policy and related preservation activities will be reviewed regularly to ensure practices remain current as technology and institutional practices evolve.  </li>
                    </ol>

    </xsl:template>

</xsl:stylesheet>
