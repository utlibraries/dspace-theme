<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: Structural.xsl overrides templates in
the dri2xhtml structural library.

Includes: None

Notes: Library overlays should be included in all other UTDR Main XSL theme page. 
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

    <xsl:output indent="yes"/>

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
                             <label label="ds-search-form-scope-container">
                                <input id="ds-search-form-scope-container" type="radio" name="scope" value="" checked="checked" >
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
				<br />
                            <label for="ds-search-form-scope-all">
                                <input id="ds-search-form-scope-all" type="radio" name="scope" />
                                <i18n:text>xmlui.dri2xhtml.structural.search</i18n:text>
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
            <h3 class="ds-option-set-head"><i18n:text>xmlui.ArtifactBrowser.Navigation.information</i18n:text></h3>
            <div class="ds-option-set">		
                <ul>
                    <li><a href="/about"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_about</i18n:text></a></li>
                    <li><a href="/contact"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_contact</i18n:text></a></li>
                    <li><a href="/policies"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_policies</i18n:text></a></li>
    		    <li><a href="/faqs#getting_started"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_gettingstarted</i18n:text></a></li>
		    <li><a href="/glossary"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_glossary</i18n:text></a></li>
		    <li><a href="/help"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_help</i18n:text></a></li>
                    <li><a href="/faqs"><i18n:text>xmlui.ArtifactBrowser.Navigation.info_faq</i18n:text></a></li>
                </ul>
            </div>
            
        </div>
    </xsl:template>
    
    


 <!-- The template that applies to lists directly under the options tag that have other lists underneath 
        them. Each list underneath the matched one becomes an option-set and is handled by the appropriate 
        list templates. -->
    <xsl:template match="dri:options/dri:list[dri:list]" priority="4">
        <xsl:apply-templates select="dri:head"/>
        <div>
            <xsl:call-template name="standardAttributes">
                <xsl:with-param name="class">ds-option-set</xsl:with-param>
            </xsl:call-template>
	    <xsl:choose>
		<xsl:when test="*[@n='context']">
			<ul class="ds-options-list">
				<xsl:apply-templates select="*[@n='context']" mode="nested"/>
	    		</ul>
	    		<ul class="ds-options-list">
				<xsl:apply-templates select="*[@n='global']" mode="nested"/>
	    		</ul>

		</xsl:when>
		<xsl:otherwise>
			<ul class="ds-options-list">
			<xsl:apply-templates select="*[not(name()='head')]" mode="nested"/>
	    		</ul>
		</xsl:otherwise>
	    </xsl:choose>
        </div>
    </xsl:template>

    
    <!-- Quick patch to remove empty lists from options -->
    <xsl:template match="dri:options//dri:list[count(child::*)=0]" priority="5" mode="nested">
    </xsl:template>
    <xsl:template match="dri:options//dri:list[count(child::*)=0]" priority="5">
    </xsl:template>





    <!--  Special template to remove the old search box if the TDL filter search one is present  -->
    <xsl:template match="dri:div[@n = 'collection-search'][following-sibling::dri:div[@n = 'collection-filter-search']]">
        <!--  Match the special case and do nothing -->
    </xsl:template> 
    <!--  Special template to remove the old search box if the TDL filter search one is present -->
    <xsl:template match="dri:div[@n = 'community-search'][following-sibling::dri:div[@n = 'community-filter-search']]">
        <!--  Match the special case and do nothing -->
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
    
	<!-- replace submission button test on review page of submission. -->
	<xsl:template match="dri:div[@n='submit-upload']/dri:list[@n='submit-review']/dri:item/dri:field[@n='submit_next'][@type='button']">
		<text><input id="aspect_submission_StepTransformer_field_submit_next" class="ds-button-field" name="submit_next" type="submit" value="Complete Submission" /></text>
    	</xsl:template>
   


<!-- Collection page submit text with added 'submit-a-work' class -->
    <xsl:template match="dri:body/dri:div[@n='collection-home']/dri:div[@n='collection-view']/dri:p[1]">
        <xsl:element name="p">
        <xsl:attribute name="class">
                <xsl:text>ds-paragraph submit-a-work</xsl:text>
        </xsl:attribute>
        <xsl:apply-templates />
        </xsl:element>
    </xsl:template>


<!-- Advanced Search search type drowpdown -->
    <xsl:template match="//dri:body/dri:div[@n='advanced-search']/dri:div[@n='search-query']/
        dri:table[@n='search-query']/dri:row[@role='data']/dri:cell/
        dri:field[@n='field1']">
        <select id="aspect_artifactbrowser_AdvancedSearch_field_field1" class="ds-select-field" name="field1">
        <option value="ANY" selected="selected">Keyword</option>
        <option value="author">Author</option>
        <option value="title">Title</option>
        <option value="abstract">Abstract</option>
        <option value="keyword">Subject</option>
        <option value="department">Department</option>
        <option value="series">Series</option>
        <option value="sponsor">Sponsor</option>
        <option value="identifier">Identifier</option>
        <option value="language">Language (ISO)</option>
        </select>
    </xsl:template>

    <xsl:template match="//dri:body/dri:div[@n='advanced-search']/dri:div[@n='search-query']/
        dri:table[@n='search-query']/dri:row[@role='data']/dri:cell/
        dri:field[@n='field2']">
        <select id="aspect_artifactbrowser_AdvancedSearch_field_field2" class="ds-select-field" name="field2">
        <option value="ANY" selected="selected">Keyword</option>
        <option value="author">Author</option>
        <option value="title">Title</option>
        <option value="abstract">Abstract</option>
        <option value="keyword">Subject</option>
        <option value="department">Department</option>
        <option value="series">Series</option>
        <option value="sponsor">Sponsor</option>
        <option value="identifier">Identifier</option>
        <option value="language">Language (ISO)</option>
        </select>
    </xsl:template>
        
     <xsl:template match="//dri:body/dri:div[@n='advanced-search']/dri:div[@n='search-query']/
        dri:table[@n='search-query']/dri:row[@role='data']/dri:cell/
        dri:field[@n='field3']">
        <select id="aspect_artifactbrowser_AdvancedSearch_field_field3" class="ds-select-field" name="field3">
        <option value="ANY" selected="selected">Keyword</option>
        <option value="author">Author</option>
        <option value="title">Title</option>
        <option value="abstract">Abstract</option>
        <option value="keyword">Subject</option>
        <option value="department">Department</option>
        <option value="series">Series</option>
        <option value="sponsor">Sponsor</option>
        <option value="identifier">Identifier</option>
        <option value="language">Language (ISO)</option>
        </select>
    </xsl:template>

