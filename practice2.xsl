<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/office">
<html>
    <head>
        <title>Bank Employee Table</title>
        <style>
            body{
                background-color : lightcoral;
                color:grey;
                
            }

            table{
                margin-left:400px;
                background-color:orange;
                font-weight:bolder;
                box-shadow:5px 5px 5px 5px black;
                margin-top:100px;
            }

            th{
                color:black;
                font-size:25px ;
            }
        </style>
    </head>
    <body><br/><br/><br/><br/><br/><br/>
        <marquee behaviour="" direction="" bgcolor="black" style="color:white;font-size:30px ;">XSL WORK</marquee>
        <table border="1" cellspacing="0px" cellpadding="20px">
            <tr>
                <th><u>ID</u></th>
                <th><u>NAME</u></th>
                <th><u>SALARY</u></th>
                <th><u>JOINING DATE</u></th>
                <th><u>POSITION</u></th>
            </tr>
            <tr>
                <xsl:for-each select="employee">
                  <tr>
                    <td><xsl:value-of select="id"></xsl:value-of></td>
                    <td><xsl:value-of select="name"></xsl:value-of></td>
                    <td><xsl:value-of select="salary"></xsl:value-of></td>
                    <td><xsl:value-of select="joiningdate"></xsl:value-of></td>
                    <td><xsl:value-of select="position"></xsl:value-of></td>
                  </tr>  
                </xsl:for-each>
            </tr>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>