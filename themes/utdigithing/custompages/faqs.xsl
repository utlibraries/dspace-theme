<?xml version="1.0" encoding="UTF-8"?>

<!--
    Author: Steven Williams

-->

<xsl:stylesheet xmlns:i18n="helpmessages.xml"
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

	 <xsl:template name="faqsURI">
		<xsl:text>FAQs</xsl:text>
	 </xsl:template>

    <xsl:template name="faqsBreadcrumb">
		  <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">FAQs</li>
	 </xsl:template>

    <xsl:template name="faqsBody">

	<div class="headwrapper">
	<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
	<h1>
	<div class="ds-div-head">FAQs</div>
	</h1>
	</div>
	<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

            <p><strong><a href="#general_questions">General  Questions</a></strong><br />
<blockquote>
    <u><a href="#whatisrepository">What is the UT Digital Repository?</a></u><br />
    <u><a href="#specialsoftware">Do I need special software to submit or to search and download works?</a></u><br />
    <u><a href="#whocansearch">Who can search, browse,  and download from the UT Digital  Repository?</a></u><br />
    <u><a href="#whocansubmit">Who can submit works to the UT Digital Repository?</a></u><br />
    <u><a href="#canisubmit">Can I submit data or data sets to the UT Digital Repository?</a></u><br />
    <u><a href="#notaffiliatedsubmit">Can faculty, researchers, or students who are not affiliated with UT  submit works to the UT Digital Repository?</a></u><br />
    <u><a href="#whysubmit">Why should I submit works to the UT Digital Repository?</a></u><br />
    <u><a href="#howdiff">How is the UT Digital Repository different from posting research on my own web site?</a></u><br />
    <u><a href="#canilink">Can I still link to my work from my own web site?</a></u><br />
    <u><a href="#diff_from_webspace">How does the UT Digital Repository differ from WebSpace?</a></u><br />
    <u><a href="#relationship">What is the relationship between  the UT Digital Repository and the Texas Digital Library?</a></u><br />
    <u><a href="#community_collections">What are UT Digital Repository communities and collections?</a></u><br />
    <u><a href="#systemerror">I'm trying to access the UT Digital Repository and am getting system  errors or no response. Who should I report this to? </a></u><br />
    <u><a href="#embeddedvideo">Why does an embedded video not play, or not play until it is fully loaded?</a></u>
</blockquote></p>
<p><strong><a href="#getting_started">Getting  Started</a></strong><br />
<blockquote>
    <u><a href="#gainauthorization">How do I gain authorization to submit to the UT Digital Repository?</a></u><br />
    <u><a href="#gainauthorization_submit">How do I submit my work to the UT Digital Repository?</a></u><br />
    <u><a href="#descriptive_assign">What descriptive information do I assign to my work during submission?</a> </u><br />
    <u><a href="#descriptive_auto">Does the UT Digital Repository automatically assign any descriptive  information or tags?</a></u><br />
    <u><a href="#depart_setup">How does my department or research unit set up its own collection?</a></u><br />
    <u><a href="#depart_conference">Can my department archive conference proceedings in the UT Digital Repository?</a></u>
</blockquote></p>
<p><strong><a href="#submission_questions">Submission  Questions</a></strong><br />
<blockquote>
    <u><a href="#kind_of_materials">What kinds of materials/content can I put into the UT Digital Repository?</a></u><br />
    <u><a href="#upload_video_audio">Can I upload video and audio files into the UT Digital Repository?</a></u><br />
    <u><a href="#file_formats">What file formats can I submit to the UT Digital Repository?</a></u><br />
    <u><a href="#decide_file_format">How does the UT Digital Repository decide the recommended file formats  for submission?</a></u><br />
    <u><a href="#file_size_limit">Is there a limit on file size?</a> </u><br />
    <u><a href="#limit_number_submit">Is there a limit on the number of files I may  submit?</a></u><br />
    <u><a href="#publish_electronic_journal">Can I use the UT Digital Repository to  publish an electronic journal?</a></u>
