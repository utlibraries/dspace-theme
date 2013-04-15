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

	 <xsl:template name="policies_submissionURI">
			<xsl:text>Submission and Withdrawal Policy</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policies_submissionBreadcrumb">
		     <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Submission and Withdrawal Policy</li>
	 </xsl:template>
	
    <xsl:template name="policies_submissionBody">
    	
		 <h1 class="ds-div-head">
                        <div class="sub-header-image"><img class="sub-header-image-corner"
                            src="themes/utdigithing/images/sub-header-lft-corner.jpg" alt=""/>Submission and Withdrawal Policy</div></h1>
                    <p><br /><strong>Submission</strong></p>
                    <p>Works  submitted to University of Texas Digital Repository should fulfill the  requirements outlined below.  For  instructions on how to submit works to UT Digital Repository, please see the <a href="/help">Help</a> section.</p>
                    <ol start="1" type="1">
                        <li>Works must be produced or sponsored by University of Texas at Austin faculty, research staff, or students.  Submission of works produced by students must be sponsored by a faculty member.   </li>
                    </ol>
                    
                    <ol start="2" type="1">
                        <li>Works must be submitted to a <a href="/glossary#community-collection">Collection</a>.  Submitters need authorization to submit  works to a Collection.  For  information on gaining authorization, please see <em><a href="/faqs#gainauthorization">How do I gain authorization to submit to the UT Digital Repository?</a></em> in our <a href="/faqs">FAQs</a>.</li>
                    </ol>
                    <ol start="3" type="1">
                        <li>Works must reflect the nature of the Collection  to which they are submitted.  All  submitted works will be reviewed by the Collection or UT Digital  Repository Curator.  Please see the <a href="/policies_collections">Collections  Policy</a> for more information.  </li>
                    </ol>
                    
                    <ol start="4" type="1">
                        <li>Works must be in digital form.  Although any digital format will be  accepted, submission in a <a href="/recommended_file_formats">recommended file format</a> is strongly  encouraged in order to facilitate long-term preservation.</li>
                    </ol>
                    <ol start="5" type="1">
                        <li>Works  may be comprised of individual or multiple files.  Individual files over 512 MB in size may  require staff assistance to upload. For submission of files larger than 512 MB,  please contact the <a href="/glossary#repository-curator">Repository Curator</a>, Uri Kolodney, at <a href="mailto:utdr-collections@utlists.utexas.edu">utdr-collections@utlists.utexas.edu</a> .  </li>
                    </ol>
                    
                    <ol start="6" type="1">
                        <li>Works should be ready for dissemination and  copyright owners must be able to grant <a href="non-exclusive">non-exclusive rights</a> to distribute  and preserve the works.  Please note  that copyright owners retain copyright; see the <a href="/policies_copyright">Copyright and Licensing  Policy</a> for more information.  </li>
                    </ol>
                    <ol start="7" type="1">
                        <li>Works may be submitted individually or in  batches.  Batch loads require  special programming and scheduling.   For batch submissions, please contact Uri Kolodney, Repository Curator, at <a href="mailto:utdr-collections@utlists.utexas.edu">utdr-collections@utlists.utexas.edu</a>.  </li>
                    </ol>
                    
                    <p><strong>Withdrawal</strong></p>
                    <ol start="8" type="1">
                        <li>UT Digital Repository reserves the right to withdraw a work that is libelous, an invasion of privacy, or that does not  reflect the nature of the <a href="/glossary#community-collection">Collection</a> to which the work was submitted.  </li>
                    </ol>
                    
                    <ol start="9" type="1">
                        <li>Requests for withdrawal must be directed to the Collection and UT Digital <a href="/glossary#repository-curator">Repository Curators</a>.  After review of the request, the  <a href="/glossary#repository-curator">Collection Curator(s)</a> will contact the requestor to let him/her know a       work has been withdrawn, or, if withdrawal is not appropriate, to let the       requestor know the reason(s) withdrawal was not completed.  </li>
                    </ol>
                    <ol start="10" type="1">
                        <li>If withdrawal is requested due to a <a href="/glossary#copyright-violation">copyright  violation</a>, the Collection and UT Digital Repository Curators will temporarily restrict access to the work and will notify the submitter.  If it is found that copyright was       violated, the work will be withdrawn.  </li>
                    </ol>
                    
                    <ol start="11" type="1">
                        <li>The <a href="/glossary#non-exclusive">non-exclusive</a> submission agreement  preserves the creator’s right to submit additional copies elsewhere.  Works may not be withdrawn because a submitter       and/or creator leaves the University of Texas at Austin.  </li>
                    </ol>
                    <ol start="12" type="1">
                        <li>Works submitted to UT Digital Repository are assigned <a href="/glossary#presistent-url">persistent URLs</a>.  If  withdrawal is approved, the UT Digital Repository will display a message alerting users that the content associated with the persistent URL has       been withdrawn.  </li>
                    </ol>
                    
                    <ol start="13" type="1">
                        <li><a href="/glossary#metadata">Metadata</a> for withdrawn works, including       information about the reason for withdrawal, will remain in UT Digital       Repository and will be accessible only by UT Digital Repository administrators       and curators</li>
                    </ol>

    </xsl:template>
 
</xsl:stylesheet>
