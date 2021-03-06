<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: custompages.xsl includes templates 
for the URI, Breadcrumb, and Body.

Includes: None 

Notes: Assumes the proper XSL is included in
the main theme XSL.	    
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

	 <xsl:template name="customURI">
		<xsl:variable name="page_title" select="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='title']" />
			<title>
				<xsl:choose>
                    <xsl:when test="not($page_title)">
                        <xsl:text>  </xsl:text>
                    </xsl:when>
						            
									<!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='about'">
                        <!-- custom content for url 'help' -->
                			<xsl:call-template name="aboutURI" />
                	  </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='glossary'">
                        <xsl:call-template name="glossaryURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='help'">
                        <!-- custom content for url 'help' -->
                			<xsl:call-template name="helpURI" />
                    </xsl:when> 
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='faqs'">
                        <xsl:call-template name="faqsURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies'">
                        <xsl:call-template name="policiesURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_services'">
                        <xsl:call-template name="policies_servicesURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_submission'">
                        <xsl:call-template name="policies_submissionURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_collections'">
                        <xsl:call-template name="policies_collectionsURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_metadata'">
                        <xsl:call-template name="policies_metadataURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_copyright'">
                        <xsl:call-template name="policies_copyrightURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_preservation'">
                        <xsl:call-template name="policies_preservationURI" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='recommended_file_formats'">
                        <xsl:call-template name="recommended_formatsURI" />
                    </xsl:when>						            
						                      
                <xsl:otherwise>
                        <xsl:copy-of select="$page_title/node()" />
                    </xsl:otherwise>    		
				</xsl:choose>
			</title>
	 </xsl:template>
    
    <xsl:template name="customBreadcrumb">
		          <xsl:choose>
                    <xsl:when test="count(/dri:document/dri:meta/dri:pageMeta/dri:trail) = 0">
                        <li class="ds-trail-link first-link"> - </li>
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='about'">
                    		<xsl:call-template name="aboutBreadcrumb" />   
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='glossary'">
                    		<xsl:call-template name="glossaryBreadcrumb" />
                    </xsl:when>
                    
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='help'">
                        <xsl:call-template name="helpBreadcrumb" />
                    </xsl:when>

                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='faqs'">
                        <xsl:call-template name="faqsBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies'">
                         <xsl:call-template name="policiesBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_services'">
                       <xsl:call-template name="policies_servicesBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_submission'">
                    		<xsl:call-template name="policies_submissionBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_collections'">
								<xsl:call-template name="policies_collectionsBreadcrumb" />                    
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_metadata'">
                    		<xsl:call-template name="policies_metadataBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_copyright'">
                    		<xsl:call-template name="policies_copyrightBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_preservation'">
                    		<xsl:call-template name="policies_preservationBreadcrumb" />
                    </xsl:when>
                    <!-- Check for the custom pages -->
                    <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='recommended_file_formats'">
                    		<xsl:call-template name="recommended_formatsBreadcrumb" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select="/dri:document/dri:meta/dri:pageMeta/dri:trail"/>
                    </xsl:otherwise>
                </xsl:choose>
		          
		            		
	 </xsl:template>
	
    <xsl:template name="customBody">
     
		<xsl:choose>
	
       <!-- Check for the custom pages -->
       <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='login'">
         <!-- custom content for url 'login' -->
			<div class="headwrapper">
			<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1><div class="ds-div-head">Choose a Login Method</div></h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
			<div id="aspect_eperson_LoginChooser_div_login-chooser" class="ds-static-div">
			<p class="ds-paragraph">Log in via:</p>
			<ul id="aspect_eperson_LoginChooser_list_login-options" class="ds-simple-list">
			<li>              
			<a href="/ldap-login" class="">Login with UT EID</a>
			</li>  
			<li>
			<a href="/password-login" class="">Non-UT Login</a>
			</li>
			</ul>
			</div>
		</xsl:when>

		 <!-- Check for the custom pages -->
       <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='password-login'">
         <!-- custom content for url 'login' -->
         		<div class="headwrapper">
			<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1><div class="ds-div-head">Sign in to the Repository</div></h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>
			<form id="aspect_eperson_PasswordLogin_div_login" class="ds-interactive-div primary" action="/password-login" method="post" onsubmit="javascript:tSubmit(this);">
			<fieldset id="aspect_eperson_PasswordLogin_list_password-login" class="ds-form-list">
			<ol>
			<li class="ds-form-item">
			<label class="ds-form-label" for="aspect_eperson_PasswordLogin_field_login_email"><i18n:text catalogue="default">xmlui.EPerson.PasswordLogin.email_address</i18n:text> </label>
			<div class="ds-form-content">
			<input id="aspect_eperson_PasswordLogin_field_login_email" class="ds-text-field" name="login_email" type="text" value="" />
			</div>
			</li>
			<li class="ds-form-item">
			<label class="ds-form-label" for="aspect_eperson_PasswordLogin_field_login_password"><i18n:text catalogue="default">xmlui.EPerson.PasswordLogin.password</i18n:text> </label>
			<div class="ds-form-content">
			<input id="aspect_eperson_PasswordLogin_field_login_password" class="ds-password-field" name="login_password" type="password" value="" />
			</div>
			</li>
			<li id="aspect_eperson_PasswordLogin_item_login-in" class="ds-form-item last">
			<div class="ds-form-content"><input id="aspect_eperson_PasswordLogin_field_submit" class="ds-button-field" name="submit" type="submit" value="Sign in" /></div>
			</li>
			</ol>
			</fieldset>
			</form>
       </xsl:when>

                <!-- Check for the custom pages -->
                <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='about'">
                    <!-- custom content for url 'about' -->
			<xsl:call-template name="aboutBody" />
                </xsl:when>
                
                <xsl:when 
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='faqs'">
                    <!-- custom content for url 'faq' -->
                    <xsl:call-template name="faqsBody" />
                </xsl:when>
                
                <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='contact'">
                    <!-- custom content for url 'contact' -->
                    <xsl:call-template name="contactBody" />
                </xsl:when> 
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies'">
                    <!-- custom content for url 'policies' -->
                    <xsl:call-template name="policiesBody" />
                </xsl:when>
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_services'">
                    <!-- custom content for url 'policies services' -->
                     <xsl:call-template name="policies_servicesBody" />
                </xsl:when> 

                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_submission'">
                    <!-- custom content for url 'policies_submission' -->
                    <xsl:call-template name="policies_submissionBody" />
                </xsl:when> 
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_collections'">
                    <!-- custom content for url 'policies_collections' -->
                    <xsl:call-template name="policies_collectionsBody" />
                </xsl:when> 
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_metadata'">
                    <!-- custom content for url 'policies_metadata' -->
                    <xsl:call-template name="policies_metadataBody" />
                </xsl:when> 
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_copyright'">
                    <!-- custom content for url 'policies_copyright' -->
                    <xsl:call-template name="policies_copyrightBody" />
                </xsl:when> 
                
                <xsl:when     
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='policies_preservation'">
                    <!-- custom content for url 'policies preservation' -->
                    <xsl:call-template name="policies_preservationBody" />
                </xsl:when>
                
                <xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='recommended_file_formats'">
                    <!-- custom content for url 'policies services' -->
                    <xsl:call-template name="recommended_formatsBody" />
                </xsl:when>
                
                <xsl:when
                    test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='glossary'">
                    <!-- custom content for url 'faq' --> 
                    <xsl:call-template name="glossaryBody" />
                </xsl:when> 

					<xsl:when test="/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='request'][@qualifier='URI']='help'">
                <!-- custom content for url 'help' -->
                <xsl:call-template name="helpBody" />
					</xsl:when>
                
                <!-- Otherwise use default handling of body -->
                <xsl:otherwise>
                    <xsl:apply-templates />
                </xsl:otherwise>
            </xsl:choose>              

    </xsl:template>
 
</xsl:stylesheet>
