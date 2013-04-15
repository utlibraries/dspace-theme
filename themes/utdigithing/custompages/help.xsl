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

	<!-- if URI is help then use this title -->
	<xsl:template name="helpURI">
		<xsl:text>Help</xsl:text>
	</xsl:template>
    
	<!-- when template called use this breadcrumb -->
    	<xsl:template name="helpBreadcrumb">
		<li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Help</li>                 		
	</xsl:template>
	
	<!-- when template called use these styles -->
	
	<xsl:template name="helpcss">
	<link rel="stylesheet" href="themes/utdigithing/lib/helpstyle.css" type="text/css" />
	
	</xsl:template>
	
	
	<!-- when template called use this body -->
    	<xsl:template name="helpBody">


	<div class="headwrapper">
	<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
	<h1>
	<div class="ds-div-head">Help</div>
	</h1>
	</div>
	<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

	



	<div id="content">
	
	
	
	<!-- Section divs go here -->
	
	<!-- Introduction -->
	<a name="intro"></a>
	
	
	<div class="tocsection">
	
	<h3>Table of Contents</h3>
	
	<p>This section provides help for searching, browsing, submitting works, and more. Select an option below to skip directly to a section.</p>
	<ul><li><a href="#account">My Account</a> - Instructions on logging in, editing your profile, and viewing your submissions.</li>
	<li><a href="#submit">Submit Works</a> - Learn how to add a work to the Repository.</li>
	<li><a href="#browse">Browse</a> - Find out how to browse a list of works in a variety of specified orders.</li>
	<li><a href="#search">Search</a> - Learn how to conduct basic searches and advanced searches.</li>
	<li><a href="#subscribe">Subscribe to Updates</a> - Instructions on subscribing to RSS or e-mail alerts of new works added to collections.</li>
	<li><a href="#about">About the Repository</a> - Learn how the Repository content is organized using communities, collections, and handles.</li></ul>
	
	
	
	
	</div>
	
	<!-- My Account -->
	<a name="account"></a>
	
	<div class="section">
	
	<h3>My Account</h3>
	
	<p>My Account is a personal page that is maintained for each member. Authentication to My Account is tied to your UT EID if you are a UT student, faculty or staff, or tied to your email address if you are a non-UT person. If you are an authorized Repository submitter or supervisor, or if you are a staff member responsible for a Repository collection or metadata maintenance, you will have a My Account page.</p>
	
	<h4>Logging In</h4>
	
	<p>You may log in to the system if you:</p>
	
	<ul><li>wish to subscribe to a collection and receive e-mail updates when new works are added, or</li>
	<li>wish to go to the "My Account" page that tracks your subscriptions and other interactions with the Repository requiring authorization (if you are a submitter for a collection, for instance.)</li></ul>
	
	<p>When you access an area of the Repository that requires authorization, the system will require you to log in with your UT EID and password, or if you are a non-UT person, with your email address. Contact Colleen Lyon for authorization at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>. </p>
	
	<h4>Editing Your Profile</h4>
	
	<p>Once you are logged in, click the "Profile" link in the My Account section to edit your profile. </p>
	
	<h4>Viewing Your Submissions</h4>
	
	<p>Once you are logged in, you can click the "Submissions" link in the My Account section. Here you will find:</p>
	
	<ul><li>a list of your in-progress submissions - from this list you can resume the submission process where you left off, or you can remove the submission and cancel the work.</li>
	<li>a list of the submissions which you are supervising or collaborating on</li>
	<li>a list of submissions that are awaiting your action (if you have a collection workflow role).</li>
	<li>a link to a list of works that you have submitted and that have already been accepted into The Repository.</li></ul>
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	
	</div>
	
	<!-- Submit Works -->
	<a name="submit"></a>
	
	<div class="section">
	
	<h3>Submit Works</h3>
	
	<p>The submission process is the function that enables users to add a work to the Repository. The process of submission includes uploading the file(s) comprising the digital work and filling out information about the work on a form. Each community sets its own submission policy.</p>
	
	<p>Submitting a work to the Repository is a multi-step process. At any point in the submission process you can stop and save your work for a later date by clicking on the "cancel/save" button at the bottom of the page. The data you have already entered will be stored until you return to the submission, and you will be reminded on your "My Account" page that you have a submission in process. If somehow you accidentally exit from the submission process, you can always resume from your "My Account" page. You can also cancel your submission at any point.</p>
	
	<p>Watch this video for step-by-step instructions on submitting your work to the UT Digital Repository.</p>
	
