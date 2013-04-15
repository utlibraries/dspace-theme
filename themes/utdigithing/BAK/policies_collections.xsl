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

	 <xsl:template name="policies_collectionsURI">
			<xsl:text>Collection Policy</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policies_collectionsBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Collection Policy</li>
    </xsl:template>
	
    <xsl:template name="policies_collectionsBody">
    	
		<div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
		<h1>
		<div class="ds-div-head">Collections Policy</div>
		</h1>
		</div>
		<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
                    
                    <ol start="1" type="1">
                        <li><p>The University of Texas Digital Repository’s purpose is to collect, record, provide access to, and  archive the digital works of the University of Texas at Austin.  UT Digital Repository will include  research and scholarship, as well as works that reflect the intellectual  and service environment of the campus.</p>
                            
                            <p>UT Digital Repository was established to  provide open access to the products of the University's research and scholarship  endeavors, to foster the preservation of these digital works for future  generations, to promote increasingly rapid advances in scholarly communication,  and to help deepen community understanding of the value of higher education.  </p>
                            <p>The  author/copyright owner decides if their work in the UT Digital Repository is published  or made available on other online platforms.   Works are not exclusive to the UT Digital Repository.  See the <a href="/policies_copyright">Copyright and Licensing Policy</a> for more information.  </p>
                        </li>
                    </ol>
                    <ol start="2" type="1">
                        <li><p>UT Digital Repository uses <a href="/glossary#dspace">DSpace</a> software which supports a simple hierarchy structure,  <a href="/glossary#community-collection">Community/Collection</a>.  Communities hold Collections, and Collections hold digital works. </p>
                            <p>There  are also UT Digital Repository staff roles associated with the  Community/Collection hierarchy.  </p>
                            <br />
                            <p>UT Digital Repository – <a href="/glossary#repository-curator">Repository  Curator</a></p>
                            <p style="padding-left:3em;">Community – <a href="/glossary#community-administrator">Community  Administrator</a></p>
                            <p style="padding-left:6em;">Collection –  <a href="/glossary#collection-curator">Collection Curator</a></p>
                        </li>
                    </ol>
                    <ol start="3" type="1">
                        <li>Each Collection of works will  meet these requirements:  <br />

                    <ul>
                        <li>Be  part of a <a href="/glossary#community-collection">Community</a>.    </li>
                        <li>Have  a <a href="/glossary#collection-curator">Collection Curator</a> and supply contact information to the UT Digital <a href="/glossary#repository-curator">Repository Curator</a>.  </li>
                        <li>Accept  digitally formatted works only.</li>
                        <li>Determine  the Collection’s required and optional metadata fields; see the <a href="/policies_metadata">Metadata  Policy</a> for more information.  </li>
                        <li>Determine  the Collection’s submission workflow.  </li>
                        <li>Create  additional Collection policies as needed that do not conflict with UT Digital  Repository’s umbrella policies:  <a href="/policies_services">UT  Digital Repository Services</a>, <a href="/policies_services">Submission &amp; Withdrawal</a>, <a href="/policies_collections">Collections</a>, <a href="/policies_metadata">Metadata</a>, <a href="/policies_copyright">Copyright</a>, and <a href="/policies_preservation">Preservation</a>.  </li>
                        <li>Fill  out and maintain a Collection Description Document.  </li>
                        <li>Conduct  annual review with UT Digital <a href="/glossary#repository-curator">Repository Curator</a> to assess the Collection’s  usability and discoverability.  </li>
                    </ul>
                        </li>
                    </ol>
                    <br clear="all" />
                    <ol start="4" type="1">
                        <li><p>By default, a Collection       will not impose access restrictions on their works.  UT Digital Repository was established to       provide open access to the digital works of the University.  In exceptional cases where access       restrictions are required, individual works or an entire collection of       works may be affected.  Access       restriction options must be defined when a Collection is created.  </p>
                            <p>The  types of access to works supported by UT Digital Repository are:  </p>
                            <ul>
                                <li>All  users can access the work (default)</li>
                                <li>All  users can access the work after a designated <a href="/glossary#embargo">embargo</a> period (option for specific  UT Electronic Theses and Dissertations with intellectual property issues)</li>
                                <li>UT  EID only access to the work</li>
                                <li>Password  only access to the work</li>
                            </ul>
                            <p>Should  it become necessary to amend access restrictions for a work already in UT  Digital Repository, the Collection and UT Digital Repository Curators must be  contacted.  </p>
                            <p>Even  if the work is restricted, all users can view the information about the work  (the metadata).  </p>
                        </li>
                    </ol>
                    <ol start="5" type="1">
                        <li>Each Collection is part of a       Community, and the <a href="/glossary#collection-curator">Collection Curator</a> and <a href="/glossary#collection-administrator">Community Administrator</a> will       determine what constitutes appropriate works for submission.  For general information on a specific       Collection, please see below.  </li>
                    </ol>
                    <ol start="6" type="1">
                        <li> Established Collections</li>
                    </ol>
                    <ul>
                        <li><p><strong><a href="/handle/2152/11">UT Electronic Theses and  Dissertations </a></strong></p>
                            <table>
                                <tr><td width="100px">Community:</td><td>UT  Electronic Theses and Dissertations</td></tr>
                                <tr><td width="100px">Content: </td><td>Electronic  theses and dissertations (ETD)</td></tr>
                                <tr><td width="100px">Submission: </td><td>All  master’s theses and doctoral dissertations awarded after 2009 are automatically  submitted into the collection after approval by the Office of Graduate Studies  and published by the UT Libraries. </td></tr>
                                <tr><td width="100px">Access: </td><td> The  majority of works can be accessed by all users.   Some works are restricted to users with valid UT EIDs. </td></tr>
                            </table>   
                        </li>
                        
                        <li><p><strong><a href="/handle/2152/12">UT Faculty/Researcher Works </a></strong></p>
                            <table>
                                <tr><td width="100px">Community:</td><td>UT  Faculty/Researcher Works</td></tr>
                                <tr><td width="100px">Content: </td><td>Peer-reviewed  pre-print articles, published articles, technical reports, white papers,  presentations, collections of digitized data, field notes, etc…</td></tr>
                                <tr><td width="100px">Submission: </td><td>  UT  faculty or staff may submit work into the collection after the UT Digital Repository Curator or Collection Curator gives them a  usernameand password.   </td></tr>
                                <tr><td width="100px">Access: </td><td> Works  can be accessed by all users.  </td></tr>
                            </table> 
                        </li>

                        <li><p><strong><a href="/handle/2152/7">Moot Corp Collection</a> </strong></p>
                            <table>
                                <tr><td width="100px">Community:</td><td>UT  Student  Works sponsored by UT Faculty</td></tr>
                                <tr><td width="100px">Content: </td><td>Password  restricted business cases for Moot Corp Competition</td></tr>
                                <tr><td width="100px">Submission: </td><td>Students  may be required or invited to submit work specifically sponsored by a UT  Faculty member, after the UT Digital <a href="/glossary#repository-curator">Repository Curator</a> gives them a username  and password. </td></tr>
                                <tr><td width="100px">Access: </td><td> Works  can be accessed by authorized users with a password. </td></tr>
                            </table> 
                        </li>

                        <li><p><strong><a href="/handle/2152/9">Les Houches </a></strong></p>
                            <table>
                                <tr><td width="100px">Community:</td><td>UT  Libraries Collections</td></tr>
                                <tr><td width="100px">Content: </td><td>Theoretical physics lecture  notes from the 1952-1957 summer school in Les Houches, France. </td></tr>
                                <tr><td width="100px">Submission: </td><td> UT  Libraries staff submit work into this collection, after the UT Digital  <a href="/glossary#repository-curator">Repository Curator</a> gives them a username and password.  </td></tr>
                                <tr><td width="100px">Access: </td><td> Works  can be accessed by all users. </td></tr>
                            </table> 
                        </li>

                        <li><p><strong><a href="/handle/2152/6">Larval Fish Proceedings</a></strong></p>
                            <table>
                                <tr><td width="100px">Community:</td><td>Conference Proceedings</td></tr>
                                <tr><td width="100px">Content: </td><td>Published papers from the annual Larval Fish Conferences of the Early Life History Section, American Fisheries Society.</td></tr>
                                <tr><td width="100px">Submission: </td><td> UT  faculty or staff may submit work into the collection after the UT Digital <a href="/glossary#repository-curator">Repository Curator</a> or <a href="/glossary#collection-curator">Collection Curator</a> gives them a  usernameand password.   </td></tr>
                                <tr><td width="100px">Access: </td><td> Works  can be accessed by all users. </td></tr>
                            </table> 
                        </li>
                    </ul>

    </xsl:template>
 
</xsl:stylesheet>
