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
    </xsl:template>

    <!-- General Handler -->
	 <!-- Build a single row in the bitsreams table of the item view page -->
    <xsl:template match="mets:file">
        <xsl:param name="context" select="."/>
        <div>
            <xsl:attribute name="class">
                <xsl:text>ds-table-row ds-file-items </xsl:text>
                <xsl:if test="(position() mod 2 = 0)">even </xsl:if>
                <xsl:if test="(position() mod 2 = 1)">odd </xsl:if>
            </xsl:attribute>

	  <div class="file-icon"> 
		<xsl:choose>   
                    <xsl:when test="$context/mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']/mets:file[@GROUPID=current()/@GROUPID]">
                        <a class="image-link">
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                            <img alt="Thumbnail" class="file-icon-thumb"> 
                                <xsl:attribute name="src">
                                    <xsl:value-of select="$context/mets:fileSec/mets:fileGrp[@USE='THUMBNAIL']/
                                        mets:file[@GROUPID=current()/@GROUPID]/mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                                </xsl:attribute>
                            </img>    
                        </a>
                    </xsl:when>
		    <xsl:when test="@MIMETYPE='application/pdf'">
                         <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>

                            <img alt="PDF">
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-PDF.png</xsl:text>
                                </xsl:attribute>
                            </img>
			</a>
		    </xsl:when>
		    <xsl:when test="@MIMETYPE='audio/mpeg'">
                         <a>
                            <xsl:attribute name="href">   
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                                
                            <img alt="MP3"> 
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-MP3.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when> 
		    <xsl:when test="@MIMETYPE='video/mp4'">
                         <a>
                            <xsl:attribute name="href">   
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                                
                            <img alt="MP4"> 
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-MP4.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when> 
		    <xsl:when test="@MIMETYPE='audio/wav'">
                         <a>
                            <xsl:attribute name="href">   
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                                
                            <img alt="WAV"> 
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-WAV.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when> 
		    <xsl:when test="@MIMETYPE='image/tiff'">
                         <a>
                            <xsl:attribute name="href">   
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                                
                            <img alt="TIFF"> 
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-TIFF.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when> 
		    <xsl:when test="@MIMETYPE='video/quicktime'">
                         <a>    
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                
                            <img alt="Quicktime">
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-MOV.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when>
		    <xsl:when test="@MIMETYPE='application/msword' or @MIMETYPE='application/vnd.openxmlformats-officedocument.wordprocessingml.document'">
                         <a>
                            <xsl:attribute name="href">   
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>
                                
                            <img alt="word"> 
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-Word.png</xsl:text>
                                </xsl:attribute>
                            </img>
                        </a>
                    </xsl:when> 
                    <xsl:otherwise>
                        <a>    
                            <xsl:attribute name="href">
                                <xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:href"/>
                            </xsl:attribute>  
                            
                            <img alt="File">
				<xsl:attribute name="width"><xsl:text>60</xsl:text> </xsl:attribute>
                                <xsl:attribute name="src">
                                    <xsl:text>/themes/utdigithing/images/asset-icons/icon-default.png</xsl:text>
                                </xsl:attribute>
                            </img> 
                        </a>
                    </xsl:otherwise>
                </xsl:choose> 
	  </div>
	  <div class="file-meta">
	    <xsl:choose>
	      <xsl:when test="mets:FLocat[@LOCTYPE='URL']/@xlink:label != ''">
		<div class="file-meta-description">
	        <i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-description</i18n:text><xsl:text>: </xsl:text>
		<xsl:value-of select="mets:FLocat[@LOCTYPE='URL']/@xlink:label"/>
		</div>
	      </xsl:when>
	      <xsl:otherwise>

	      </xsl:otherwise>
	    </xsl:choose>
	    
	    <div class="file-meta-file">
	    <i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-file</i18n:text><xsl:text>: </xsl:text>
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
            </div>    
            <div class="file-meta-size">
            <!-- File size always comes in bytes and thus needs conversion --> 
		<i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-size</i18n:text><xsl:text>: </xsl:text>
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
            </div>
	    <div class="file-meta-mimetype">
            <!-- Currently format carries forward the mime type. In the original DSpace, this 
                would get resolved to an application via the Bitstream Registry, but we are
                constrained by the capabilities of METS and can't really pass that info through. -->
		<i18n:text>xmlui.dri2xhtml.METS-1.0.item-files-format</i18n:text><xsl:text>: </xsl:text>
		<xsl:value-of select="substring-before(@MIMETYPE,'/')"/>
                <xsl:text>/</xsl:text>
		<xsl:value-of select="substring-after(@MIMETYPE,'/')"/>
            </div>
            <!--<br />
		<xsl:variable name="statsMapURL" select="concat('cocoon:/',/dri:document/dri:meta/dri:pageMeta/dri:metadata[@element='URI'])"/>-->
		<!--Total Downloads:-->         
	  </div>       
	</div>


	<xsl:choose>
            <xsl:when test="@MIMETYPE='video/mp4' or @MIMETYPE='video/x-m4v'">
			<div class="togglemedia">
			<div class="showhide"><i18n:text>xmlui.general.toggle_media_player</i18n:text></div>

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
                        <div class="showhide"><i18n:text>xmlui.general.toggle_media_player</i18n:text></div>
                        
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
			<div class="showhide"><i18n:text>xmlui.general.toggle_media_player</i18n:text></div>
			
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
			<div class="showhide"><i18n:text>xmlui.general.toggle_media_player</i18n:text></div>
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
	
    </xsl:template>

    <!-- End General Handler -->

</xsl:stylesheet>
