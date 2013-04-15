<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: ut.xsl is the main UTDR theme containing 
HTML,CSS and XSL Specific to the utdigithing theme.

Includes: Custom Pages, dri2xhtml library overlays 
(Structural.xsl, DIM-Handler.xsl, General-Handler.xsl).

Notes: Library overlays should be included in all other UTDR Themes. 
Example of include: <xsl:import href="/themes/utdigithing/Structural.xsl" />	    
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
    
	<xsl:import href="../dri2xhtml.xsl"/>
	<xsl:import href="Structural.xsl"/>
	<xsl:import href="DIM-Handler.xsl"/>
	<xsl:import href="General-Handler.xsl"/>
	<xsl:import href="custompages.xsl"/>
	<xsl:import href="custompages/about.xsl"/>
	<xsl:import href="custompages/contact.xsl"/>
	<xsl:import href="custompages/faqs.xsl"/>
	<xsl:import href="custompages/glossary.xsl"/>
	<xsl:import href="custompages/help.xsl"/>
	<xsl:import href="custompages/policies.xsl"/>
	<xsl:import href="custompages/policies_collections.xsl"/>
	<xsl:import href="custompages/policies_copyright.xsl"/>
	<xsl:import href="custompages/policies_metadata.xsl"/>
	<xsl:import href="custompages/policies_preservation.xsl"/>
	<xsl:import href="custompages/policies_services.xsl"/>
	<xsl:import href="custompages/policies_submission.xsl"/>
	<xsl:import href="custompages/recommended_formats.xsl"/>
	
   <xsl:output indent="yes"/>

    
    
    <xsl:template match="dri:document">
        <html>
            <!-- First of all, build the HTML head element -->
            <xsl:call-template name="buildHead"/>
            <!-- Then proceed to the body -->
            <body >
                <div id="skip"><a href="#content"><i18n:text>xmlui.general.skip_to_main_content</i18n:text></a></div>
                <div id="top-body-border"> </div>              
                <div id="ds-main">
                    <div id="utlogo"><a href="http://www.utexas.edu/"><image src="/themes/utdigithing/images/ut_logo.jpg" 
                        alt="The University of Texas at Austin" /></a> 
                    </div>
                    <!-- 
                        The header div, complete with title, subtitle, trail and other junk. The trail is 
                        built by applying a template over pageMeta's trail children. -->
                    <xsl:call-template name="buildHeader"/>
                    
                    <!-- 
                        Goes over the document tag's children elements: body, options, meta. The body template
                        generates the ds-body div that contains all the content. The options template generates
                        the ds-options div that contains the navigation and action options available to the 
                        user. The meta element is ignored since its contents are not processed directly, but 
                        instead referenced from the different points in the document. -->
		    <div id="ds-wrapper">
                    <xsl:apply-templates /> 
                    </div>
		    <div style="clear:both;"></div>
                    <!--   
                        The footer div, dropping whatever extra information is needed on the page. It will
                        most likely be something similar in structure to the currently given example. --> 
                    <xsl:call-template name="buildFooter"/> 
                    
                    <div style="clear:both;"></div>
                </div>
                
		<!-- include all subdomains -->
		<script type="text/javascript">
  
  		var _gaq = _gaq || [];
  		_gaq.push(['_setAccount', 'UA-3780897-21']);    
  		_gaq.push(['_setDomainName', 'lib.utexas.edu']);
  		_gaq.push(['_trackPageview']);
  
  		(function() {
    		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    		  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  		})();

		</script>


            </body>
        </html>
    </xsl:template>   
    
    
    <xsl:template name="buildHead">
        <head>
            <meta http-equiv="Content-Language" content="en-us" />
            <meta name="description" content="University of Texas at Austin Digital Repository" />
            <meta name="keywords" content="university of texas libraries, digital repositories" />
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	    <meta name="google-site-verification" content="dMaImZvljVx_BTbn0gV1LSz1j4gncUZbeKhBRriuan0" />
	    <meta name="google-site-verification" content="8gFWHeU0d6OJFwD0ueMjSDud5PYnsTYW_1DoZ1dPxjA" />
            <link rel="shortcut icon" href="/themes/utdigithing/images/favicon.ico" type="image/x-icon" />
	    <script type="text/javascript" src="/themes/utdigithing/inc/swfobject.js"><xsl:text> </xsl:text></script>
	    <script type="text/javascript" src="/themes/utdigithing/inc/jquery-1.2.min.js"><xsl:text> </xsl:text></script>
	    <script type="text/javascript" src="/themes/utdigithing/inc/toggle.js"><xsl:text> </xsl:text></script>
	    <script type="text/javascript" src="/themes/utdigithing/inc/silverlight.js"><xsl:text> </xsl:text></script>
	    <script type="text/javascript" src="/themes/utdigithing/inc/wmvplayer.js"><xsl:text> </xsl:text></script>
            <!-- Add stylsheets -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='stylesheet']">
                <link rel="stylesheet" type="text/css">
                    <xsl:attribute name="media">
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/themes/</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>

		<!-- if URI help add style sheet -->
	    <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='help'">
                       <!-- custom content for url 'help' -->
                	<xsl:call-template name="helpcss" />
            </xsl:if> 

            
            <!-- Add syndication feeds -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='feed']">
                <link rel="alternate" type="application">
                    <xsl:attribute name="type">
                        <xsl:text>application/</xsl:text>
                        <xsl:value-of select="@qualifier"/>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </link>
            </xsl:for-each>
            
            <!-- The following javascript removes the default text of empty text areas when they are focused on or submitted -->
            <!-- There is also javascript to disable submitting a form when the 'enter' key is pressed. -->
            <script type="text/javascript">
                //Clear default text of emty text areas on focus
                function tFocus(element)
                {
                if (element.value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){element.value='';}
                }
                //Clear default text of emty text areas on submit
                function tSubmit(form)
                {
                var defaultedElements = document.getElementsByTagName("textarea");
                for (var i=0; i != defaultedElements.length; i++){
                if (defaultedElements[i].value == '<i18n:text>xmlui.dri2xhtml.default.textarea.value</i18n:text>'){
                defaultedElements[i].value='';}}
                }
                //Disable pressing 'enter' key to submit a form (otherwise pressing 'enter' causes a submission to start over)
                function disableEnterKey(e)
                {
                var key;
                
                if(window.event)
                key = window.event.keyCode;     //Internet Explorer
                else
                key = e.which;     //Firefox and Netscape
                
                if(key == 13)  //if "Enter" pressed, then disable!
                return false;
                else
                return true;
                }
                
            </script>
            
            <!-- Add javascipt  -->
            <xsl:for-each select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='javascript']">
                <script type="text/javascript">
                    <xsl:attribute name="src">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>
                        <xsl:text>/themes/</xsl:text>
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='theme'][@qualifier='path']"/>
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                    &#160;
                </script>
            </xsl:for-each>
            <!-- Add the title in -->
            <!-- Add the TITLE and cutom page title  depending on URI, included in customPage.xsl in -->
            <xsl:call-template name="customURI"/>
            <link rel="search" type="application/opensearchdescription+xml" title="UT Digital Repository" href="http://www.lib.utexas.edu/gadgets/firefoxsearch/utdrsearch.xml" />
        </head>
    </xsl:template>
    
    
    
    <xsl:template name="buildHeader">
        
        <div id="ds-header">
            <a>
                <xsl:attribute name="href">
                    <!--<xsl:value-of 
                        select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>-->
                    <xsl:text>http://www.lib.utexas.edu</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:text>University of Texas Libraries</xsl:text>
                </xsl:attribute>
                
                <span id="ds-header-logo">&#160;</span>
            </a>
            <h1 class="pagetitle">
                <xsl:choose>
                    <!-- protectiotion against an empty page title -->
                    <xsl:when test="not(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title'])">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title']/node()"/>
                    </xsl:otherwise>
                </xsl:choose>
                
            </h1>
            <h2 class="static-pagetitle"><i18n:text>xmlui.dri2xhtml.structural.head-subtitle</i18n:text></h2>
            
            
            <ul id="ds-trail">
                <xsl:call-template name="customBreadcrumb" />
            </ul>
            
            
            <xsl:choose>
                <xsl:when test="/dri:document/dri:meta/dri:userMeta/@authenticated = 'yes'">
                    <div id="ds-user-box">
                        <p>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='url']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.profile</i18n:text>
                                <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='firstName']"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                    dri:metadata[@element='identifier' and @qualifier='lastName']"/>
                            </a>
                            <xsl:text> | </xsl:text>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='logoutURL']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.logout</i18n:text>
                            </a>
                        </p>
                    </div>
                </xsl:when>
                <xsl:otherwise>
                    <div id="ds-user-box">
                        <p>
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="/dri:document/dri:meta/dri:userMeta/
                                        dri:metadata[@element='identifier' and @qualifier='loginURL']"/>
                                </xsl:attribute>
                                <i18n:text>xmlui.dri2xhtml.structural.login</i18n:text>
                            </a>
                        </p>
                    </div>
                </xsl:otherwise>
            </xsl:choose>
            
        </div>
    </xsl:template>
    
    
    <xsl:template name="buildFooter">
        
        <div id="ds-footer">
            <div id="ds-footer-links">
                <i18n:text>xmlui.dri2xhtml.structural.footer_utdr</i18n:text>
            </div>
        </div>
        <script type="text/javascript">
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
            document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
	<script type="text/javascript">
		try {

  			var pageTracker = _gat._getTracker("UA-3780897-4");

			  // begin additional code to avoid cookie conflicts
			  pageTracker._setDomainName(".utexas.edu");
			  pageTracker._setAllowHash(false);
			  // end additional code to avoid cookie conflicts

  			pageTracker._trackPageview();
		} catch(err) {}

	</script>

