<?xml version="1.0" encoding="UTF-8"?>

<!-- 
Author: Steven Williams

About This Document: General-Handler.xsl overrides templates in
the dri2xhtml General-Handler library.

Includes: None

Notes: Library overlays should be included in all other UTDR Main XSL theme page. 
Example of include: <xsl:import href="/themes/utdigithing/General-Handler.xsl" />	    
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

   
 <!-- Generate the bitstream information from the file section -->
    <xsl:template match="mets:fileGrp[@USE='CONTENT']">
        <xsl:param name="context"/>
        <xsl:param name="primaryBitstream" select="-1"/>
        
        <h2><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-head</i18n:text></h2>
        <table class="ds-table file-list" style="text-align:center;">
            <tr class="ds-table-header-row">
                <th style="width:20%;"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-file</i18n:text></th>
                <th style="width:20%;"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-size</i18n:text></th>
                <th style="width:20%;"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-format</i18n:text></th>
                <th style="width:20%;"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-view</i18n:text></th>
                <th style="width:20%;"><i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-description</i18n:text></th>
            </tr>
            <xsl:choose>
                <!-- If one exists and it's of text/html MIME type, only display the primary bitstream -->
                <xsl:when test="mets:file[@ID=$primaryBitstream]/@MIMETYPE='text/html'">
                    <xsl:apply-templates select="mets:file[@ID=$primaryBitstream]">
                        <xsl:with-param name="context" select="$context"/>
                    </xsl:apply-templates>
                </xsl:when>
                <!-- Otherwise, iterate over and display all of them -->
                <xsl:otherwise>
                    <xsl:apply-templates select="mets:file">
                     	<xsl:sort data-type="number" select="boolean(./@ID=$primaryBitstream)" order="descending" />
                        <xsl:sort select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/> 
                        <xsl:with-param name="context" select="$context"/>
                    </xsl:apply-templates>
                </xsl:otherwise>
            </xsl:choose>
        </table>
    </xsl:template>   

    <!-- General Handler -->
	 <!-- Build a single row in the bitsreams table of the item view page -->
    <xsl:template match="mets:file">
        <xsl:param name="context" select="."/>
        <tr>
            <xsl:attribute name="class">
                <xsl:text>ds-table-row </xsl:text>
                <xsl:if test="(position() mod 2 = 0)">even </xsl:if>
                <xsl:if test="(position() mod 2 = 1)">odd </xsl:if>
            </xsl:attribute>
                    <td colspan="5">
		<table>
		<tr class="ds-table-row">
		<td style="width:18%;">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/>
                    </xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="string-length(mets:FLocat[@LOCTYPE='URL']/@xlink:title) > 50">
                            <xsl:variable name="title_length" select="string-length(mets:FLocat[@LOCTYPE='URL']/@xlink:title)"/>
                            <xsl:value-of select="substring(mets:FLocat[@LOCTYPE='URL']/@xlink:title,1,15)"/>
                            <xsl:text> ... </xsl:text>
                            <xsl:value-of select="substring(mets:FLocat[@LOCTYPE='URL']/@xlink:title,$title_length - 25,$title_length)"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </a>

                
            </td>
            <!-- File size always comes in bytes and thus needs conversion --> 
            <td style="width:18%;" >
                <xsl:choose>
                    <xsl:when test="@SIZE &lt; 1000">
                        <xsl:value-of select="@SIZE"/>
                        <i18n:text>xmlui.dri2xhtml.METS-1.0.size-bytes</i18n:text>
                    </xsl:when>
                    <xsl:when test="@SIZE &lt; 1000000">
                        <xsl:value-of select="substring(string(@SIZE div 1000),1,5)"/>
                        <i18n:text>xmlui.dri2xhtml.METS-1.0.size-kilobytes</i18n:text>
                    </xsl:when>
                    <xsl:when test="@SIZE &lt; 1000000000">
                        <xsl:value-of select="substring(string(@SIZE div 1000000),1,5)"/>
                        <i18n:text>xmlui.dri2xhtml.METS-1.0.size-megabytes</i18n:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="substring(string(@SIZE div 1000000000),1,5)"/>
                        <i18n:text>xmlui.dri2xhtml.METS-1.0.size-gigabytes</i18n:text>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
            <!-- Currently format carries forward the mime type. In the original DSpace, this 
                would get resolved to an application via the Bitstream Registry, but we are
                constrained by the capabilities of METS and can't really pass that info through. -->
            <td  style="width:18%;"><xsl:value-of select="substring-before(@MIMETYPE,'/')"/>
                <xsl:text>/</xsl:text>
		<xsl:value-of select="substring-after(@MIMETYPE,'/')"/>
            </td>
            <td  style="width:18%;">
                <xsl:choose>
                    <xsl:when test="$context/mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']/
                        mets:file[@GROUPID=current()/@GROUPID]">
                        <a class="image-link">
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                            <img alt="Thumbnail">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="$context/mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']/
                                        mets:file[@GROUPID=current()/@GROUPID]/mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when>
                    <xsl:otherwise>
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
			    
                            <i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-viewOpen</i18n:text>
                        </a>
                    </xsl:otherwise>
                </xsl:choose>
	</td>

	        	<td  style="width:18%;">
	            		<xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:label"/>
	        	</td>
                      
            
	</tr>
