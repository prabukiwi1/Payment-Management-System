<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:template match="/">
      <html>
         <head>
            <h1 style="text-align:center">Payment Details</h1>
         </head>
         <body>
            <table border="2" align="center">
               <tr>
                  <th>Details</th>
                  <th>Quantity</th>
                  <th>Price</th>
                  <th>Payment-status</th>
                  <th>Duration</th>
                  <th>date</th>
               </tr>
                <xsl:for-each select = "global/order-items">

                    <tr>
                        <td><xsl:value-of select= "details"/></td>
                        <td><xsl:value-of select= "quantity"/></td>
                        <td><xsl:value-of select= "price"/></td>
                        <td><xsl:value-of select= "payment-status"/></td>
                        <td><xsl:value-of select= "duration"/></td>
                        <td><xsl:value-of select= "date"/></td>
                    </tr>
                </xsl:for-each>
            </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>