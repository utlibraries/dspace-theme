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
    
	<xsl:import href="../dri2xhtml.xsl"/>
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
                    <div id="utlogo"><a href="http://www.utexas.edu/"><image src="/themes/hrc/images/ut_logo.jpg" 
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
                    <xsl:apply-templates /> 
                    
                    <!--   
                        The footer div, dropping whatever extra information is needed on the page. It will
                        most likely be something similar in structure to the currently given example. --> 
                    <xsl:call-template name="buildFooter"/> 
                    
                    <div style="clear:both;"></div>
                </div>
                
            </body>
        </html>
    </xsl:template>   
    
    
    <xsl:template name="buildHead">
        <head>
            <meta http-equiv="Content-Language" content="en-us" />
            <meta name="description" content="Harry Ransom Center Digital Repository" />
            <meta name="keywords" content="university of texas libraries, digital repositories, harry ransom center" />
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <link rel="shortcut icon" href="/themes/utdigithing/images/favicon.ico" type="image/x-icon"/>
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
            <xsl:variable name="page_title" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title']" />
            <title>
                        <xsl:copy-of select="$page_title/node()" />
            </title>
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
                <xsl:choose>
                    <xsl:when test="count(/dri:document/dri:meta/dri:pageMeta/dri:trail) = 0">
                        <li class="ds-trail-link first-link"> - </li>
                    </xsl:when>
                    
                    <xsl:otherwise>
                        <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"/>
                    </xsl:otherwise>
                </xsl:choose>
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
            <!--<i18n:text>xmlui.dri2xhtml.structural.footer-promotional</i18n:text>-->
				
            <div id="ds-footer-links">
			<p><a href="http://www.hrc.utexas.edu">Harry Ransom Center Website</a></p>
                <p>
                    <a href="http://www.utexas.edu/web/guidelines/accessibility.html">Accessibility</a> | <a 
                        href="http://www.lib.utexas.edu/privacy.html">Privacy/Confidentiality</a> | <a 
                            href="http://www.lib.utexas.edu/usage_statement.html">Material
                            Usage Statement</a><br /> 
                    <a href="http://www.lib.utexas.edu/comments.html">Comments</a> | <a 
                        href="http://www.lib.utexas.edu/about/site.html">About This
                        Site</a> | <a href="http://www.utexas.edu/emergency/">Emergency Preparedness, Safety and Security</a></p>
                
            </div>
			
        </div>
        <script type="text/javascript">
            var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
            document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script type="text/javascript">
            var pageTracker = _gat._getTracker("UA-3780897-4");
            pageTracker._trackPageview();
        </script>
        

    </xsl:template>
    
    <xsl:template match="dri:body">
        <div id="ds-body">
            <div id="skip"><a name="content">Content</a></div>
            <xsl:choose>
                <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']=''">
                    <div id="repositoryheader-home"><a href="/handle/123456789/4021"><img src="/themes/hrc/images/subheader-home.jpg" alt="Harry Ransom Center Digital Repository" border="0"/></a></div>
                    <br />
                </xsl:when>
                <xsl:otherwise>
                    <div id="repositoryheader"> <a href="/handle/123456789/4021"><img src="/themes/hrc/images/subheader.jpg" alt="Harry Ransom Center Digital Repository" border="0"/></a></div>
                    
                </xsl:otherwise>
            </xsl:choose>
            
            <xsl:if test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']">
                <div id="ds-system-wide-alert">
                    <p>
                        <xsl:copy-of select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='alert'][@qualifier='message']/node()"/>
                    </p>
                </div>
            </xsl:if>


                    <xsl:apply-templates />

        </div>
    </xsl:template>
    
    <xsl:template match="dri:options">
        <div id="ds-options">
            <h3 id="ds-search-option-head" class="ds-option-set-head">
                <label for="search-repository">
                    <i18n:text>xmlui.dri2xhtml.structural.search</i18n:text>
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
                            <label for="ds-search-form-scope-all">
                                <input id="ds-search-form-scope-all" type="radio" name="scope" value="" checked="checked"/>
                                <i18n:text>xmlui.dri2xhtml.structural.search</i18n:text>
                            </label>
                            <br/>
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
            <h3 class="ds-option-set-head">Information</h3>
            <div class="ds-option-set">		
                <ul>
                    <li><a href="/about">About</a></li>
                    <li><a href="/contact">Contact</a></li>
                    <li><a href="/policies">Policies</a></li>
    					  <li><a href="/faqs#getting_started">Getting Started</a></li>
		    			  <li><a href="/glossary">Glossary</a></li>
		              <li><a href="/help">Help</a></li>
                    <li><a href="/faqs">FAQs</a></li>
					
                    
                </ul>
            </div>
            
        </div>
    </xsl:template>
    
    
    <!-- The font-sizing variable is the result of a linear function applied to the character count of the heading text -->
    <xsl:template match="dri:div/dri:head" priority="3">
        <xsl:variable name="head_count" select="count(ancestor::dri:div)"/>
        <!-- with the help of the font-sizing variable, the font-size of our header text is made continuously variable based on the character count -->
        <xsl:variable name="font-sizing" select="365 - $head_count * 80 - string-length(current())"></xsl:variable>
        <xsl:element name="h{$head_count}">
            <!-- in case the chosen size is less than 120%, don't let it go below. Shrinking stops at 120% -->
            
            <!-- Commented out Font  -->
            <!--<xsl:choose>
                <xsl:when test="$font-sizing &lt; 120">
                <xsl:attribute name="style">font-size: 120%;</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                <xsl:attribute name="style">font-size: <xsl:value-of select="$font-sizing"/>%;</xsl:attribute>
                </xsl:otherwise>
                </xsl:choose>-->
            
            
            
            <xsl:call-template name="standardAttributes">
                        <xsl:with-param name="class">ds-div-head</xsl:with-param>
            </xsl:call-template>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>
    
    
    <xsl:template match="dri:list[@type='progress']/dri:item" priority="2">
        <li>
            <xsl:attribute name="class">
                <xsl:value-of select="@rend"/>
                <xsl:if test="position()=1">
                    <xsl:text> first</xsl:text>
                </xsl:if>
                <xsl:if test="descendant::dri:field[@type='button']">
                    <xsl:text> button</xsl:text>
                </xsl:if>
                <xsl:if test="position()=last()">
                    <xsl:text> last</xsl:text>
                </xsl:if>
            </xsl:attribute>
            <xsl:apply-templates />
            <!--</li>-->
            <xsl:if test="not(position()=last())">
                <!--<li class="arrow">-->
                <img class="arrow" src="/themes/utdigithing/images/arrow.png" alt="Next" />
                <!--</li>-->
                <!--<li class="arrow">
                    <xsl:text>&#8594;</xsl:text>
                    </li>--> 
            </xsl:if>
        </li>
    </xsl:template>
    
    
    
    
    <!-- Start DIM: Generate the info about the item from the metadata section -->
    <xsl:template match="dim:dim" mode="itemSummaryList-DIM"> 
        <xsl:variable name="itemWithdrawn" select="@withdrawn" />
        <div class="artifact-description">
            <div class="artifact-title">
                <xsl:element name="a">
                    <xsl:attribute name="href">
                        <xsl:choose>
                            <xsl:when test="$itemWithdrawn">
                                <xsl:value-of select="ancestor::mets:METS/@OBJEDIT" />
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="ancestor::mets:METS/@OBJID" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="dim:field[@element='title']">
                            <xsl:value-of select="dim:field[@element='title'][1]/node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:element>
            </div>
            <div class="artifact-info">
                <span class="author">
                    <xsl:choose>
                        <xsl:when test="dim:field[@element='contributor'][@qualifier='author']">
                            <xsl:for-each select="dim:field[@element='contributor'][@qualifier='author']">
                                <xsl:copy-of select="./node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='contributor'][@qualifier='author']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="dim:field[@element='creator']">
                            <xsl:for-each select="dim:field[@element='creator']">
                                <xsl:copy-of select="node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='creator']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="dim:field[@element='contributor']">
                            <xsl:for-each select="dim:field[@element='contributor']">
                                <xsl:copy-of select="node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='contributor']) != 0">
                                    <xsl:text>; </xsl:text>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-author</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </span>
                <xsl:text> </xsl:text>
                <xsl:if test="dim:field[@element='date' and @qualifier='created'] or 
                    dim:field[@element='publisher']">
                    <span class="publisher-date">
                        <xsl:text>(</xsl:text>
                        <xsl:if test="dim:field[@element='publisher']">
                            <span class="publisher">
                                <xsl:copy-of select="dim:field[@element='publisher']/node()"/>
                            </span>
                            <xsl:text>, </xsl:text>
                        </xsl:if>
                        <span class="date">
                            <xsl:value-of select="substring(dim:field[@element='date' and 
                                @qualifier='created']/node(),1,10)"/>
                        </span>
                        <xsl:text>)</xsl:text>
                    </span>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
    
    <!--Generate the info about the item from the metadata section -->
    <xsl:template match="dim:dim" mode="itemSummaryView-DIM">
        <table class="ds-includeSet-table">
            <!--
                <tr class="ds-table-row odd">
                <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-preview</i18n:text>:</span></td>
                <td>
                <xsl:choose>
                <xsl:when test="mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']">
                <a class="image-link">
                <xsl:attribute name="href"><xsl:value-of select="@OBJID"/></xsl:attribute>
                <img alt="Thumbnail">
                <xsl:attribute name="src">
                <xsl:value-of select="mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']/
                mets:file/mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                </xsl:attribute>
                </img>
                </a>
                </xsl:when>
                <xsl:otherwise>
                <i18n:text>xmlui.dri2xhtml.METS-1.0.no-preview</i18n:text>
                </xsl:otherwise>
                </xsl:choose>
                </td>
                </tr>-->
            <tr class="ds-table-row even">
                <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-title</i18n:text>: </span></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="count(dim:field[@element='title'][not(@qualifier)]) &gt; 1">
                            <xsl:for-each select="dim:field[@element='title'][not(@qualifier)]">
                                <xsl:value-of select="./node()"/>
                                <xsl:if test="count(following-sibling::dim:field[@element='title'][not(@qualifier)]) != 0">
                                    <xsl:text>; </xsl:text><br/>
                                </xsl:if>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:when test="count(dim:field[@element='title'][not(@qualifier)]) = 1">
                            <xsl:value-of select="dim:field[@element='title'][not(@qualifier)][1]/node()"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
            <xsl:if test="dim:field[@element='contributor'][@qualifier='author'] or dim:field[@element='creator'] or dim:field[@element='contributor']">
                <tr class="ds-table-row odd">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-author</i18n:text>:</span></td>
                    <td>
                        <xsl:choose>
                            <xsl:when test="dim:field[@element='contributor'][@qualifier='author']">
                                <xsl:for-each select="dim:field[@element='contributor'][@qualifier='author']">
                                    <xsl:copy-of select="node()"/>
                                    <xsl:if test="count(following-sibling::dim:field[@element='contributor'][@qualifier='author']) != 0">
                                        <xsl:text>; </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="dim:field[@element='creator']">
                                <xsl:for-each select="dim:field[@element='creator']">
                                    <xsl:copy-of select="node()"/>
                                    <xsl:if test="count(following-sibling::dim:field[@element='creator']) != 0">
                                        <xsl:text>; </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="dim:field[@element='contributor']">
                                <xsl:for-each select="dim:field[@element='contributor']">
                                    <xsl:copy-of select="node()"/>
                                    <xsl:if test="count(following-sibling::dim:field[@element='contributor']) != 0">
                                        <xsl:text>; </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:otherwise>
                                <i18n:text>xmlui.dri2xhtml.METS-1.0.no-author</i18n:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="dim:field[@element='description' and @qualifier='abstract']">
                <tr class="ds-table-row even">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-abstract</i18n:text>:</span></td>
                    <td>
                        <xsl:if test="count(dim:field[@element='description' and @qualifier='abstract']) &gt; 1">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                        <xsl:for-each select="dim:field[@element='description' and @qualifier='abstract']">
                            <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='description' and @qualifier='abstract']) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:if test="count(dim:field[@element='description' and @qualifier='abstract']) &gt; 1">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="dim:field[@element='description' and not(@qualifier)]">
                <tr class="ds-table-row odd">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-description</i18n:text>:</span></td>
                    <td>
                        <xsl:if test="count(dim:field[@element='description' and not(@qualifier)]) &gt; 1 and not(count(dim:field[@element='description' and @qualifier='abstract']) &gt; 1)">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                        <xsl:for-each select="dim:field[@element='description' and not(@qualifier)]">
                            <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='description' and not(@qualifier)]) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:if test="count(dim:field[@element='description' and not(@qualifier)]) &gt; 1">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                    </td>
                </tr>
            </xsl:if>
            
            <xsl:if test="dim:field[@element='description' and @qualifier='department']">
                <tr class="ds-table-row even">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-department</i18n:text>:</span></td>
                    <td>
                        <xsl:if test="count(dim:field[@element='description' and @qualifier='department']) &gt; 1">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                        <xsl:for-each select="dim:field[@element='description' and @qualifier='department']">
                            <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='description' and @qualifier='department']) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:if test="count(dim:field[@element='description' and @qualifier='department']) &gt; 1">
                            <hr class="metadata-seperator"/>
                        </xsl:if>
                    </td>
                </tr>
            </xsl:if>
            
            <xsl:if test="dim:field[@element='identifier' and @qualifier='uri']">
                <tr class="ds-table-row odd">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-uri</i18n:text>:</span></td>
                    <td>
                        <xsl:for-each select="dim:field[@element='identifier' and @qualifier='uri']">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:copy-of select="./node()"/>
                                </xsl:attribute>
                                <xsl:copy-of select="./node()"/>
                            </a>
                            <xsl:if test="count(following-sibling::dim:field[@element='identifier' and @qualifier='uri']) != 0">
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="dim:field[@element='date' and @qualifier='created']">
                <tr class="ds-table-row even">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-date</i18n:text>:</span></td>
                    <td>
                        <xsl:for-each select="dim:field[@element='date' and @qualifier='created']">
                            <xsl:copy-of select="substring(./node(),1,10)"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='date' and 
                                @qualifier='created']) != 0">
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:if>
            
        </table>
    </xsl:template>
    <!--  END all of DIM -->
    

    <!--  Special template to remove the old search box if the TDL filter search one is present  -->
    <xsl:template match="dri:div[@n = 'collection-search'][following-sibling::dri:div[@n = 'collection-filter-search']]">
        <!--  Match the special case and do nothing -->
    </xsl:template> 
    <!--  Special template to remove the old search box if the TDL filter search one is present -->
    <xsl:template match="dri:div[@n = 'community-search'][following-sibling::dri:div[@n = 'community-filter-search']]">
        <!--  Match the special case and do nothing -->
    </xsl:template> 
    
    
</xsl:stylesheet>
