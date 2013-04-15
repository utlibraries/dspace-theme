<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: DIM-Handler.xsl overrides templates in
the dri2xhtml DIM-Handler library.

Includes: None

Notes: Library overlays should be included in all other UTDR Main XSL theme page. 
Example of include: <xsl:import href="/themes/utdigithing/DIM-Handler.xsl" />	    
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

    <!-- Hide Simple community viewer on community matches -->
   <xsl:template match="dri:body/dri:div/dri:div/dri:referenceSet[@id='aspect.artifactbrowser.CommunityViewer.referenceSet.community-view']">

    </xsl:template>


    <!-- A community rendered in the summaryList pattern. Encountered on the community-list and on the front page. -->
    <xsl:template name="communitySummaryList-DIM">
        <xsl:variable name="data" select="./mets:dmdSec/mets:mdWrap/mets:xmlData/dim:dim"/>
        <span class="ListPlus" style="display:none;">[+] </span>
        <span class="ListMinus" style="display:none;">[-] </span> 
        <span class="bold">
            <a href="{@OBJID}" class="communitySummaryListAnchorDIM">
                    <xsl:choose>
                            <xsl:when test="string-length($data/dim:field[@element='title'][1]) &gt; 0">
                                <xsl:value-of select="$data/dim:field[@element='title'][1]"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <i18n:text>xmlui.dri2xhtml.METS-1.0.no-title</i18n:text>
                            </xsl:otherwise>
                    </xsl:choose>
            </a>
        </span>
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
			    <xsl:for-each select="dim:field[@element='publisher']">
				<span class="publisher">
                                <xsl:copy-of select="node()"/>
				</span>
				<xsl:text>, </xsl:text>
			    </xsl:for-each>
			    </xsl:if>
                        <span class="date">
                            <!-- We do not want to the original trimmed value, so comment it out -->
                            <!--<xsl:value-of select="substring(dim:field[@element='date' and @qualifier='created']/node(),1,10)"/>-->
				<xsl:value-of select="dim:field[@element='date' and @qualifier='created']/node()"/>
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
                                <!--<xsl:copy-of select="node()"/>-->
                                        <a>
                                        <xsl:attribute name="href"><xsl:text>/browse?type=author&amp;value=</xsl:text>
                                        <xsl:copy-of select="./node()"/>
                                        </xsl:attribute>
                                        <xsl:copy-of select="./node()"/>
                                        </a>
                                    <xsl:if test="count(following-sibling::dim:field[@element='contributor'][@qualifier='author']) != 0">
                                        <xsl:text>; </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="dim:field[@element='creator']">
                                <xsl:for-each select="dim:field[@element='creator']">
                                <!--<xsl:copy-of select="node()"/>-->
                                        <a>
                                        <xsl:attribute name="href"><xsl:text>/browse?type=author&amp;value=</xsl:text>
                                        <xsl:copy-of select="./node()"/>
                                        </xsl:attribute>
                                        <xsl:copy-of select="./node()"/>
                                        </a>
                                    <xsl:if test="count(following-sibling::dim:field[@element='creator']) != 0">
                                        <xsl:text>; </xsl:text>
                                    </xsl:if>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="dim:field[@element='contributor']">
                                <xsl:for-each select="dim:field[@element='contributor']">
                                <!--<xsl:copy-of select="node()"/>-->
                                        <a>
                                        <xsl:attribute name="href"><xsl:text>/browse?type=author&amp;value=</xsl:text>
                                        <xsl:copy-of select="./node()"/>
                                        </xsl:attribute>
                                        <xsl:copy-of select="./node()"/>
                                        </a>
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
    
                        <xsl:for-each select="dim:field[@element='description' and @qualifier='abstract']">
                            <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='description' and @qualifier='abstract']) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                       
                    </td>
                </tr>
            </xsl:if>
            <xsl:if test="dim:field[@element='description' and not(@qualifier)]">
                <tr class="ds-table-row odd">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-description</i18n:text>:</span></td>
                    <td>
                      
                        <xsl:for-each select="dim:field[@element='description' and not(@qualifier)]">
                            <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='description' and not(@qualifier)]) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                       
                    </td>
                </tr>
            </xsl:if>
            
            <xsl:if test="dim:field[@element='description' and @qualifier='department']">
                <tr class="ds-table-row even">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-department</i18n:text>:</span></td>
                    <td>
                       
                        <xsl:for-each select="dim:field[@element='description' and @qualifier='department']">
                        <!-- <xsl:copy-of select="./node()"/>-->
                                <a>
                                <xsl:attribute name="href"><xsl:text>/browse?type=department&amp;value=</xsl:text>
                                <xsl:copy-of select="./node()"/>
                                </xsl:attribute>
                                <xsl:copy-of select="./node()"/>
                                </a>

                            <xsl:if test="count(following-sibling::dim:field[@element='description' and @qualifier='department']) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                       
                    </td>
                </tr>
            </xsl:if>

      	   <xsl:if test="dim:field[@element='subject']">
                <tr class="ds-table-row odd">
                    <td><span class="bold"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-subject</i18n:text>:</span></td>
                    <td>
                
                        <xsl:for-each select="dim:field[@element='subject']">
                           <!-- <xsl:copy-of select="./node()"/>-->
                                <a>
                                <xsl:attribute name="href"><xsl:text>/browse?type=subject&amp;value=</xsl:text>
                                <xsl:copy-of select="./node()"/>
                                </xsl:attribute> 
                                <xsl:copy-of select="./node()"/>
                                </a>
                                
                            <xsl:if test="count(following-sibling::dim:field[@element='subject']) != 0">
                                <hr class="metadata-seperator"/>
                            </xsl:if>
                        </xsl:for-each>
                            
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
			    <!-- We do not want to the original trimmed value, so comment it out -->
                            <!--<xsl:copy-of select="substring(./node(),1,10)"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='date' and 
                                @qualifier='created']) != 0">-->
			   <xsl:copy-of select="./node()"/>
                            <xsl:if test="count(following-sibling::dim:field[@element='date' and @qualifier='created']) != 0">
                                <br/>
                            </xsl:if>
                        </xsl:for-each>
                    </td>
                </tr>
            </xsl:if>
            
        </table>
    </xsl:template>
    
    <!-- An item rendered in the detailList pattern. Currently Manakin does not have a separate use for 
        detailList on items, so the logic of summaryList is used in its place. --> 
    <xsl:template name="itemDetailList-DIM">
        
        <!-- Generate the info about the item from the metadata section -->
        <xsl:apply-templates select="./mets:dmdSec/mets:mdWrap[@OTHERMDTYPE='DIM']/mets:xmlData/dim:dim"
        mode="itemSummaryList-DIM"/>
        
        <!-- Generate the thunbnail, if present, from the file section -->
        <xsl:apply-templates select="./mets:fileSec" mode="artifact-preview"/>
        
    </xsl:template>
    
     <!-- The block of templates used to render the complete DIM contents of a DRI object -->
    <xsl:template match="dim:dim" mode="itemDetailView-DIM">
		<table class="ds-includeSet-table">
		    <xsl:apply-templates mode="itemDetailView-DIM"/>
		</table>
    </xsl:template>
            
    <xsl:template match="dim:field" mode="itemDetailView-DIM">
        <tr>
            <xsl:attribute name="class">
                <xsl:text>ds-table-row </xsl:text>
                <xsl:if test="(position() div 2 mod 2 = 0)">even </xsl:if>
                <xsl:if test="(position() div 2 mod 2 = 1)">odd </xsl:if>
            </xsl:attribute>
            <td>
            	<xsl:value-of select="./@mdschema"/>
            	<xsl:text>.</xsl:text>
                <xsl:value-of select="./@element"/>
                <xsl:if test="./@qualifier">
                    <xsl:text>.</xsl:text>
                    <xsl:value-of select="./@qualifier"/>
                </xsl:if>
            </td>
            <td><xsl:copy-of select="./node()"/></td>
            <!--<td><xsl:value-of select="./@language"/></td>-->
        </tr>
    </xsl:template>