</blockquote></p>
<p><strong><a href="#copyright_intellectual">Copyright  and Intellectual Property Questions</a></strong><br />
<blockquote><u><a href="#whatrights">What rights do I grant The University of Texas at Austin when I submit my  work in the UT Digital Repository?</a> </u><br />
    <u><a href="#rights_retain">What rights do I retain to my work when submitting to the UT Digital  Repository?</a> </u><br />
    <u><a href="#nolonger_hold_copyright">If I no longer hold the copyright to an article or other publication, can  I still submit it to the UT Digital Repository?</a></u><br />
    <u><a href="#place_materials">Can I place material someplace else if I've already submitted it to the  UT Digital Repository?</a></u><br />
    <u><a href="#someoneelse_work">I just found some interesting work by someone else in the UT Digital  Repository and am about to download it—what can I do with that work once I have  it?</a></u>
    <u><a href="#foundmywork">I've found my work in the UT Digital Repository and I didn't add it.  Why is it here?</a></u><br />
</blockquote></p>
<p><strong><a href="#access_privacy">Access  and Privacy Questions</a> </strong><br />
<blockquote>
    <u><a href="#restrict_access">Can I restrict access to work I submit to the UT Digital Repository? If  so, to whom, and for how long?</a> </u><br />
    <u><a href="#change_item">Can I make changes to an item once I've submitted it to the UT Digital  Repository?</a></u><br />
    <u><a href="#withdrawn">Can items be withdrawn from the UT Digital Repository?</a></u><br />
    <u><a href="#privacy_policy">What privacy policies are in place for the UT Digital Repository?</a></u>
</blockquote></p>
<p><strong><a href="#theses">Electronic Theses and Dissertations Questions</a> </strong><br />
<blockquote>
    <u><a href="#theses_removal">I've found my Thesis/Dissertation in the Repository and I don't think it should be there. What do I do?</a> </u><br />
    <u><a href="#theses_replace">I've found my Thesis/Dissertation in the Repository, and I'd like to amend it.
    Can I submit additional material or replace it altogether with a new version?</a></u><br />
</blockquote></p>
<br /><br /><p><strong><u><a name="general_questions" id="general_questions"></a>General  Questions</u></strong></p>
<ol start="1" type="1">
  <li><strong><a name="whatisrepository" id="whatisrepository"></a>What is the UT Digital  Repository? </strong></li>
</ol>
 <p><a href="/">The University of Texas Digital Repository</a> holds digital works and provides related services that together constitute a campus <a href="/glossary#institutional_repos">institutional repository</a>. The Repository was established to provide open, online access to the products of the University’s research and scholarship, to preserve these works for future generations, to promote new models of scholarly communication, and to help deepen community understanding of the value of higher education.  Digital works include research and scholarship, as well as works  that reflect the intellectual and service environment of the campus.</p>
<ol start="2" type="1">
  <li><strong><a name="specialsoftware" id="specialsoftware"></a>Do I need special software to submit or to search and download works? </strong></li>
</ol>
<p>No, you access the Repository at <a href="http://repositories.lib.utexas.edu">http://repositories.lib.utexas.edu</a> with any current Web browser.</p>
<ol start="3" type="1">
  <li><strong> <a name="whocansearch" id="whocansearch"></a>Who </strong><strong>can search, browse, and download from the UT       Digital Repository?</strong></li>
</ol>
                    <p>The Repository is designed to provide your work the widest  possible exposure, so it is open to the world for searching. You may, however,  choose to submit your work but prevent it from being seen in full for a limited  time.  Please see question #34:  <u>“<em><a href="#restrict_access">Can I restrict access to the work I submit to the UT Digital Repository?</a></em>”</u> for more information on restricting  access to your work. </p>
<ol start="4" type="1">
  <li><strong><a name="whocansubmit" id="whocansubmit"></a>Who can submit works to       the UT Digital Repository? </strong></li>
</ol>
                    <p>UT faculty, staff, and students (including student groups)  may submit work to the Repository.   Student work must be sponsored by a UT faculty member, and the name of  the sponsoring faculty will appear in the descriptive information associated  with the work. All faculty are automatically authorized to submit to the <a href="http://repositories.lib.utexas.edu/handle/2152/12">UT Faculty/Researcher Works collection</a> when they login with their EID and password. Faculty wanting to submit works to other UTDR collections should contact the Repository Curator at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>. Staff and students must request authorization from the <a href="/glossary#repository-curator">Repository Curator</a> before submitting work to the Repository. To request authorization, please contact Colleen Lyon, Repository Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-collections@utlists.utexas.edu</a></p>
