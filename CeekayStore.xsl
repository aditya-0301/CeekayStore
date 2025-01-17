<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:cs="http://www.example.com/ceekaystore">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>CeekayStore Games</title>
            </head>
            <body>
                <h1>CeekayStore Games</h1>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Release Date</th>
                    </tr>
                    <xsl:for-each select="cs:ceekaystore/cs:game">
                        <xsl:sort select="cs:title"/>
                        <tr>
                            <td><xsl:value-of select="cs:title"/></td>
                            <td><xsl:value-of select="cs:genre"/></td>
                            <td><xsl:value-of select="cs:price"/></td>
                            <td><xsl:value-of select="cs:releaseDate"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
