<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: dbcah.xsl is the UTDR theme containing 
HTML,CSS and XSL Specific to the Dolph Briscoe Center for American History theme.

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
	xmlns:atom="http://www.w3.org/2005/Atom"

    	xmlns:ore="http://www.openarchives.org/ore/terms/"

    	xmlns:oreatom="http://www.openarchives.org/ore/atom/"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="mets xlink xsl dim xhtml mods dc">
    
	<xsl:import href="../dri2xhtml.xsl"/>
	<xsl:import href="../utdigithing/ut.xsl"/>
	<xsl:import href="../utdigithing/Structural.xsl"/>
	<xsl:import href="../utdigithing/DIM-Handler.xsl"/>
	<xsl:import href="../utdigithing/General-Handler.xsl"/>
	

	
   <xsl:output indent="yes"/>

   <xsl:template match="dri:document">
        <html>
            <!-- First of all, build the HTML head element -->
            <xsl:call-template name="buildHead"/>
            <!-- Then proceed to the body -->
            <body >
                <div id="skip"><a href="#content">Skip to Main Content</a></div>
                <div id="top-body-border"> </div>              
                <div id="ds-main">
                    <div id="utlogo"><a href="http://www.utexas.edu/"><image src="/themes/dbcah/images/ut_logo.jpg" 
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
                
            </body>
        </html>
    </xsl:template>   

  <xsl:template match="dri:options">
        <div id="ds-options">
            <h3 id="ds-search-option-head" class="ds-option-set-head">
                <label for="search-repository">
                    Search This Community
                </label>
            </h3>
            <div id="ds-search-option" class="ds-option-set">
                <!-- The form, complete with a text box and a button, all built from attributes referenced
                    from under pageMeta. -->
                <form id="ds-search-form" method="post">
                    <xsl:attribute name="action">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='search'][@qualifier='simpleURL']"/>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                        <xsl:text>ds-search-form</xsl:text>
                    </xsl:attribute>
                    <fieldset>
                        <input class="ds-text-field" type="text" id="search-repository">
                            <xsl:attribute name="name">
                                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='search'][@qualifier='queryField']"/>
                            </xsl:attribute>                        
                        </input>
                        <input class="ds-button-field " name="submit" type="submit" i18n:attr="value" value="xmlui.general.go" >
                            <xsl:attribute name="onclick">
                                <xsl:text>
                                    var radio = document.getElementById(&quot;ds-search-form-scope-container&quot;);
                                    if (radio != undefined &amp;&amp; radio.checked)
                                    {
                                    var form = document.getElementById(&quot;ds-search-form&quot;);
                                    form.action=
                                </xsl:text>
                                <xsl:text>&quot;</xsl:text>
                                <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath']"/>
                                <xsl:text>/handle/&quot; + radio.value + &quot;/search&quot; ; </xsl:text>
                                <xsl:text>
                                    } 
                                </xsl:text>
                            </xsl:attribute>
                        </input>
                        <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='focus'][@qualifier='container']">
                            <label label="ds-search-form-scope-container">
                                <input id="ds-search-form-scope-container" type="radio" name="scope">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="substring-after(/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='focus'][@qualifier='container'],':')"/>
                                    </xsl:attribute>       
                                </input> 
                                <xsl:choose>
                                    <xsl:when test="/dri:document/dri:body//dri:div/dri:referenceSet[@type='detailView' and @n='community-view']">
                                        <i18n:text>xmlui.dri2xhtml.structural.search-in-community</i18n:text>
                                    </xsl:when>   
                                    <xsl:otherwise>
                                        <i18n:text>xmlui.dri2xhtml.structural.search-in-collection</i18n:text>
                                    </xsl:otherwise>
                                    
                                </xsl:choose>
                            </label>
                            <br/>
                            <label for="ds-search-form-scope-all">
                                <input id="ds-search-form-scope-all" type="radio" name="scope" value="" checked="checked"/>
                                <i18n:text>xmlui.dri2xhtml.structural.search</i18n:text>
                            </label>
                            <br/>
                        </xsl:if>
                    </fieldset>
                </form>
                <!-- The "Advanced search" link, to be perched underneath the search box -->
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='search'][@qualifier='advancedURL']"/>
                    </xsl:attribute>
                    <i18n:text>xmlui.dri2xhtml.structural.search-advanced</i18n:text>
                </a>
            </div>
            
            <!-- Once the search box is built, the other parts of the options are added -->
            <xsl:apply-templates />
            
             <!-- Information Menu -->
            <h3 class="ds-option-set-head">Repository Information</h3>
            <div class="ds-option-set">		
                <ul>
                    <li><a href="/about">About UTDR</a></li>
                    <li><a href="/contact">Contact UTDR</a></li>
                    <li><a href="/policies">UTDR Policies</a></li>
    					  <li><a href="/faqs#getting_started">Getting Started</a></li>
		    			  <li><a href="/glossary">Glossary</a></li>
		              <li><a href="/help">Help</a></li>
                    <li><a href="/faqs">FAQs</a></li>
                    
                </ul>
            </div>
            
        </div>
    </xsl:template>
    
     <xsl:template name="buildHeader">
        
        <div id="ds-header">
            <a>
                <xsl:attribute name="href">
                    <!--<xsl:value-of 
                        select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='contextPath'][not(@qualifier)]"/>-->
                    <xsl:text>/</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:text>UT Digital Repository</xsl:text>
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
            
<!--<div class="breadCrumbHolder module">
                <div id="breadCrumb2" class="breadCrumb module">
            <ul id="ds-trail">
                <xsl:call-template name="customBreadcrumb" />
            </ul>
	</div>
	</div>-->
            
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
    
    <xsl:template match="dri:body">    
    
        <div id="ds-body">
            <div id="skip"><a name="content">Content</a></div>
            
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
                    <div id="repositoryheader"><a href="/handle/2152/7020"> <img 
                        src="/themes/dbcah/images/briscoe_center_horiz1.jpg" alt="Dolph Briscoe Center for American History" /> </a></div>
                    
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
	<!-- match on xpath starting from document root "/" -->
	<xsl:template match="/dri:document/dri:body/dri:div/dri:div[@id='aspect.artifactbrowser.CommunityViewer.div.community-search-browse']">
		<xsl:text> </xsl:text>
		
	</xsl:template>
	
	<!-- Example match on xpath starting from document dri:div[@id=]
	<xsl:template match="dri:div[@id='aspect.artifactbrowser.CommunityViewer.div.community-search-browse']">
		<xsl:text> </xsl:text>
		
	</xsl:template>-->

    
</xsl:stylesheet>

   

   