<ol start="5" type="1">
  <li><strong><a name="canisubmit" id="canisubmit"></a>Can I submit data or data sets to the UT Digital Repository?</strong></li>
</ol>
<p>Yes, the UT Digital Repository is appropriate for data that is: in its final format, can be openly accessible to the public, needs to be stored long-term, and does not contain files larger than 1 GB. An additional benefit of submitting your work to the Repository is you can also submit papers and publications associated with your data. For more information about using the UT Digital Repository for your data, please contact Colleen Lyon at <a href="datamanagement@lib.utexas.edu">datamanagement@lib.utexas.edu</a>. In addition to the Repository, the University of Texas has a host of data management services available for researchers. For more information about Data Management at UT visit <a href="http://www.lib.utexas.edu/datamanagement">http://www.lib.utexas.edu/datamanagement</a>.</p>
<ol start="6" type="1">
  <li><strong><a name="notaffiliatedsubmit" id="notaffiliatedsubmit"></a>Can faculty, researchers,       or students who are not affiliated with UT submit works to the UT Digital       Repository? </strong></li>
</ol>
<p>In general, no. However, if the faculty, researcher, or  student is affiliated with a program at the University of Texas, publishes as  part of a conference or in a journal or other publication sponsored through the  University of Texas, or co-authors a publication with a University of Texas  researcher, the work may be submitted to the Repository. </p>
<ol start="7" type="1">
  <li><strong><a name="whysubmit" id="whysubmit"></a>Why should I submit works to the UT Digital Repository? </strong></li>
</ol>
<ul>
  <li>Dissemination:  The Repository provides high visibility and increased access to your research  by furnishing descriptive information about your submitted works to search engines (e.g. Google, Bing, Yahoo), <a href="http://scholar.google.com/" target="_top">Google Scholar</a>, <a href="/glossary#oaister">OAIster</a>, and  other services.</li>
  <li>Increased  impact and citation of your research: Works in the Repository are openly  available on the web. See a <a href="http://opcit.eprints.org/oacitation-biblio.html">bibliography</a> of  studies on the increased impact and higher citations of open access research  and scholarship. </li>
  <li>Reliability:  The Repository provides a persistent web address for your work. </li>
    <li>Long-term  access: The Repository commits  to responsible and sustainable management of submitted works. View the <a href="/policies_preservation">Preservation  Policy</a> for details. </li>
  <li>Control:  You or your assignee retain copyright in works you submit to the Repository.  Many publishers will allow you to submit previously published works to  <a href="/glossary#institutonal_repos"></a>institutional repositories. </li>
  <li>Usage statistics: All items in the Repository have an openly accessible link to view usage statistics. You will be able to see how many times your work has been viewed and downloaded and you can see from where the activity originated.</li>
</ul>
<ol start="8" type="1">
  <li><a name="howdiff" id="howdiff"></a><strong>How is the UT Digital       Repository different from posting research on my own web site? </strong></li>
</ol>
<p>The Repository provides benefits that may not be available  on your own web site:  </p>
<ul type="disc">
  <li>full-text indexing of text files; </li>
  <li>enhanced discoverability through <a href="http://scholar.google.com" target="_top">Google Scholar</a>, <a href="/glossary#oaister">OAIster</a>, and various repositories       of scholarly material;</li>
  <li>a permanent and persistent web address for       your work so that it may be reliably cited over time;</li>
  <li>managed archival services for your files.  </li>
</ul>
<ol start="9" type="1">
  <li><a name="canilink" id="canilink"></a><strong>Can I still link to my work       from my own web site? </strong></li>
</ol>
<p>Yes. One benefit of submitting to the Repository is that  your work is assigned a permanent and persistent web address. </p>
<ol start="10" type="1">
  <li><strong><a name="diff_from_webspace" id="diff_from_webspace"></a>How does the UT Digital  Repository differ from WebSpace</strong>?</li>