</table>


<xsl:choose>
            <xsl:when test="@MIMETYPE='video/mp4' or @MIMETYPE='video/x-m4v'">
			<div class="togglemedia">
			<div class="showhide">Toggle Media Player </div>

			<div class="toggle">
			
			<div>
				<xsl:attribute name="id">
				<xsl:value-of select="position()"/>
				</xsl:attribute>
			<a href="http://get.adobe.com/flashplayer">
			To view <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/> please update your version of the Flash Player</a>.</div>
			<script type="text/javascript">
				var s1 = new SWFObject("/themes/utdigithing/inc/player.swf","ply","480","320","9.0.115","#FFFFFF");
				s1.addParam("allowfullscreen","true");
				s1.addParam("allownetworking","all");
				s1.addParam("allowscriptaccess","always");
				s1.addParam("stretching","fill");
				s1.addParam("flashvars","file=<xsl:value-of select="substring-before(mets:FLocat[@LOCTYPE='URL']/@xlink:href,'?')"/>");
				s1.write("<xsl:value-of select="position()"/>");
			</script> 
			</div>
			</div>
            </xsl:when>
	<xsl:when test="@MIMETYPE='video/x-flv'">
                        <div class="togglemedia">
                        <div class="showhide">Toggle Media Player </div>
                        
                        <div class="toggle">
                
                        <div>
                                <xsl:attribute name="id">
                                <xsl:value-of select="position()"/>
                                </xsl:attribute>
                        <a href="http://get.adobe.com/flashplayer">
                        To view <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/> please update your version of the Flash Player</a>.</div>
                        <script type="text/javascript">
                                var s1 = new SWFObject("/themes/utdigithing/inc/player.swf","ply","480","320","9.0.115","#FFFFFF");
                                s1.addParam("allowfullscreen","true");
                                s1.addParam("allownetworking","all");
                                s1.addParam("allowscriptaccess","always");
                                s1.addParam("stretching","fill");
                                s1.addParam("flashvars","file=<xsl:value-of select="substring-before(mets:FLocat[@LOCTYPE='URL']/@xlink:href,'?')"/>");
                                s1.write("<xsl:value-of select="position()"/>");
                        </script>
                        </div>
                        </div>
            </xsl:when>

	     <xsl:when test="@MIMETYPE='audio/x-m4a' or @MIMETYPE='audio/mpeg'">
			<div class="togglemedia">
			<div class="showhide">Toggle Media Player </div>
			
			<div class="toggle">
                        <div>
                                <xsl:attribute name="id">
                                <xsl:value-of select="position()"/>
                                </xsl:attribute>
                        <a href="http://get.adobe.com/flashplayer">
                        To view <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:title"/> please update your version of the Flash Player</a>.</div>
                        <script type="text/javascript">
                                var s1 = new SWFObject("/themes/utdigithing/inc/player.swf","ply","480","20","9.0.115","#FFFFFF");
                                s1.addParam("allowfullscreen","true");
                                s1.addParam("allownetworking","all");
                                s1.addParam("allowscriptaccess","always");
                                s1.addParam("stretching","fill");
                                s1.addParam("flashvars","file=<xsl:value-of select="substring-before(mets:FLocat[@LOCTYPE='URL']/@xlink:href,'?')"/>");
                                s1.write("<xsl:value-of select="position()"/>");
                        </script>
			</div>
			</div>
            </xsl:when>

	    <xsl:when test="@MIMETYPE='audio/x-ms-wma' or @MIMETYPE='video/x-ms-wmv'">
			<div class="togglemedia">
			<div class="showhide">Toggle Media Player </div>
			<div class="toggle">	
			<div>
                                <xsl:attribute name="id">
                                <xsl:value-of select="position()"/>
                                </xsl:attribute>
				<text>download silverlight</text>
			</div>

			<script type="text/javascript">
				var elm = document.getElementById("<xsl:value-of select="position()"/>");
				var src = "/themes/utdigithing/inc/wmvplayer.xaml";
				var cfg = {
					file:"<xsl:value-of select="substring-before(mets:FLocat[@LOCTYPE='URL']/@xlink:href,'?')"/>",
					width:"480",
					height:"320"
				};
				var ply = new jeroenwijering.Player(elm,src,cfg);
			</script>
			</div>
			</div>
            </xsl:when>
	
            <xsl:otherwise>	    
            </xsl:otherwise>
       </xsl:choose>


</td>

	  </tr>
	
    </xsl:template>

    <!-- End General Handler -->



</xsl:stylesheet>
