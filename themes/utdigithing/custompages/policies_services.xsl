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

	 <xsl:template name="policies_servicesURI">
			<xsl:text>UT Digital Repository Services</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policies_servicesBreadcrumb">
		   <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">UT Digital Repository Services</li>               		
	 </xsl:template>
	
    <xsl:template name="policies_servicesBody">
    	
		<div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1>
			<div class="ds-div-head">UT Digital Repository Services</div>
			</h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
                   
                    <ol start="1" type="1">
<li>
<p>
The University of Texas Digital Repository (UTDR) was established to provide open, online access to the products of the University's research and scholarship, to preserve these works for future generations, to promote new models of scholarly communication, and to help deepen community understanding of the value of higher education.
</p>
</li>
                    </ol>
                    
                    <ol start="2" type="1">
                        <li><p>UT Digital Repository will adhere to  <a href="http://www.utexas.edu/cio/policies/web-privacy/">UT’s Web Privacy Policy</a>, and to the security standards for  <a href="http://www.utexas.edu/its/policies/opsmanual/secstd.php">Category II-Data</a>. </p> 
			<p>The UT Digital Repository does not accept <a 
href="http://www.utexas.edu/its/policies/opsmanual/cat-1data.php">Category 
I Data</a>.</p>
                            <p>Users  of UT Digital Repository will adhere to <a href="http://www.utexas.edu/vp/it/policies/aup/"> UT’s Acceptable Use Policy</a>,  and to the <a href="http://www.lib.utexas.edu/usage_statement.html">Material Usage Statement</a>.  </p>
                        </li>
                    </ol>
                    <ol start="3" type="1">
                        <li><p>UT Digital Repository uses <a href="/glossary#dspace">DSpace</a> software which supports a simple hierarchy structure,  <a href="/glossary#community-collection">Community/Collection</a>.  Communities  hold Collections, and Collections hold digital works. </p> 
                            
                            <p>There  are also UT Digital Repository staff roles associated with the Community/Collection  hierarchy.  </p>
                            <p>UT Digital Repository……..staff  role:  <a href="/glossary#repository-curator">Repository Curator</a></p>
                            <p style="margin-left:3em;"> Community………...staff  role:  <a href="/glossary#community-administrator">Community Administrator</a></p>
                            <p style="margin-left:6em;">Collection ….staff role:   <a href="/glossary#collection-curator">Collection Curator</a></p>
                        </li>
                    </ol>
                    <ol start="4" type="1">
                        <li>As outlined below, the  University of Texas Libraries offers <a href="#submission_services">submission services</a>, <a href="#community_services">Community creation services</a>, <a href="#access_services">access services</a>, and <a href="#preservation_services">preservation  services</a> to support the users of UT Digital Repository.  </li>
                    </ol>
                    
                    <ol start="5" type="1">
                        <li><p><strong><a name="submission_services" id="submission_services"></a>Submission Services to Established Collections</strong></p>
                            <p>UT Digital Repository offers an easy-to-use web based process for submitting digital works one by one to an established Collection.  All faculty are automatically authorized to submit to the <a href="/handle/2152/12">UT Faculty/Researcher Works collection</a> when they login with their EID and password. Staff and students must request authorization from the Repository Curator before submitting work to the Repository.    See the <a href="/policies_submission">Submission and Withdrawal Policy</a> for submission  guidelines and the <a href="/help">Help</a> section for step-by-step instructions.  </p>
                            <p>A  batch submission service of numerous works to a single Collection by UT  Libraries staff is available.  This  service will be scheduled according to staff work load.  Please contact the Repository Curator, Colleen Lyon, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> for additional information on the batch submission service.</p>
                        </li>
                    </ol>
                    <br clear="all" />
                    <ol start="6" type="1">
                        <li><p><strong><a name="community_services" id="community_services"></a>Community Creation Services</strong></p>
                            <p>For  colleges, departments, research centers, or administrative and other campus  groups interested in maintaining their own Community, UT Libraries staff will work  with your staff to help create a new Community, as well as provide advice on  <a href="/glossary#metadata">metadata</a> specific to your Community’s needs and information on copyright  issues.  As stated in number 4 above,  Communities hold Collections, and Collections hold digital works.  </p>
                            <p>When  setting up a Community, the department or research center must identify a <a href="/glossary#community-administrator">Community  Administrator</a> to be responsible for managing all aspects of the Community,  including the Community’s Collections, and if appropriate, Curators.  Together we will work through the Collection  guidelines and necessary workflows.  For  more information on Collection requirements, see the <a href="/policies_collections">Collections Policy</a>.</p>
                        </li>
                    </ol>
                    <ol start="7" type="1">
                        <li><p><strong><a name="access_services" id="access_services"></a>Access Services</strong></p>
                            <p>UT  Digital Repository is built with technology that assures the online stability  of a work submitted to a Collection; making the citation to the work as reliable  as a scholarly journal, while the work is as accessible as any website.  </p>
                            <p>Each  work and the information about it (the metadata) will have a <a href="/glossary#persistent-url">persistent URL</a> so it  can be easily cited by other researchers.</p>
                            <p>Works  in UT Digital Repository will be indexed by Google, other search engines, and  <a href="/glossary#oai-pmh">OAI-PMH</a> harvesters like <a href="/glossary#oaister">OAIster</a> making them more findable.  Additionally UT Digital Repository has an RSS  feed that can be incorporated into readers and other web applications, boosting  accessibility to the works.  </p>
                        </li>
                    </ol>
                    <ol start="8" type="1">
                        <li><p><strong><a name="preservation_services" id="preservation_services"></a>Preservation Services</strong></p>
                            <p>UT  Digital Repository will provide long-term access to submitted works, as well as  associated descriptive and administrative <a href="/glossary#metadata">metadata</a>, by employing a strategy  combining the following:</p>
                            <ul>
                                <li>Secure backup</li>
                                <li><a href="/glossary#storage-refreshment">Storage media refreshment</a></li>
                                <li><a href="/glossary#file-migration">File format migration</a> (including possible  migration to preferred formats during submission)</li>
                            </ul>
                            <p>At  this time, UT Digital Repository is committed to preserving the bitstream (the  binary form of the data).  Further practical measures to preserve as much functionality (“look and feel”) of the original as possible will be employed as resources permit. See the <a href="/policies_preservation">Preservation Policy</a> for more information.</p>
                        </li>
                    </ol>
                    <ol start="9" type="1">
                        <li><p>All of the below Policies are accessible through the UT Digital Repository: </p>
                            
                            <ul>
                                <li><a href="/policies_services">UT Digital Repository Services</a></li>
                                <li><a href="/policies_submission">Submission and Withdrawal Policy</a></li>
                                <li><a href="/policies_collections">Collections Policy</a></li>
                                <li><a href="/policies_metadata">Metadata Policy</a></li>
                                <li><a href="/policies_copyright">Copyright and Licensing Policy</a></li>
                                <li><a href="/policies_preservation">Preservation Policy</a></li>
                            </ul>
                        </li>
                    </ol>
    	
    	

    </xsl:template>
 
</xsl:stylesheet>
