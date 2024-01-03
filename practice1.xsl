<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/bank">
<html>
    <head>
        <title>Bank Employee Table</title>
        <style>
            body{
                background-color : lightcoral;
                color:brown;
                
            }

            table{
                margin-left:400px;
                background-color:yellow;
                font-weight:bolder;
                box-shadow:5px 5px 5px 5px black;
            }
        </style>
    </head>
    <body>
        <table border="1" cellspacing="15px" cellpadding="25px">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>SALARY</th>
            </tr>
            <tr>
                <xsl:for-each select="employee">
                  <tr>
                    <td><xsl:value-of select="id"></xsl:value-of></td>
                    <td><xsl:value-of select="name"></xsl:value-of></td>
                    <td><xsl:value-of select="salary"></xsl:value-of></td>
                  </tr>  
                </xsl:for-each>
            </tr>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>