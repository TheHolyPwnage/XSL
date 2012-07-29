<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      </head>
      <body>
        <h2>Listy pracowników</h2>

        <table border="1">
          <caption><em>For-each</em></caption>
          <tr bgcolor="#9acd32">
            <th rowspan="2">Imię</th>
            <th rowspan="2">Nazwisko</th>
            <th colspan="2">Osobiste dane</th>
            <th colspan="3">Adres</th>
            <th colspan="2">Kontakt</th>
            <th rowspan="2">Ilość podwładnych</th>
          </tr>
          <tr bgcolor="#9acd32">
            <th>Data urodzenia</th>
            <th>Nazwisko panieńskie matki</th>
            <th>Ulica</th>
            <th>Miasto</th>
            <th>Kod pocztowy</th>
            <th>Numer domowy</th>
            <th>Komórka</th>
          </tr>
          <xsl:for-each select="employees/employee[@position='CEO']/employees/employee">
            <tr>
              <td><xsl:value-of select="name" /></td>
              <td><xsl:value-of select="surname" /></td>
              <td><xsl:value-of select="personalInformation/birthDate" /></td>
              <td><xsl:value-of select="personalInformation/mothersMaidenName" /></td>
              <td><xsl:value-of select="address/street" /></td>
              <td><xsl:value-of select="address/city" /></td>
              <td><xsl:value-of select="address/postalCode" /></td>
              <td><xsl:value-of select="contact/homePhone" /></td>
              <td><xsl:value-of select="contact/cellPhone" /></td>
              <td><xsl:value-of select="count(employees/employee)" /></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>