<!-- call Web Central tracking script -->
<script type="text/javascript">                                                               
var utJsHost = (("https:" == document.location.protocol) ? "https://www." : "http://www.");
document.write(unescape("%3Cscript src='" + utJsHost + "utexas.edu/common/js/ga_subdomain.js' type='text/javascript'%3E%3C/script%3E"));
</script>

<!-- end Google Analytics JS -->
        

    </xsl:template>
    
    <xsl:template match="dri:body">    
    
        <div id="ds-body">
            <div id="skip"><a name="content"><xsl:text> </xsl:text></a></div>
            
	    <div id="addthis">
                <!-- AddThis Button BEGIN -->
                <a href="http://www.addthis.com/bookmark.php?v=250" onmouseover="return addthis_open(this, '', '[URL]', '[TITLE]')" onmouseout="addthis_close()" onclick="return addthis_sendto()">
                <img src="/themes/utdigithing/images/sm-share-en.gif" width="83" height="16" alt="Bookmark and Share" style="border:0;"/></a>
                <script type="text/javascript" src="https://s7.addthis.com/js/250/addthis_widget.js?pub=utdr"><xsl:text> </xsl:text></script>
                <!-- AddThis Button END -->
            </div>

		
	    <xsl:choose>
                <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']=''">
                    <div id="repositoryheader-home"><img 
                        src="/themes/utdigithing/images/subheader-home.jpg" alt="University of Texas Digital Repository" /></div>
                    <br />
                </xsl:when>
                <xsl:otherwise>
                    <div id="repositoryheader"><a href="/"> <img 
                        src="/themes/utdigithing/images/subheader.jpg" alt="University of Texas Digital Repository" /> </a></div>
                    
                </xsl:otherwise>
            </xsl:choose>
            
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']">
                <div id="ds-system-wide-alert">
                    <p>
                        <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']/node()"/>
                    </p>
                </div>
            </xsl:if>

            <!-- Add body for custom pages; included in customPage.xsl  -->
            <xsl:call-template name="customBody" />
            
        </div>
    </xsl:template>
    
   
      <!-- The font-sizing variable is the result of a linear function applied to the character count of the heading text -->
    <xsl:template match="dri:div/dri:head" priority="3">
        <xsl:variable name="head_count" select="count(ancestor::dri:div)"/>
        <!-- with the help of the font-sizing variable, the font-size of our header text is made continuously variable based on the character count -->
        <xsl:variable name="font-sizing" select="365 - $head_count * 80 - string-length(current())"></xsl:variable>
	
	<xsl:choose>
		<xsl:when test="$head_count = 1">
			<div class="headwrapper">
			<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<xsl:element name="h1">
			    <div>
				    <xsl:call-template name="standardAttributes">
					<xsl:with-param name="class">ds-div-head</xsl:with-param>
				    </xsl:call-template>
				    <xsl:apply-templates />
			    </div>
			</xsl:element>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
		</xsl:when>
		<xsl:otherwise>
			<xsl:element name="h{$head_count}">
				<xsl:apply-templates />
			</xsl:element>
		</xsl:otherwise>
	</xsl:choose>
    </xsl:template>
    
