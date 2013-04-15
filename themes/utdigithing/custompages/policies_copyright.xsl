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

	 <xsl:template name="policies_copyrightURI">
			<xsl:text>Copyright and Licensing Repository Policy</xsl:text>
	 </xsl:template>
    
    <xsl:template name="policies_copyrightBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Copyright and Licensing Repository Policy</li>
    </xsl:template>
	
    <xsl:template name="policies_copyrightBody">
    	
		<div class="headwrapper">
			<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1>
			<div class="ds-div-head">Copyright and Licensing Repository Policy</div>
			</h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

                    <ol start="1" type="1">
                        <li>Faculty, researchers, and students  own copyright in their scholarly or educational work at UT, as stated in the <a href="http://www.utsystem.edu/bor/rules.htm">UT System Regents’ Rules and Regulations, General Rules for Intellectual  Property, Series 90101, Section 4</a>, <a href="http://www.utsystem.edu/bor/rules.htm">http://www.utsystem.edu/bor/rules.htm</a>.  Therefore faculty, researchers, and       students will retain their copyright while granting <a href="/glossary#non-excuslive">non-exclusive rights</a>       to UT Austin and the <a href="http://www.tdl.org">Texas Digital Library (TDL)</a> when submitting their       work to University of Texas Digital Repository.  </li>
                    </ol>
                    <ol start="2" type="1">
                        <li>Copyright owners will grant <a href="/glossary#non-excuslive">non-exclusive rights</a> to UT Austin and TDL to copy, display, perform,  distribute, and publish their submitted work within copyright law or any applicable license agreement as part of a UT Austin or TDL repository  communication or distribution effort.  </li>
                    </ol>
                    <ol start="3" type="1">
                        <li>Copyright owners will grant UT Austin and TDL the <a href="/glossary#non-excuslive">non-exclusive</a> right to migrate their work to various  formats as needed in perpetuity for preservation and usability.  </li>
                    </ol>
                    <ol start="4" type="1">
                        <li>The UT Libraries will manage       these <a href="/glossary#non-excuslive">non-exclusive rights</a> granted to UT Austin and TDL.  </li>
                    </ol>
                    <ol start="5" type="1">
                        <li>When submitting a work to UT       Digital Repository, submitters will be asked to warrant:  </li>
                        <ul type="disc">
                            <li>They are either the        copyright owner of the work, or they have permission from the copyright        owner(s) to submit the work.</li>
                            <li>The work does not infringe        any copyright, patent, or trade secrets of any third party, and does not        contain any libelous matter, nor invade the privacy of any person or        third party.</li>
                            <li>The work has not been sold,        mortgaged, or otherwise disposed of, and is free from all exclusive claims,        EXCEPT for in the case of a thesis or dissertation with pending        patent(s).  If a thesis or        dissertation has a patent pending, the author has the option to request a  one year <a href="/glossary#embargo">embargo</a> on display and distribution rights through the UT        Digital Repository and TDL’s online repository.  </li>
                        </ul>
                    </ol>
                    <p>Some  works may not fit the warranties or options described above.  If so, the submitter should contact Lexie  Thompson-Young at <a href="mailto:utdr-copyright@utlists.utexas.edu">utdr-copyright@utlists.utexas.edu</a> for further licensing options.  </p>
                    <br clear="all" />
                    <p ><strong>Submission Copyright  Statement</strong></p>
                    <p>This  Copyright Statement will be presented to a submitter as a click-through license  during the submission process.  If a  submitter is prompted to choose an appropriate level of “access” for the work  being submitted, such as 1) all users can access, 2) all users can access after  a designated embargo period, or  3) only  users with an EID or password can access, then this Copyright Statement will be  presented after such an “access” choice.  </p>
                    <p align="center">Submission Copyright  Statement</p>
                    <p>I grant the  University of Texas at Austin (“Institution”), my academic department  (“Department”), and the Texas Digital Library (&quot;TDL&quot;) the non-exclusive  rights to copy, display, perform, distribute and publish the content I submit  to this repository (&quot;Work&quot;) and to make the Work available in any  format in perpetuity as part of an Institution, Department, or TDL repository  communication or distribution effort.  </p>
                    <p>I understand that  once the Work is submitted, a bibliographic citation to the Work will remain  visible in perpetuity, even if the Work is updated or removed.  </p>
                    <p>I understand that the  Work's copyright owner(s) will continue to own copyright outside these  non-exclusive granted rights.</p>
                    <p>I warrant that: <br />
                        (1) I am the  copyright owner of the Work, or<br />
                        (2) I am one of the  copyright owners and have permission from the other owners to submit the Work,  or<br />
                        (3) My Institution or  Department is the copyright owner and I have permission to submit the Work, or<br />
                        (4) Another party is  the copyright owner and I have permission to submit the Work.  </p>
                    <p>Based on this, I  further warrant to my knowledge:  <br />
                        (5) The Work does not  infringe any copyright, patent, or trade secrets of any third party, <br />
                        (6) The Work does not  contain any libelous matter, nor invade the privacy of any person or third  party, and<br />
                        (7) That no right in  the Work has been sold, mortgaged, or otherwise disposed of, and is free from  all exclusive claims.  </p>
                    <p>I agree to hold  Institution, Department, TDL and their agents harmless for any liability  arising from any breach of the above warranties or any claim of intellectual  property infringement arising from the exercise of these non-exclusive granted  rights.  </p>
                    <p>Click &quot;I  Agree&quot;</p>

    </xsl:template>
 
</xsl:stylesheet>
