<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/biblioteca">
    <html>  <!--va una parte fija de html dentro del template-->
    <head>
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    </head>
        <body>
            <h2>Biblioteca</h2>
            <table border ="2">
                <tr>
                    <th>Nombre</th>
                    <th>Codigo</th>
                </tr>
                <xsl:for-each select="productos/libros">
                <xsl:sort select="nombre"/> <!-- los ordena por el nombre -->
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td>
                        <xsl:value-of select="codigo" />
                    </td>
                </tr>
                </xsl:for-each>
                <xsl:for-each select="productos/revista">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td>
                        <xsl:value-of select="codigo" />
                    </td>
                </tr>
                </xsl:for-each>
            </table>
            <h2>Cliente</h2>
            <ul>
                <li><xsl:value-of select="cliente/nombre"/></li>
                <li> DNI: <xsl:value-of select="cliente/dni"/></li>
            </ul>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>