</ol>
<p>Both online services  allow UT faculty, staff, and students to store and access works, but  there are differences:</p>
<table border="0"  cellspacing="0" cellpadding="0" width="434">
  <tr>
      <td width="267" valign="top"><p><img src="/themes/utdigithing/images/space.png" alt="" /></p></td>
    <td width="80" valign="top"><p><strong>The Repository</strong></p></td>
      <td width="87" valign="top"><p><strong><a href="http://webspace.utexas.edu/">WebSpace</a></strong></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Access   to works from anywhere in the world</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Long-term storage of works</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Service for collaboration on works in progress</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Works discoverable by Google, search engines</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Can submit works in many formats</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Persistent web address for works</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p><a href="/glossary#open-access">Open access to works</a></p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Service for dissemination of works</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
  </tr>
  <tr>
    <td width="267" valign="top"><p>Must be current UT faculty, staff, or student to access    works</p></td>
    <td width="80" valign="top"><p><img src="/themes/utdigithing/images/not-check.png" alt="not checked" /></p></td>
    <td width="87" valign="top"><p><img src="/themes/utdigithing/images/check.png" alt="checked" /></p></td>
  </tr>
</table>

<ol start="11" type="1">
  <li><strong><a name="relationship" id="relationship"></a>What is the relationship between the UT Digital Repository and the       Texas Digital Library?</strong></li>
</ol>
<p>UT Austin is a founding member of the Texas Digital Library  (TDL), a group of higher education libraries in Texas working together on  infrastructure to support digital repositories. For more information about TDL,  its members, or its services, please visit <a href="http://www.tdl.org">http://www.tdl.org</a> . </p>
<ol start="12" type="1">
  <li><strong><a name="community_collections" id="community_collections"></a>What are UT Digital       Repository communities and collections?</strong></li>
</ol>
<p>The Repository organizes content around established collections to simplify the process of  submitting your work and to provide you with the most flexibility for finding  works of interest to you. Communities hold Collections, and Collections  hold digital works.  The Repository  offers established Collections for faculty/staff/and student submissions.  In addition, we will set up a community for  those departments or research units on campus wishing to establish their own collections.</p>
<ol start="13" type="1">
    <li><strong><a name="systemerror" id="systemerror"></a>I'm trying to access       the UT Digital Repository and am getting system errors or no response. Who       should I report this to?</strong></li>
</ol>
<p>If you are trying to access the UT Digital Repository and it  is not responding, please contact Colleen Lyon, Repository Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> to report the problem.</p>
<ol start="14" type="1">
    <li><strong><a name="embeddedvideo" id="embeddedvideo"></a>Why does an embedded video not play, or not play until it is fully loaded?</strong></li>
</ol>
<p>In order for video to play progressively the video must be created as a hinted format. If a video is not created in this format, then the whole video must download first before it will play.  Sometimes your browser may timeout while the video is downloading.  This situation tends to happen with Flash videos with an .flv extension.  If it does, please try downloading the video again.  If this does not work, the next step is to request the file be sent to you outside of a web browser.  </p>
<p>If you are experiencing this or another issue with embedded video in the UT Digital Repository please contact Colleen Lyon, Repository Curator, at  <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> to report the problem.  We will help you as we can, or put you in touch with the person who submitted the video.</p>
<br /><br /><p><strong><u><a name="getting_started" id="getting_started"></a>Getting Started</u></strong></p>

<ol start="15" type="1">
  <li><strong><a name="gainauthorization" id="gainauthorization"></a>How do I gain authorization to submit to the UT Digital Repository?  </strong></li>
</ol>

<p>
<strong>Faculty</strong><br /><br />
If you are UT faculty, you are automatically authorized to submit to the <a href="http://repositories.lib.utexas.edu/handle/2152/12">UT Faculty/Researcher Works collection</a>. Simply <a href="https://repositories.lib.utexas.edu/ldap-login">login</a> to the UTDR with your EID and password, then click "submissions" on the right-hand navigation bar under My Account. From the Submissions page, click the link "start a new submission". If you are interested in submitting to a different collection or in setting up your own collection, please contact Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.
</p>
<p>
<strong>Department</strong><br /><br />
Departments or research centers on campus wishing to establish their own collections may do so by contacting Colleen Lyon at a <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> to begin the process.
</p>
<p>
<strong>Staff</strong><br /><br />
If you are UT staff, the first step is to identify the collection you would like to submit to within the <a href="http://repositories.lib.utexas.edu/community-list">Repository</a>.   Next, email Colleen Lyon, Repository Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>  to request authorization to submit your work (please include your full name and the name of the collection for which you are requesting authorization).
</p>