<!-- Curator Training -->
   <xsl:template match="dri:options/dri:list[@n='context']/dri:head">
        <h3 class="ds-option-set-head">Context</h3>
        <div class="ds-option-set curator">

        <ul class="ds-options-list">
        <li>
        <h4 class="ds-sublist-head"><i18n:text>xmlui.administrative.Navigation.context_curator_training</i18n:text></h4>
        <ul class="ds-simple-list">
        <li><a href="/themes/utdigithing/inc/manual.pdf"><i18n:text>xmlui.administrative.Navigation.context_manual_pdf</i18n:text></a></li>
        </ul>
        </li>
        </ul>
        </div>
    </xsl:template>

<!-- Remove the Curation Link for administrators -->
    <!-- Overriding Generic item handling for cases where nothing special needs to be done 
         so that we can remove a link based on it's target
         -->
    <xsl:template match="dri:item" mode="nested">
      <xsl:choose>
        <xsl:when test="dri:xref[@target='/admin/curate']">
        </xsl:when>
        <xsl:otherwise>       
          <li>
              <xsl:apply-templates />
          </li>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:template>
    

<!-- Override display of collection license for administrators -->
        <xsl:template match="dri:div[@n='collection-metadata-edit']/dri:list[@n='metadataList']/
        dri:label/i18n:text[. ='xmlui.administrative.collection.EditCollectionMetadataForm.label_license']">
                <xsl:text> </xsl:text>
        </xsl:template>
        
        <xsl:template match="dri:div[@n='collection-metadata-edit']/dri:list[@n='metadataList']/dri:item/dri:field[@n='license']">
                <xsl:text> </xsl:text>
        </xsl:template>
	
	<xsl:template match="dri:div[@n='create-collection']/dri:list[@n='metadataList']/
	dri:label/i18n:text[. ='xmlui.administrative.collection.EditCollectionMetadataForm.label_license']">
                <xsl:text> </xsl:text>
        </xsl:template>

        <xsl:template match="dri:div[@n='create-collection']/dri:list[@n='metadataList']/dri:item/dri:field[@n='license']">
                <xsl:text> </xsl:text>
        </xsl:template>



<xsl:template name="pick-label">
        <xsl:choose>
            <xsl:when test="dri:field/dri:label">
                <label class="ds-form-label">
                	<xsl:choose>
                		<xsl:when test="./dri:field/@id">
                			<xsl:attribute name="for">
                				<xsl:value-of select="translate(./dri:field/@id,'.','_')"/>
                			</xsl:attribute>
                		</xsl:when>
                		<xsl:otherwise></xsl:otherwise>
                	</xsl:choose>
                    <xsl:apply-templates select="dri:field/dri:label" mode="formComposite"/>
                    <xsl:text>:</xsl:text>
                </label>                
            </xsl:when>
            <xsl:when test="string-length(string(preceding-sibling::*[1][local-name()='label'])) > 0">
                <xsl:choose>
                	<xsl:when test="./dri:field/@id">
                		<label>
		                	<xsl:apply-templates select="preceding-sibling::*[1][local-name()='label']"/>
		                    <xsl:text></xsl:text>
		                </label>
                	</xsl:when>
                	<xsl:otherwise>
                		<span>
		                	<xsl:apply-templates select="preceding-sibling::*[1][local-name()='label']"/>
		                    <xsl:text>:</xsl:text>
		                </span>
                	</xsl:otherwise>
                </xsl:choose>
                
            </xsl:when>
            <xsl:when test="dri:field">
                <xsl:choose>       
	                <xsl:when test="preceding-sibling::*[1][local-name()='label']">
		                <label class="ds-form-label">
		                	<xsl:choose>
		                		<xsl:when test="./dri:field/@id">
		                			<xsl:attribute name="for">
		                				<xsl:value-of select="translate(./dri:field/@id,'.','_')"/>
		                			</xsl:attribute>
		                		</xsl:when>
		                		<xsl:otherwise></xsl:otherwise>
		                	</xsl:choose>
		                    <xsl:apply-templates select="preceding-sibling::*[1][local-name()='label']"/>&#160;
		                </label>
		            </xsl:when>
		            <xsl:otherwise>
		            	<xsl:apply-templates select="preceding-sibling::*[1][local-name()='label']"/>&#160;
		            </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <!-- If the label is empty and the item contains no field, omit the label. This is to 
                    make the text inside the item (since what else but text can be there?) stretch across
                    both columns of the list. -->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template> 
    

</xsl:stylesheet>
