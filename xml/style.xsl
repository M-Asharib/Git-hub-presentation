<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <table>
                    <thead>
                        <th>ID</th>
                        <th>Author</th>
                        <th>City</th>
                        <th>tittle</th>
                        <th>Price</th>
                        <th>Year</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="Books/Book">
                            <xsl:sort test="author" order="descending" />
                            <xsl:if test="@id &gt;= 3">

                                <tr>
                                    <td>
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="author" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="city" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="tittle" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Price" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="Year" />
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                    </tbody>
                    <!-- <h1>
                        <xsl:value-of select="Books/Book/author" />
                    </h1> -->
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>