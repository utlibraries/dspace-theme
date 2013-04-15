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

	 <xsl:template name="policies_metadataURI">
			<xsl:text>Metadata Policy</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policies_metadataBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Metadata Policy</li>
    </xsl:template>
	
    <xsl:template name="policies_metadataBody">
    	
		<div class="headwrapper">
			<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1>
			<div class="ds-div-head">Metadata Policy</div>
			</h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>		 	

                    <ol start="1" type="1">
                        <li>Submitting works to the University  of Texas Digital Repository requires a minimum set of submitter-supplied  descriptive information (or metadata). This <a href="/glossary#metadata">metadata</a> will be indexed and       used in both the search and browse functions of the UT Digital Repository.       In addition, the metadata will be made available for external search       engines, such as Google and <a href="/glossary#oaister">OAIster</a>.          </li>
                    </ol>
                    
                    <table cellspacing="0" cellpadding="0"   style="width:480px; margin-left:40px; margin-right:40px;border: 1px solid #111111;">
                        <tr>
                            <td width="480" colspan="2" valign="top"><p align="center"><strong><em>Required  Metadata </em></strong></p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p><strong>Metadata field</strong></p></td>
                            <td width="350" valign="top"><p><strong>Definition</strong></p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Title</p></td>
                            <td width="350" valign="top"><p>A name given to the work.</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Creator</p></td>
                            <td width="350" valign="top"><p>The name of the person(s), institution, group, or agent primarily responsible for making the work. </p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Date </p></td>
                            <td width="350" valign="top"><p>A single date indicating when the work was completed or published. </p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Department</p></td>
                            <td width="350" valign="top"><p>The name of creator's or submitter's academic department or affiliation.</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Subject/Keywords</p></td>
                            <td width="350" valign="top"><p>The topic(s) of the work. At least one subject/keyword is required.</p></td>
                        </tr>
                    </table>
                    
                    <ol start="2" type="1">
                        <li> Additional <a href="/glossary#metadata">metadata</a> fields are also available, increasing the discoverability of a work. These may or may not be applicable to submitted works and are not required. See the section on Established Collections in the <a href="policies_collections">Collections Policy</a> for collection-specific metadata.  </li>
                    </ol>
                    <table  cellspacing="0" cellpadding="0"  style="width:480px; margin-left:40px;border: 1px solid #111111;">
                        <tr>
                            <td width="480" colspan="2" valign="top"><p align="center"><strong><em>Optional Metadata</em></strong></p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p><strong>Metadata field</strong></p></td>
                            <td width="350" valign="top"><p><strong>Recommendation for Use</strong></p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Abstract    or Summary</p></td>
                            <td width="350" valign="top"><p>Highly    recommended for all works</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Publisher</p></td>
                            <td width="350" valign="top"><p>Highly    recommended for previously published or disseminated works</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Sponsor</p></td>
                            <td width="350" valign="top"><p>Highly    recommended for works based on work sponsored or supported by an external    agency or organization.</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Primary    Language of Work</p></td>
                            <td width="350" valign="top"><p>Highly    recommended for all textual works</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Type    of Work</p></td>
                            <td width="350" valign="top"><p>Highly    recommended for all works (e.g. article, book, image)</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Additional    Contributors</p></td>
                            <td width="350" valign="top"><p>Recommended    for all works with additional contributors like editors or advisors</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Series    and Report Number</p></td>
                            <td width="350" valign="top"><p>Recommended    for works in a series (e.g. a working paper series)</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Additional    identifiers</p></td>
                            <td width="350" valign="top"><p>Recommended    for works with an identifier like an ISBN, ISSN, or DOI for the publisher's    version of the work</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Description</p></td>
                            <td width="350" valign="top"><p>Recommended    for works with supplementary material</p></td>
                        </tr>
                        <tr>
                            <td width="130" valign="top"><p>Copyright    Owner</p></td>
                            <td width="350" valign="top"><p>Recommended    for all works</p></td>
                        </tr>
                    </table>
                    <ol start="3" type="1">
                        <li> Additionally, some <a href="/glossary#metadata">metadata</a> will be  automatically generated by the software used by UT Digital Repository at the point of submission including, size of work, format of work, date and time of deposit, and a <a href="/glossary#persistent-url">persistent URL</a> to the work.  </li>
                    </ol>

    </xsl:template>
 
</xsl:stylesheet>