<p>
<strong>Students</strong><br /><br />
Students wishing to submit must first obtain a faculty sponsor. Once faculty sponsorship has been obtained, contact the Repository Curator at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> for authorization.
</p>

<ol start="16" type="1">
  <li><strong><a name="gainauthorization_submit" id="gainauthorization_submit"></a>How do I submit my work  to the UT Digital Repository?</strong></li>
</ol>
<p>You should find the process of submitting to the UT Digital  Repository quick and easy:  </p>
<ul type="disc">
  <li>obtain authorization (see question #15:  <em><u>"<a href="#gainauthorization">How  do I gain authorization to submit to the UT Digital Repository?</a>"</u> </em>for  more information);</li>
  <li><a href="/login">login</a> to the UT Digital repository;</li>
  <li>select a collection;</li>
  <li>grant a distribution license;</li>
  <li>upload your work ;</li>
  <li>describe your work ;</li>
  <li>review your submission;</li>
  <li>click Submit.</li>
</ul>
<p>More detailed information about the submission process can  be found in our <a href="/help">Help</a> section, and you may see a short video showing the  <a href="/help#submit">submission process </a>.</p>


<ol start="17" type="1">
  <li><strong><a name="descriptive_assign" id="descriptive_assign"></a>What descriptive information do I assign to my work during submission?</strong></li>
</ol>
<p>During submission the following information about your work  is required:</p>
<ul>
  <li>Author(s) or Creator(s)</li>
  <li>Title</li>
  <li>Date published or created</li>
  <li>Department</li>
  <li>Subject keywords/tag (at least one)</li>
</ul>
<p>Additional information about your work is optional and  encouraged:</p>
<ul>
  <li>Publisher</li>
  <li>Citation</li>
  <li>Series/Report number</li>
  <li>Identifiers (ISBN, ISSN, etc.)</li>
  <li>Type of work (article, preprint, technical  paper, etc.)</li>
  <li>Language</li>
  <li>Abstract</li>
  <li>Sponsors</li>
  <li>Description</li>
</ul>

<ol start="18" type="1">
  <li><strong><a name="descriptive_auto" id="descriptive_auto"></a>Does the UT Digital Repository automatically assign any descriptive information or tags?</strong></li>
</ol>
<p>At the time of submission the Repository automatically  assigns:</p>
<ul>
  <li>A persistent web address for you and others to  cite; </li>
  <li>The date of submission;</li>
  <li>The name of the submitter (as this may be  different from the author/creator of the work);</li>
  <li>File format (based on its extension).</li>
</ul>
<ol start="19" type="1">
  <li><strong><a name="depart_setup" id="depart_setup"></a>How does my department or research unit set up its own collection? </strong></li>
</ol>
<p>If your department or research unit wants to establish a collection, we are happy to work with you to set up access,  membership, and other parameters. Each collection will have one or more people who will help define specific procedures and guidelines. The  <a href="/glossary#collection-curator">Collection Curator</a> should be a faculty or staff member from the department or  research unit. For more information about collection responsibilities, see the <a href="policies_collections">Collections  Policy</a>. To get started, please contact Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.</p>


<ol start="20" type="1">
  <li><strong><a name="depart_conference" id="depart_conference"></a>Can my department archive conference proceedings in the UT Digital Repository? </strong></li>
</ol>
<p>Yes. If the conference is organized or sponsored by UT Faculty or a UT Department, we can set up a collection or a series of collections in the <a href="http://repositories.lib.utexas.edu/handle/2152/1">Conference Proceedings</a> community in the UTDR. To get started, please contact Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.</p>


<br /><br />
<p><strong><u><a name="submission_questions" id="submission_questions"></a>Submission Questions</u></strong></p>
<ol start="21" type="1">
  <li><strong><a name="kind_of_materials" id="kind_of_materials"></a>What kinds of materials/content can I put into the UT Digital Repository? </strong></li>
</ol>
                    <p>The Repository accepts research and scholarship, as well as  works that reflect the intellectual and service environment of the campus.  Specifically, all kinds of scholarly research materials and content including  <a href="/glossary#pre-print">pre-prints</a>, <a href="/glossary#post-print">post-prints</a>, previously published material (if allowed by the  publisher), working papers, technical reports, presentations, data sets, as  well as other scholarship not usually submitted for peer-reviewed publications  may be submitted to an appropriate collection in the Repository. The work  submitted must be ready for distribution (see the <a href="/policies_submission">Submission and Withdrawal  Policy</a> for more information on submission guidelines). </p>
<ol start="22" type="1">
  <li><strong><a name="upload_video_audio" id="upload_video_audio"></a>Can I upload video and audio files into the UT Digital Repository? </strong></li>
</ol>
<p>The Repository will accept audio and video files - we have no format restrictions. Certain <a href="http://repositories.lib.utexas.edu/recommended_file_formats">file formats</a> will work with our media player and those that don't will be available for download only by users. Depending  on the size of your files and the speed of your internet connection, you may  experience difficulties or delays when uploading audio and video files for  submission.  Submission of any single  file larger than 512 MB may require the assistance of the Repository  Curator.  Please contact Colleen Lyon,  <a href="/glossary#repository-curator">Repository Curator</a>, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> if you plan to submit files larger than 512 MB.  </p>
<ol start="23" type="1">
  <li><a name="file_formats" id="file_formats"></a><strong>What file formats can I       submit to the UT Digital Repository? </strong></li>
</ol>
<p>Any digital format will be accepted; however, we encourage  you to submit in a file format recommended for submission (please see <a href="/recommended_file_formats">Recommended  File Formats</a> for a list of preferred formats).</p>
<ol start="24" type="1">
  <li><strong><a name="decide_file_format" id="decide_file_format"></a>How does the UT Digital       Repository decide the recommended file formats for submission? </strong></li>
</ol>
<p>The Repository recommends file formats based on the  following characteristics:</p>
<ul>
  <li>openly documented; </li>
  <li>supported by a range of software platforms; </li>
  <li>widely adopted; </li>
  <li>no compression (or lossless data compression); </li>
  <li>does not contain embedded files or embedded  programs/script; </li>
  <li>not a proprietary format. </li>
</ul>

<ol start="25" type="1">
  <li><strong><a name="file_size_limit" id="file_size_limit"></a>Is there a limit on       file size?</strong></li>
</ol>
<p>Submission of any single file larger than 512 MB may require  the assistance of the <a href="/glossary#repository-curator">Repository Curator</a>.   Please contact Colleen Lyon, Repository Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> if you plan to submit files larger than 512 MB.  </p>
<ol start="26" type="1">
  <li><strong><a name="limit_number_submit" id="limit_number_submit"></a>Is there a limit on the number of files I may submit?</strong></li>
</ol>
<p>There is no limit on the number of files you may  submit.  Should you have more than 500  files for submission, please contact Colleen Lyon, Repository Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> to request a batch load. </p>
<ol start="27" type="1">
  <li><a name="publish_electronic_journal" id="publish_electronic_journal"></a><strong>Can I use the UT Digital Repository       to publish an electronic journal?</strong></li>
</ol>
<p>You may use the  Repository to archive an electronic journal and make it available online; however,  the Repository is not an electronic  journal publishing system and has no workflows for peer review. The <a href="http://journals.tdl.org/">Texas Digital Library</a> (TDL) provides  journal publishing services with a peer review workflow for researchers who  want to start new journals or migrate an existing peer-reviewed journal to a  new online system.  Please visit <a href="http://journals.tdl.org/">http://journals.tdl.org/</a> for more  information on this service from TDL.</p>

<br /><br /><p><strong><u><a name="copyright_intellectual" id="copyright_intellectual"></a>Copyright and Intellectual Property  Questions</u></strong> </p>
<ol start="28" type="1">
  <li><a name="whatrights" id="whatrights"><strong>What       rights do I grant The University of Texas at Austin when I submit my work in the UT Digital Repository?</strong></a></li>
</ol>
                    <p>When you agree to our standard Distribution License you grant the Repository the <a href="/glossary#non-exclusive">non-exclusive</a>  right to:</p>
<ul>
  <li>retain, reproduce, and distribute the submitted  work;</li>
  <li>keep more than one copy of the work for purposes  of security, backup, preservation, and access, and;</li>
  <li>migrate the work to various formats as needed in  perpetuity for preservation and usability.  </li>
</ul>


<br /><br /><p>For additional information, please see the <a href="/policies_copyright">Copyright  and Licensing Repository Policy.</a><br />
</p>
<ol start="29" type="1">
  <li><strong><a name="rights_retain" id="rights_retain"></a>What rights do I retain to my work when submitting to the UT Digital Repository?</strong></li>
</ol>
                    <p>You, or your  copyright assignees, retain all your intellectual property rights<strong>.</strong> The limited rights you grant to the  Repository are <a href="/glossary#non-exclusive">non-exclusive</a>, and your ability to grant, assign, or retain any  and all rights you had before your submission does not change as a result of  your submission. For more information please see the <a href="/policies_copyright">Copyright  and Licensing Policy</a>. Please note that some publishers may ask that you  grant them exclusive rights to your work, thus limiting your ability to use the  work as you see fit and perhaps even limiting your ability to submit it to the  Repository.</p>
<ol start="30" type="1">
  <li><a name="nolonger_hold_copyright" id="nolonger_hold_copyright"></a><strong>If I no longer hold the copyright to an article or other publication, can I still submit it to the       UT Digital Repository? </strong></li>
</ol>
                    <p>Most publishers will allows some version of a previously published article to be made freely accessible online. The <a href="http://www.sherpa.ac.uk/romeo.php">Sherpa list of Publisher Copyright Policies and Self-Archiving</a> is the most definitive list of publisher policies at this current time. You may also ask your publisher whether you can submit your previously published work into the Repository. If you have questions about submitting previously published materials, please contact Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.</p>

                      <p>Initially when you publish  you may negotiate with the publisher to retain the right to submit your work to  the Repository by using the <a href="http://www.arl.org/sparc/author/Access-Reuse_addendum_HTML.shtml" target="_top">SPARC Author Addendum</a> or by directly modifying the  publisher’s license. SPARC offers other useful resources for authors as  well (see <a href="http://www.arl.org/sparc/author/" target="_top">http://www.arl.org/sparc/author/</a>). Please see the <a href="/policies_copyright">Copyright  and Licensing Policy </a> for more information.</p>
<ol start="31" type="1">
  <li><a name="place_materials" id="place_materials"></a><strong>Can I place material someplace else if I've already submitted it to the UT Digital Repository? </strong></li>
</ol>
                    <p>It depends. Some publishers will not accept material that  has been made available elsewhere - even if it has not been formally published.  This is slowly changing, but we do recommend checking with potential publishers  to ensure that you can safely submit a <a href="/glossary#pre-print">preprint</a>, for example, into the  Repository. The <a href="http://www.sherpa.ac.uk/romeo.php" target="_top">Sherpa list of Publisher Copyright Policies and Self-Archiving  </a>  is the most definitive list of publisher policies at this current time. </p>
<ol start="32" type="1">
  <li><strong><a name="someoneelse_work" id="someoneelse_work"></a>I just found some       interesting work by someone else in the UT Digital Repository and am about       to download it—what can I do with that work once I have it?</strong></li>
</ol>
<p>Unless otherwise noted in the Repository or the work itself,  you should treat the work like any other copyrighted material and may make <a href="http://www.copyright.gov/title17/92chap1.html#107" target="link">“Fair Use”</a> of it as allowed by law.</p>
<ol start="33" type="1">
  <li><strong><a name="foundmywork" id="foundmywork"></a>I found my work in the UT Digital Repository and I didn't add it.  Who uploaded it and why is it there?</strong></li>
</ol>
<p>The administrators for the UT Digital Repository occasionally come across UT-authored articles that are free of any copyright restrictions that would limit their distribution. These are usually open access publications that are published with a <a href="http://creativecommons.org/licenses/by/2.0/">CC-BY</a> (Creative Commons Attribution) license. Since the repository was established to provide open, online access to the scholarship of the university, we add those articles to the UT Digital Repository. If you have questions or concerns about your work, please contact Colleen Lyon at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.</p>
<br /><br /><p><strong><u><a name="access_privacy" id="access_privacy"></a>Access and Privacy Questions</u></strong> </p>
<ol start="34" type="1">
  <li><a name="restrict_access" id="restrict_access"><strong>Can       I restrict access to work I submit to the UT Digital Repository? If so, to whom, and for how long?</strong></a></li>
</ol>
<p>The UT Digital Repository was established to provide open  access to the digital works of the University; however, in exceptional cases  access restrictions may be warranted.   Concerns about access restrictions should be discussed with the  <a href="/glossary#repository-curator">Repository Curator</a> before submission of a work occurs.  Please contact Colleen Lyon, Repository  Curator, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a> with questions or concerns about restricting access to a work.  </p>
<p>Access to electronic dissertations are open in accordance with the policies of the Office of Graduate Studies; see FAQ #38.  </p>

<ol start="35" type="1">
  <li><strong><a name="change_item" id="change_item"></a>Can I make changes to an item once I've submitted it to the UT Digital Repository? </strong></li>
</ol>
<p>The Repository does not support revisions or editing of  works once they are in the Repository.   However, you may make separate submission of different versions of a  work (e.g., submitting both a preprint and a postprint). </p>
<p>Revisions to electronic theses or dissertations are not accepted; see FAQ #39.  </p>
<ol start="36" type="1">
  <li><strong><a name="withdrawn" id="withdrawn"></a>Can items be withdrawn from the UT Digital Repository?</strong></li>
</ol>
<p>Under special circumstances, items may be withdrawn from the  Repository. Please see the Withdrawal section of the <a href="/policies_submission">Submission  and Withdrawal Policy</a> for more information. </p>
<p>Access to electronic dissertations are open in accordance with the policies of the Office of Graduate Studies; see FAQ #38.  </p>
<ol start="37" type="1">
  <li><strong><a name="privacy_policy" id="privacy_policy"></a>What privacy policies       are in place for the UT Digital Repository? </strong></li>
</ol>
                    <p>The UT Digital Repository adheres to  <a href="http://www.utexas.edu/cio/policies/web-privacy/">UT’s Web Privacy Policy</a> and to the security standards for <a href="http://www.utexas.edu/cio/policies/">Category II data</a>.  </p>



<br /><br /><p><strong><u><a name="theses" id="theses"></a>Electronic Theses and Dissertations Questions</u></strong> </p>
<ol start="38" type="1">
  <li><a name="theses_removal" id="theses_removal"><strong>I’ve found my Thesis/Dissertation in the Repository and I don’t think it should be there. What do I do? </strong></a></li>
</ol>
<p>Graduating doctoral students at The University of Texas at Austin, beginning with the summer semester of 2001, are required to publish an electronic copy of their dissertation. Master's students, beginning with the fall semester of 2010, are required to publish an electronic copy of their thesis. The UT Digital Repository accepts deposits of Theses and Dissertations from the Office of Graduate Studies at UT Austin.  These digital documents and their metadata are exposed to Google and other search engines upon deposit so they can be available to the world for viewing and downloading.
</p>
<p>For more information please contact:<br />
	<ul><li>UT Libraries: Paul Rascoe, 512-495-4262, <a href="mailto:prascoe@mail.utexas.edu">prascoe@mail.utexas.edu</a><br />
</li>
<li>UT Office of Graduate Studies:  512-471-4511<br />
Or contact the Dean of Graduate Studies (in writing only, not an email message):<br />
Judith H. Langlois, <br />
Vice Provost and Dean of Graduate Studies, <em>ad interim</em><br />
The University of Texas at Austin<br />
Office of the Vice Provost and Dean of Graduate Studies<br />
1 University Station G0400<br />
Austin, TX 78712</li>
	</ul><br />
</p>

<ol start="39" type="1">
  <li><strong><a name="theses_replace" id="these_replace"></a>
 I’ve found my Thesis/Dissertation in the Repository, and I’d like to amend it. Can I submit additional material or replace it altogether with a new version?</strong></li>
</ol>
<p>
No. The digital version of your work in the UT Digital Repository is an exact copy of your submitted version, which was signed and approved by your committee and the Office of Graduate Studies.  The UT Libraries cannot accept modified or replacement versions.  If you would like more information about modifying your thesis or dissertation, please contact in writing (not an email message) the Dean of the Office of Graduate Studies at this address:
</p>
<p>Judith H. Langlois,<br />
  Vice Provost and Dean of Graduate Studies, <em>ad interim</em><br />
The University of Texas at Austin<br />
Office of the Vice Provost and Dean of Graduate Studies<br />
1 University Station G0400<br />
Austin, TX 78712<br />
</p>




    </xsl:template>

</xsl:stylesheet>
