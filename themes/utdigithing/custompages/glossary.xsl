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

	 <xsl:template name="glossaryURI">
			<xsl:text>Glossary</xsl:text>
	 </xsl:template>

    <xsl:template name="glossaryBreadcrumb">
		     <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Glossary</li>
    </xsl:template>

    <xsl:template name="glossaryBody">

		<div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
		<h1>
		<div class="ds-div-head">Glossary</div>
		</h1>
		</div>
		<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

		    <p><strong><a name="bitstream"></a>Bitstream: </strong>The binary form  of data.</p>
		    <p><strong>Collection Curator</strong>: An individual  responsible for managing all aspects of a <a href="#community-collection">collection</a> within the  Repository.  Each collection will have  one or more curators who will help define specific procedures and guidelines.  The curator will be a faculty or staff member from a department, research unit,  and/or library.  </p>
		    <p><a name="collection-curator"></a>Collection  Curator is one of three management roles within the Repository:<br />
		        <blockquote><a href="#repository-curator" >Repository  Curator</a> – Overall management of the Repository<br />
		            <a href="#community-administrator" >Community  Administrator</a> – Management of a community within the Repository<br />
		            Collection  Curator – Management of a collection within a community</blockquote></p>
		    <p><strong>Collection Description Document</strong>: Documentation  describing a collection within the Repository.   In addition to describing what the collection is, details about access  to the collection, file storage, submission processes, metadata requirements,  preservation information, copyright considerations, and staff authorizations  are documented.</p>
		    <p><strong><a name="community-collection"></a>Community/Collection</strong>: UT Digital  Repository uses <a href="#dspace">DSpace</a> software which supports a simple hierarchy structure of  communities and collections.  Communities  hold a collection or collections, and the collection holds digital works.</p>
                    <p><strong><a name="community-administrator"></a>Community Administrator</strong>: An individual  responsible for managing all aspects of a <a href="#community-collection">community</a> or the person responsible for communication with the library staff managing the community.  Each community  will have one or more administrator who will help define specific procedures and  guidelines. The community administrator will be a faculty or staff member from  a department, research unit, and/or library.  </p>
		    <p>Community  Administrator is one of three management roles within the Repository:<br />
		        <blockquote><a href="#repository-curator">Repository  Curator</a> – Overall management of the Repository<br />
		            Community  Administrator – Management of a community within the Repository<br />
		            <a href="#collection-curator">Collection  Curator</a> – Management of a collection within a community</blockquote></p>
		    <p><strong><a name="copyright-violation"></a>Copyright Violation</strong>: Unauthorized  use of material that is covered by copyright law, in a manner that violates one  of the copyright owner's exclusive rights, such as the right to reproduce or  perform the copyrighted work, or to make derivative works.</p>
                    <p><strong><a name="derivative"></a>Derivative File</strong>: For the  purposes of the UT Digital Repository, a derivative file is a version of the  original file in a file format considered to be more stable than the original  file format.  For example, if a work is  submitted as a Word document we may create a derivative in a plain text format.   For additional information about the  preservation of original and derivative files, please see the <a href="/policies_preservation">Preservation  Policy</a>.</p>
		    <p><strong><a name="digital-preservation"></a>Digital Preservation</strong>: The series of  managed activities necessary to ensure authenticity of and continued access to digital  materials for as long as possible.</p>
                    <p><strong><a name="dspace"></a>DSpace</strong>: Open-source digital repository  software developed by the Massachusetts Institute of Technology Libraries and  Hewlett-Packard.  DSpace is used by institutions  worldwide to capture, store, index, and redistribute digital data in a variety  of formats.  More detailed information  about DSpace can be found at <a href="http://www.dspace.org">http://www.dspace.org</a>. </p>
		    <p><strong><a name="embargo"></a>Embargo</strong>: An instruction  to restrict access to a work for a specified period of time.  Please contact the Repository Curator at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> if you have questions about restricting access to your work.  </p>
                    <p><strong><a name="file-migration"></a>File Format Migration</strong>: Moving or  converting data from one file format to another format considered to be more  stable.  For the purposes of the UT  Digital Repository, the new file is considered a <a href="#derivative">derivative</a> file.  For additional information about the  preservation of original and derivative files, please see the <a href="/policies_preservation">Preservation  Policy</a>.<br />
		        <br />
		        <strong><a name="institutional-repos"></a>Institutional Repository</strong>: An online  database that archives, in digital format, the scholarly output of an institution  and makes that output freely available.</p>
                    <p><strong><a name="metadata"></a>Metadata</strong>: Information  used to identify and describe works within the Repository. This information  facilitates searching the Repository and includes the title, creator, and date  of a work, as well as technical information such as the file size and file  format.  </p>
                    <p><strong><a name="non-excuslive"></a>Non-exclusive rights</strong>: Rights are not  limited or restricted to one party.   Granting non-exclusive rights to the UT Digital Repository when you  submit your work still enables you to grant, assign, or retain any and all  rights you had before your submission.   Please see the <a href="/policies_copyright">Copyright and Licensing Repository Policy</a> for  additional information.</p>
                    <p><strong><a name="oai-pmh"></a>OAI-PMH</strong>: Open Archives Initiative-Protocol for Metadata Harvesting (OAI-PMH) is a harvesting protocol for sharing data between online services such as repositories. Additional information about OAI-PMH can be found at   <a href="http://www.openarchives.org/pmh">http://www.openarchives.org/pmh</a>. </p>
                    <p><strong><a name="open-access"></a>Open Access</strong>: providing unrestricted online access to scholarly works.</p>
                    <p><strong><a name="oais"></a>Open Archival  Information System (OAIS): </strong>An international standard (<a href="http://www.iso.org/iso/home/store/catalogue_tc/catalogue_detail.htm?csnumber=57284">ISO  14721:2012</a>) that describes the components and processes necessary for a digital  archive.  </p>
                    <p><strong><a name="oaister"></a>OAIster</strong>: Using <a href="#oai-pmh">OAI-PMH</a>,  OAIster harvests descriptive data from repositories, digital libraries, and  online journals to create a searchable catalog of digital resources.   Additional  information about OAIster can be found at <a href="http://oaister.worldcat.org">http://oaister.worldcat.org</a>. </p>
		    <p><strong><a name="persistent-url"></a>Persistent URL:</strong> A permanent web  address that will not change.  The  Repository is using the Handle System® for persistent URLs.  Additional information about the Handle  System® can be found at <a href="http://www.handle.net">http://www.handle.net</a>. </p>
        <p><strong><a name="post-print"></a>Post-print:</strong> The version of an article after edits from peer review but before final publisher copyediting and conversion to PDF.  Sometimes referred to as the final accepted version.</p>
        <p><strong><a name="pre-print"></a>Pre-print:</strong> The version of an article before it undergoes peer review.  Sometimes referred to as the submitted version.</p>
                    <p><strong><a name="file-formats"></a>Recommended File Formats</strong>: These are file  formats that the Repository considers stable and therefore compatible with  long-term preservation efforts.  In  general, these formats have the following characteristics: openly documented; supported by a range of software platforms; widely adopted;  lossless data compression or no compression; non-proprietary; and does not  contain embedded files or embedded programs.   Please see <a href="/recommended_file_formats">Recommended File Formats</a> for a list of the formats the  Repository prefers.</p>
		    <p><strong><a name="repository-curator"></a>Repository Curator</strong>: The Repository  Curator is responsible for managing all aspects of a the Repository, including  coordinating the various <a href="#communities-collection">communities and collections</a> within the  Repository.  The Repository Curator, Colleen Lyon, is a staff member at the UT Libraries and can be contacted at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>. </p>
		    <p>The  <a name="repository-curator"></a>Repository Curator is one of three management roles within the Repository:<br />
		        <blockquote>Repository  Curator – Overall management of the Repository<br />
		            <a href="#community-administrator">Community  Administrator</a> – Management of a community within the Repository<br />
		            <a href="#collection-curator">Collection  Curator</a> – Management of a collection within a community</blockquote></p>
                    <p><strong><a name="storage-refreshment"></a>Storage Media Refreshment</strong>: Copying data from  one long-term storage medium to another of the same type, with no change  whatsoever in the bitstream (the binary form of the data).</p>

    </xsl:template>
</xsl:stylesheet>