<div id="videoplayer2"> <div id="container2">
<a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player. </div> <script type="text/javascript" src="http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/swfobject.js"><xsl:comment/></script>
<script type="text/javascript">
var s1 = new SWFObject("http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/mediaplayer.swf","mediaplayer","400","355","7"); 	s1.addParam("allowfullscreen","true");
s1.addVariable("width","400");
s1.addVariable("height","355");
s1.addVariable("autostart","false");
s1.addVariable("file","http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/submissionflv.flv");
s1.addVariable("image","http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/submission.png");
s1.write("container2");
</script></div>
<p><a href="http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/submission_transcript.pdf">Click here for a video transcript</a> (PDF format)</p>

        
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	
	        </div>
	
	
	<!-- Browse -->
	<a name="browse"></a>
	<div class="section">
	<h3>Browse</h3>
	
	<p>Browse allows you to go through a list of works in a variety of specified orders:</p>
	
	<ul><li><span class="heading">Browse by Community/Collection</span> takes you through the communities in alphabetical order and allows you to see the sub-communities and collections within each community.</li>
	
	<li><span class="heading">Browse by Date Created</span> allows you to move through a list of all works in the Repository in chronological order by publication date (if previously published) or date of creation.</li>
	
	<li><span class="heading">Browse by Author</span> allows you to move through an alphabetical list of all authors of works in the Repository.</li>
	
	<li><span class="heading">Browse by Title</span> allows you to move through an alphabetical list of all titles of works in the Repository.</li>
	
	<li><span class="heading">Browse by Subject</span> allows you to move through an alphabetical list of subjects/tags assigned to works in the Repository.</li>
	
	<li><span class="heading">Browse by Department</span> allows you to move through an alphabetical list of academic departments and research units on campus assigned to works in the Repository.</li></ul>
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	</div>
	
	<!-- Search -->
	<a name="search"></a>
	<div class="section">
	<h3>Search</h3>
	
	<h4>Search all of the Repository</h4>
	<p>To search all of the Repository, use the search box at the top of the navigation bar on the right (or the search box in the middle of the home page). When two or more words are entered into the search box, the search automatically retrieves works that contain all the words in the search string. For example, if you enter the two words, cats dogs, into the search box, it will retrieve all works that contain BOTH the words "cats" and "dogs". To search on an exact phrase, use quotations around the phrase. (See below for more search tips.) </p>
	
	<p>The word(s) you enter in the search box will be searched against the title, author, subject abstract, series, sponsor and identifier fields of each work's record. Some words will be ignored, such as:</p>
	
	<p>"a", "and" , "are" , "as" , "at" , "be" , "but" , "by" , "for" , "if" , "in" , "into",
	"is" ,"it" ,"no" , "not" , "of" , "on" , "or" , "such", "the" , "to" , "was"</p>
	
	<h4>Search a specific community or collection</h4>
	
	<p>To limit your search to a specific community or collection, <a href="https://repositories.lib.utexas.edu/community-list" target="_parent">navigate to that community or collection</a> and use the search box on that page.</p>
	
	<h4>Advanced Search</h4>
	
	<p>Watch the video below to learn how to use the Advanced Search box.</p>
	
	<div id="videoplayer"> <div id="container">
	<a href="http://www.macromedia.com/go/getflashplayer">Get the Flash Player</a> to see this player. </div> <script type="text/javascript" src="http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/swfobject.js"><xsl:comment/></script>
	<script type="text/javascript">
	var s1 = new SWFObject("http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/mediaplayer.swf","mediaplayer","400","355","7"); 	s1.addParam("allowfullscreen","true");
	s1.addVariable("width","400");
	s1.addVariable("height","355");
	s1.addVariable("autostart","false");
	s1.addVariable("file","http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/advancedsearchflv.flv");
	s1.addVariable("image","http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/advancedsearch.png");
	s1.write("container");
	</script></div>
	<p><a href="http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/adv_search_transcript.pdf">Click here for a video transcript</a> (PDF format)</p>
	
	<h4>Search Tips</h4>
	
	<ul><li><span class="heading">Truncation</span> - Use an asterisk (*) after a word stem to get all hits having words starting with that root, for example:
	<blockquote>select*</blockquote>
	will retrieve selects, selector, selectman, selecting.<br /><br /></li>
	<li><span class="heading">Stemming</span> - The search engine automatically expands words with common endings to include plurals, past tenses ...etc.<br /><br /></li>
	<li><span class="heading">Phrase Searching</span> - To search using multiple words as a phrase, put quotation marks (") around the phrase. <blockquote>"organizational change"</blockquote><br /><br /></li>
	<li><span class="heading">Exact word match</span> - Put a plus (+) sign before a word if it MUST appear in the search result. For instance, in the following search the word "training" is optional, but the word "dog" must be in the result. <blockquote>+dog training</blockquote><br /><br /></li>
	<li><span class="heading">Eliminate works with unwanted words</span> - Put a minus (-) sign before a word if it should not appear in the search results. Alternatively, you can use NOT. This can limit your search to eliminate unwanted hits. For instance, in these searches:
	<blockquote>training -cat</blockquote>
	<blockquote>training NOT cat</blockquote>
	you will get works containing the word "training", except those that also contain the word "cat".<br /><br /></li>
	<li><span class="heading">Boolean searching</span> - Use the OR, and NOT Boolean operators to combine terms. Note that they must be CAPITALIZED!<br /><br />
	
	<ul>
	<li><span class="heading">OR</span> - to enlarge searches to find works containing any of the words or phrases surrounding this operator
	<blockquote>cats OR dogs</blockquote>
	will retrieve all works that contain EITHER the words "cats" or "dogs".<br /><br /></li>
	<li><span class="heading">NOT</span> - to exclude works containing the word following this operator, e.g.
	<blockquote>training NOT cat</blockquote>
	will retrieve all works that contain the word "training" EXCEPT those also containing the word "cat".<br /><br /></li></ul>
	Parentheses can be used in the search query to group search terms into sets, and operators can then be applied to the whole set, e.g.
	<blockquote>(cats OR dogs) AND (training OR discipline)</blockquote></li>
	</ul>
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	
	</div>
	
	<!-- Subscribe -->
	<a name="subscribe"></a>
	<div class="section">
	<h3>Subscribe to Updates</h3>
	
	<p>Users can be notified by e-mail or RSS when a collection has been updated.</p>
	
	<h4>E-mail Subscriptions</h4>
	
	<p>To subscribe to a collection's e-mail alerts:</p>
	
	<ol><li>Login to the Repository with your UT EID and password. The Login link is in the navigation bar on the right of the home page</li>
	<li>Click on Profile under My Account</li>
	<li>Select a collection for which you would like to receive e-mail alerts, and click the Add button</li>
	<li>Repeat this process to subscribe to additional collections</li></ol>
	
	
	<h4>RSS Feeds</h4>
	
	<p>Users may subscribe to a collection's RSS feed. To do so:</p>
	
	<ol><li>Navigate to the collection you'd like to subscribe to</li>
	<li>Look for the orange RSS icon in your browser<br /><img src="http://www.lib.utexas.edu/services/instruction/learningmodules/utdr/rss-icon.jpg" /></li></ol>
	
	<p><a href="http://www.commoncraft.com/rss_plain_english" target="_blank">Watch this video to learn more about subscribing to RSS feeds</a> (link opens in a new window)</p>
	
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	
	
	</div>
	
	<!-- About -->
	<a name="about"></a>
	<div class="section">
	<h3>About the Repository</h3>
	
	<p>The Repository content is organized using communities and collections. Persistent URLs known as "handles" are assigned to each work.</p>
	
	<h4>Communities</h4>
	
	<p>The Repository content is organized around Communities. Within each community there can be an unlimited number of sub-communities and an unlimited number of collections. Each collection may contain an unlimited number of works. This organization gives The Repository the flexibility to accommodate differing needs of communities by allowing them to:</p>
	
	<ul><li>Decide on policies such as:
	<ul><li>who contributes content</li>
	<li>whether there will be a review process</li>
	<li>who will have access</li></ul></li>
	<li>Determine workflow - reviewing, editing, metadata</li>
	<li>Manage collections</li></ul>
	
	<p>Each community has its own entry page displaying information, news and links reflecting the interests of that community, as well as a descriptive list of collections within the community.</p>
	
	<p>UT Faculty/Researcher Works is a community where individuals whose departments have not established a community within the UT Digital Repository can deposit their research. </p>
	
	<h4>Collections</h4>
	
	<p>Communities can maintain an unlimited number of collections in The Repository. Collections can be organized around a topic, or by type of information (such as working papers or datasets) or by any other sorting method a community finds useful in organizing its digital works. Collections can have different policies and workflows.</p>
	
	<p>Each Repository collection has its own entry page displaying information, news and links reflecting the interests of users of that collection.</p>
	
	<h4>Handles</h4>
	
	<p>When your work becomes a part of the Repository it is assigned a persistent URL. This means that, unlike most URLs, this identifier will not have to be changed when the system migrates to new hardware, or when changes are made to the system. The Repository is committed to maintaining the integrity of this identifier so that you can safely use it to refer to your work when citing it in publications or other communications. Our persistent URLs are registered with the <a href="http://www.handle.net">Handle System</a>, a comprehensive system for assigning, managing, and resolving persistent identifiers, known as "handles," for digital objects and other resources on the Internet. The Handle System is administered by the <a href="http://www.cnri.reston.va.us/">Corporation for National Research Initiatives (CNRI)</a>, which undertakes, fosters, and promotes research in the public interest.</p>
	
	<p class="toplink"><a href="#">Return to the top</a></p>
	
	</div>
	
	<!-- End section divs -->
	<p>For help with using the Repository and questions about your specific site, please contact the Repository Curator, Colleen Lyon, at <a href="mailto:utdr-general@utlists.utexas.edu">utdr-general@utlists.utexas.edu</a>.</p>
</div>
    	</xsl:template>
 
</xsl:stylesheet>
