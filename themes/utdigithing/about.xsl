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

	 <xsl:template name="aboutURI">
		<xsl:text>About</xsl:text>
	 </xsl:template>
    
    <xsl:template name="aboutBreadcrumb">
		  <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">About</li>                 		
	 </xsl:template>
	
    <xsl:template name="aboutBody">
    
    	<div class="headwrapper">
	<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
	<h1>
	<div class="ds-div-head">About</div>
	</h1>
	</div>
	<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
                    
<p>
The University of Texas Digital Repository (UTDR) was established to provide open, online access to the products of the University's research and scho
larship, to preserve these works for future generations, to promote new models of scholarly communication, and to help deepen community understanding 
of the value of higher education.
</p>
<p>
In addition to preserving selected works of research and scholarship, UTDR also holds materials that reflect the intellectual and service environment 
of our campus community.
</p>

			<p>Additionally, the Repository offers (1) submission services, (2) Community/Collection creation 
			services, (3) access services, and (4) preservation services to support Repository users.</p>
			
			<ol>
			<li>
			Submission services - There is an easy-to-use web based process for submitting digital works to an 
established <a href="/glossary#community-collection">Collection</a>.  For authorization to submit to a Collection contact Colleen Lyon at <a 
href="mailto: utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.  Once 
authorized to do so, UT faculty, staff, students, colleges, departments, research centers, administrative and other campus groups can 
submit their works to the appropriate Collection.<br /><br />
A batch submission service of numerous works to a single Collection by UT Libraries staff is available.  UT Libraries staff will work with 
the submitter to prepare their digital data in acceptable formats.  This service will be scheduled according to staff work load.<br /><br 
/>
			</li>
			<li>
			    Community/Collection creation services - The Repository uses  <a href="/glossary#dspace">DSpace</a> software which supports a simple hierarchy structure, 
<a href="/glossary#community-collection">Community/Collection</a>.  Communities hold Collections, and Collections hold digital works. <br /><br />
If your department or research unit wants to establish and manage their own collections, we are happy to help you set up a new-community 
and work with you to set up access, membership, and other parameters. Each collection will have one or more curators who will help define specific procedures that best suit its needs. This curator can be a faculty or staff member from a department or research 
unit. For more information about collection responsibilities, see the <a href="policies_collections">Collections Policy</a>. To get started, please contact Colleen Lyon at 
<a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>. <br /><br />  
			</li>

			<li>
Access Services - The Repository provides persistent and reliable access to the digital scholarship of faculty, staff, and students 
and aims to provide the greatest possible dissemination and recognition to these works as possible.<br /><br />
 Works in the Repository will be indexed by Google, other search engines, and  <a href="/glossary#oai-pmh">OAI-PMH</a> harvesters like <a href="/glossary#oaister">OAIster</a> making them more findable.  
Additionally the Repository has RSS feeds that can be incorporated into readers and other web applications, boosting accessibility to the 
works.<br /><br />    
			</li>
			<li>
Preservation services - The Repository will provide long-term access to submitted works, as well as associated descriptive and 
			    administrative <a href="/glossary#metadata">metadata</a>, by employing a strategy combining the following:  secure backup, <a href="/glossary#storage-refreshment">storage media refreshment</a>, and <a href="/glossary#format-migration">file format 
migration</a>.  At this time, the Repository is committed to preserving the bitstream (the binary form of the data).  
<br /><br />
The Repository also provides you with a permanent and persistent web address for your work that you and others can reliably cite.  
<br /><br />
			</li>
			</ol>
<p>For additional information, see the <a href="/faqs">FAQs</a> and <a href="/policies">UT Digital Repository Policies</a>:</p>
<ul>
    <li><a href="/policies_services">UT Digital Repository Services</a></li>
    <li><a href="/policies_submission">Submission and Withdrawal Policy</a></li>
    <li><a href="/policies_collections">Collections Policy</a></li>
    <li><a href="/policies_metadata">Metadata Policy</a></li>
    <li><a href="/policies_copyright">Copyright and Licensing Policy</a></li>
    <li><a href="/policies_preservation">Preservation Policy</a></li>
</ul>       
                   

    </xsl:template>
 
</xsl:stylesheet>
