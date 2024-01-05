<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/collection">
<html>
    <head>
        <title>My CD Collection</title>
        <style>
            
        </style>
    </head>
    <body>
        <br/><br/><br/>
        <center>
            <table border="1">
                <tr>
                    <th bgcolor="red" style="color:white;" colspan="2"><center>MY CD COLLECTION</center></th>
                </tr>
                <tr>
                    <th bgcolor="lightgreen"><center><strong>Title</strong></center></th>
                    <th bgcolor="lightgreen"><center><strong>Artist</strong></center></th>
                    
                </tr>
                <tr>
                    <xsl:for-each select="cds">
                      <tr>
                        <td><xsl:value-of select="title"></xsl:value-of></td>
                        <td><xsl:value-of select="artist"></xsl:value-of></td>
                      </tr>  
                    </xsl:for-each>
                </tr>
            </table>
        </center>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>