<!-- Do not display Provenance & link Creator, Subject, and Department -->
    <xsl:template match="dim:field" mode="itemDetailView-DIM">
	<xsl:choose>
			<xsl:when test="./@qualifier='provenance'">
			<xsl:text> </xsl:text>
			</xsl:when>
			<xsl:otherwise>
        <tr>
            <xsl:attribute name="class">
                <xsl:text>ds-table-row </xsl:text>
                <xsl:if test="(position() div 2 mod 2 = 0)">even </xsl:if>
                <xsl:if test="(position() div 2 mod 2 = 1)">odd </xsl:if>
            </xsl:attribute>
            <td>
            	<xsl:value-of select="./@mdschema"/>
            	<xsl:text>.</xsl:text>
                <xsl:value-of select="./@element"/>
                <xsl:if test="./@qualifier">
                    <xsl:text>.</xsl:text>
                    <xsl:value-of select="./@qualifier"/>
                </xsl:if>
            </td>
            <td>
		<xsl:choose>
                <xsl:when test="./@element='subject'">
                        <a> 
                                <xsl:attribute name="href"><xsl:text>/browse?type=subject&amp;value=</xsl:text>
                                <xsl:copy-of select="./node()"/>
                                </xsl:attribute>
                                <xsl:copy-of select="./node()"/>
                        </a>
                </xsl:when>     
                <xsl:when test="./@element='creator'">
                        <a>         
                                <xsl:attribute name="href"><xsl:text>/browse?type=author&amp;value=</xsl:text>
                                <xsl:copy-of select="./node()"/>
                                </xsl:attribute>
                                <xsl:copy-of select="./node()"/>
                        </a>
                </xsl:when>
                <xsl:when test="./@qualifier='department'">
                        <a>
                                <xsl:attribute name="href"><xsl:text>/browse?type=department&amp;value=</xsl:text>
                                <xsl:copy-of select="./node()"/>
                                </xsl:attribute>
                                <xsl:copy-of select="./node()"/>
                        </a>
                </xsl:when>
                <xsl:otherwise>
                        <xsl:copy-of select="./node()"/>
                </xsl:otherwise>
                </xsl:choose> 
	    </td>
            <!--<td><xsl:value-of select="./@language"/></td>-->
        </tr>
	</xsl:otherwise>
	</xsl:choose>
    </xsl:template>

    <!--  END all of DIM -->
  

</xsl:stylesheet>
