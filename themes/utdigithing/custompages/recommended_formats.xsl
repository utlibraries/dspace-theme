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

	 <xsl:template name="recommended_formatsURI">
			<xsl:text>Recommended File Formats</xsl:text>
	 </xsl:template>
    
    <xsl:template name="recommended_formatsBreadcrumb">
		    <li class="ds-trail-link first-link"><a href="/">Repository Home </a></li><li class="ds-trail-link">Recommended File Formats</li>                
    </xsl:template>
	
    <xsl:template name="recommended_formatsBody">
    	
		 <div class="headwrapper">
		<div class="headwrapper-left-crn"><xsl:text> </xsl:text> </div>
			<h1>
			<div class="ds-div-head">Recommended File Formats</div>
			</h1>
			</div>
			<div class="headerwrapper-bt"><xsl:text> </xsl:text></div>

                    <p><strong>Recommended File Formats for Preservation</strong></p>
                        <p>The UT Digital Repository accepts work in any  digital format; however, submission in a file format listed below is strongly  encouraged.  
                        The formats listed below are considered relatively  stable and therefore facilitate long-term preservation efforts.  These formats exhibit all or many of the  following characteristics: open documentation; support across a range of  software platforms; wide adoption; no compression (or lossless compression); no  embedded files or embedded programs/scripts; and non-proprietary format. 
                            For additional information on the UT Digital  Repository’s preservation strategy, please see the <a href="/policies_preservation">Preservation Policy</a>. </p>
                    
                    <table border="0" cellspacing="0" cellpadding="0">
                        
                        <tr>
                            <td width="283" valign="top"><p><strong>Textual Formats</strong> <br />
                                Acrobat PDF/A<br />
                                Comma-Separated    Values<br />
                                Open Office    Formats<br />
                                Plain Text    (US-ASCII, UTF-8)<br />
                                XML</p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .pdf<br />
                                .csv<br />
                                .odt, .ods,    .odp<br />
                                .txt<br />
                                .xml</p></td>
                        </tr>
                        <tr>
                            <td width="283" valign="top"><p><strong>Image/Graphic Formats</strong><br />
                                JPEG<br />
                                JPEG2000<br />
                                PNG<br />
                                SVG 1.1 (no    Java binding)<br />
                                TIFF</p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .jpg<br />
                                .jp2<br />
                                .png<br />
                                .svg<br />
                                .tif, .tiff</p></td>
                        </tr>
                        <tr>
                            <td width="283" valign="top"><p><strong>Audio Formats</strong><br />
                                AIFF<br />
                                WAVE </p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .aif, .aiff<br />
                                .wav</p></td>
                        </tr>
                        <tr>
                            <td width="283" valign="top"><p><strong>Video Formats</strong><br />
                                AVI    (uncompressed)<br />
                                Motion    JPEG2000</p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .avi<br />
                                .mj2, .mjp2</p></td>
                        </tr>
                    </table>

		<p><strong>File Formats Supported by the UTDR Media Player</strong></p>
		<p>The UTDR Media Player provides immediate access to video and audio by allowing users to play the media directly in the UTDR, rather than having to download the file first. The Media Player only supports the file formats listed below. While these formats are not the preferred format to facilitate long-term preservation, they do facilitate user access. </p>
		 <table border="0" cellspacing="0" cellpadding="0">
                        
                        <tr>
                            <td width="283" valign="top"><p><strong>Video Formats</strong> <br />
                                MPEG 4<br />
                                iTunes video format<br />
                                Flash video<br />
                                Windows Media Video</p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .mp4<br />
                                .m4v<br />
                                .flv<br />
                                .wmv</p></td>
                        </tr>
                        <tr>
                            <td width="283" valign="top"><p><strong>Audio Formats</strong><br />
                                MPEG 3<br />
                                iTunes audio format<br />
                                Windows Media Audio</p></td>
                            <td width="174" valign="top"><p><strong>File Extensions</strong> <br />
                                .mp3<br />
                                .m4a<br />
                                .wma</p></td>
                        </tr>
		</table>

    </xsl:template>
 
</xsl:stylesheet>
