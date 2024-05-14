<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html> 
            <body>
             <h2>Notas de Junio</h2>
                <table border="5">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">nombre</th>
                        <th style="text-align:left">apellidos</th>
                        <th style="text-align:left">examen</th>
                        <th style="text-align:left">final</th>
                    </tr>
                    <xsl:for-each select="notas/alumno[@convocatoria='Junio']">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="examen"/></td>
                            <td><xsl:value-of select="final"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>