<!-- Do not display header on home page introduction -->
<xsl:template match="/dri:document/dri:body/dri:div[@n='news']">
	<i18n:text>xmlui.general.intro-text</i18n:text>
</xsl:template>

<!-- Remove home page search box -->
<xsl:template match="dri:body/dri:div[@n='front-page-search']">

</xsl:template>

<!-- Add Recent Submission under cummunity list on home page -->
<!-- This template grabs the values from the RSS feed -->
<xsl:template match="/dri:document/dri:body/dri:div[2][@n='comunity-browser']">
	<xsl:apply-templates />
 	<xsl:variable name="RSSMapURL" select="concat('cocoon:/',/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='feed'][2])"/>
	<div class="headwrapper">
	<div class="headwrapper-left-crn"><xsl:text> </xsl:text></div>
	<h1>
	<div class="ds-div-head"><i18n:text>xmlui.ArtifactBrowser.CollectionViewer.head_recent_submissions</i18n:text></div>
	</h1>
	</div>
	<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

		<ul class="ds-artifact-list">
		<xsl:for-each select="document($RSSMapURL)/rss/channel/item">
		
		
		<li class="ds-artifact-item odd">
		<div class="artifact-description">
		<div class="artifact-title">

		<a>
                    <xsl:attribute name="href">
			<xsl:variable name="itemurl" select="substring(normalize-space(link),22)"/>
			<xsl:text>/handle</xsl:text>
			<xsl:value-of select="$itemurl"/>
                    </xsl:attribute>
                    <xsl:value-of select="title" />
                </a>
		</div>
		<div class="artifact-info">

		<xsl:choose>
                        <xsl:when test="string-length(description) > 196">
				<xsl:value-of select="substring(description,1,196)"/>
				<xsl:text> ... </xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="description" />
			</xsl:otherwise>
		</xsl:choose>
		<xsl:variable name="dateformated" select="substring(normalize-space(pubDate),1,16)"/>
		<xsl:text> (</xsl:text><xsl:value-of select="$dateformated" /><xsl:text>)</xsl:text>
		</div>
		</div>
		</li>
		
	</xsl:for-each>
		</ul><p style="clear:both;"><xsl:text> </xsl:text></p>
		<p style="text-align:right;padding-top:5px;"><a>
                    <xsl:attribute name="href">
			<xsl:text>/browse?type=title</xsl:text>
                    </xsl:attribute>
                    <i18n:text>xmlui.ArtifactBrowser.Navigation.info_browse_all_titles</i18n:text>
                </a></p>
</xsl:template>


<!-- Add "Browse all Titles" under cummunity recent submission -->
<xsl:template match="//dri:div[@n='community-recent-submission']">
	<xsl:apply-templates />

	 <p style="text-align:right;padding-top:5px;"><a>
                    <xsl:attribute name="href">
			<xsl:value-of select="/dri:document/dri:options/dri:list[@n='browse']/dri:list[@n='context']/dri:item[3]/dri:xref/@target"/>
                    </xsl:attribute>
                    <i18n:text>xmlui.ArtifactBrowser.Navigation.info_browse_all_titles</i18n:text>
                </a></p>
</xsl:template>

<!-- Add "Browse all Titles" under cummunity recent submission -->
<xsl:template match="//dri:div[@n='collection-recent-submission']">
	<xsl:apply-templates />
	 <p style="text-align:right;padding-top:5px;"><a>
                    <xsl:attribute name="href">
			<xsl:value-of select="/dri:document/dri:options/dri:list[@n='browse']/dri:list[@n='context']/dri:item[3]/dri:xref/@target"/>
                    </xsl:attribute>
                    <xsl:text>Browse all Titles</xsl:text>
                </a></p>
</xsl:template>
    
</xsl:stylesheet>
