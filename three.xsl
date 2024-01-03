<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/class">
    <html>
        <head>
            <title>Three.xsl</title>
            <style>
                body{
                    background-color:black;
                    color:white;
                }

                table{
                   margin-left : 300px;
                }
            </style>
        </head>
        <body><br/><br/>
            <table border="2" cellspacing="15px" cellpadding="15px">
                <tr>
                    <th bgcolor="green" colspan="4">ABOUT CLASS</th>
                </tr>
                <tr>
                    <th>NAME</th>
                    <th>AGE</th>
                    <th>NUMBER</th>
                    <th>GRADE</th>
                </tr>
    
                <xsl:for-each select="student">
                    <tr>
                        <td><xsl:value-of select="name"></xsl:value-of></td>
                        <td><xsl:value-of select="age"></xsl:value-of></td>
                        <td><xsl:value-of select="number"></xsl:value-of></td>
                        <td><xsl:value-of select="grade"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>