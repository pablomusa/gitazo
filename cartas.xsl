<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
          <html>
            <head>
              <title>Las cartas de los Titanes</title>            
              <link rel="stylesheet" type="text/css" href="cartas.css" />
              <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
              <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
              
            </head>
            <body>
                <h1>Titanes</h1>
                
                <xsl:for-each select="/personajes/personaje">
                    <xsl:sort select="pGanadas" data-type="number" order="descending"/>
                    <xsl:call-template name="carta"/>
                </xsl:for-each>
                <script src="js/gitazo.js"></script> 
            </body>
            </html>
    </xsl:template>
    

    <xsl:template name="carta">
        <div class="carta">
            <div class="imagen">
            
                <!-- quien se anima crear un enlace con el atributo
                audio utilizando como base de click la imagen del titan?-->
                
                <img >                
                  <xsl:attribute name="src">
                    img/<xsl:value-of select="imagen"/>
                  </xsl:attribute>                 
                </img>
                
            </div>
            
            
            <div class="datos">
            <h2>
            <xsl:value-of select="nombre"/>
            </h2>
            <p><xsl:value-of select="descripcion"/></p>
            
            <table cellpading="0" cellspacing="0">
                <tr class="row">
                    <td class="col1">Edad</td>
                    <td class="col2"><xsl:value-of select="edad"/> años</td>
                </tr>
                 <tr class="row">
                    <td class="col1">Altura</td>
                    <td class="col2"><xsl:value-of select="altura"/> mts</td>
                </tr>
                <tr class="row">
                    <td class="col1">peso</td>
                    <td class="col2"><xsl:value-of select="peso"/> kg</td>
                </tr>
                <tr class="row">
                    <td class="col1">peleas ganadas</td>
                    <td class="col2"><xsl:value-of select="pGanadas"/></td>
                </tr>
                <tr class="row">
                    <td class="col1">peleas perdidas</td>
                    <td class="col2"><xsl:value-of select="pPerdidas"/></td>
                </tr>
            </table>
            
            </div>
            
            
            
        </div>
    </xsl:template>
    
    
</xsl:stylesheet>
