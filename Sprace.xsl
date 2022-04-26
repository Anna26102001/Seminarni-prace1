<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
  <body>
  <h2>Dlouhodobe skladovane vyrobky </h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>nazev</th>
        <th>kategorie</th>
        <th>cena_vyrobku_ks</th>
        <th>celkova_cena_sarzi</th>
        <th>trvanlivost</th>
        <th>vyrobce </th>
        <th>stat_puvodu</th>
        <th>podminky_skladovani </th>
        <th>teplota_skladovani </th>
        <th>cena_za_doruceni </th>
        <th>tel_cislo_poskytovatele </th>
        <th>hmotnost_dodavky_kg </th>
        <th>datum_dodani </th>
        <th>cas_dodani </th>
        <th>mnozstvi </th>
      </tr>

      <xsl:for-each select="Potraviny/seznam">
        <xsl:sort select="nazev"/>
       <xsl:if test="trvanlivost &gt; 0">
      <tr>
        <td><xsl:value-of select="nazev"/></td>
        <td><xsl:value-of select="kategorie"/></td>
        <td><xsl:value-of select="cena_vyrobku_ks"/></td>
        <td><xsl:value-of select="celkova_cena_sarzi"/></td>
        <td><xsl:value-of select="trvanlivost"/></td>
        <td><xsl:value-of select="vyrobce"/></td>
        <td><xsl:value-of select="stat_puvodu"/></td>
        <td><xsl:value-of select="podminky_skladovani"/></td>
        <td><xsl:value-of select="teplota_skladovani"/></td>
        <td><xsl:value-of select="cena_za_doruceni"/></td>
        <td><xsl:value-of select="tel_cislo_poskytovatele"/></td>
        <td><xsl:value-of select="hmotnost_dodavky_kg"/></td>
        <td><xsl:value-of select="datum_dodani"/></td>
        <td><xsl:value-of select="cas_dodani"/></td>
        <td><xsl:value-of select="mnozstvi"/></td>
        <xsl:choose>
          <xsl:when test="trvanlivost&gt;'30'">
        <td bgcolor="green">
        <xsl:value-of select="trvanlivost"/></td>
        </xsl:when>
        <xsl:otherwise>
        <td><xsl:value-of select="trvanlivost"/></td>
        </xsl:otherwise>
        </xsl:choose>
      </tr>
      </xsl:if>
      </xsl:for-each>
    </table>
  </body>
  </html>

    </xsl:template>
  </xsl:stylesheet>
