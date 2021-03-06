<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : newstylesheet.xsl
    Created on : 14 de mayo de 2017, 14:15
    Author     : Jordi
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <header class="col-12 col-12m col-0s">
            <nav id="menuid"  class="col-12 col-12m col-0s" style="display: inline-block;">
                <ul class="col-12 col-12m col-12s">
                    <li class="menu col-3 col-3m col-12s">
                        <a href="index.html">
                            <i class="fa fa-home fa-fw" aria-hidden="true"></i>Inicio</a>
                    </li>
                    <li class="menu col-3 col-3m col-12s">
                        <a href="anime.html">Anime</a>
                    </li>
                    <li  class="menu col-3 col-3m col-12s">
                        <a href="noticias.html">Noticias</a>
                    </li>
                    <li  class="menu col-3 col-3m col-12s">
                        <a href="contacto.html">
                            <i class="fa fa-user fa-fw" aria-hidden="true"></i>Contacto</a>
                    </li>
                </ul>
            </nav>
        </header>
        <header class="col-0 col-0m col-12s">
            <nav id="movilNav" class="col-3s" style="display: inline-block;">
                <ul  class="col-0 col-0m col-12s" id="listaMovil">
                    <li>
                        <a>
                            <i class="fa fa-bars fa-fw" aria-hidden="true"></i>
                        </a>
                        <ul class="col-0 col-0m col-12s">
                            <li class="menu col-0 col-0m col-12s">
                                <a href="index.html">
                                    <i class="fa fa-home fa-fw" aria-hidden="true"></i>
                                </a>
                            </li>
                            <li class="menu col-0 col-0m col-12s">
                                <a href="anime.html">Anime</a>
                            </li>
                            <li  class="menu col-0 col-0m col-12s">
                                <a href="noticias.html">Noticias</a>
                            </li>
                            <li  class="menu col-0 col-0m col-12s">
                                <a href="contacto.html">
                                    <i class="fa fa-user fa-fw" aria-hidden="true"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>
        <main id="mainid" class="col-9 col-12m col-12s" style=" ">               
            <xsl:for-each select="rss/channel/item">
                <div class="articulo col-3 col-6m col-12s" style=" display: inline-block">
                    <xsl:element name="a">
                        <xsl:attribute name="class">
                            link
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="link"/>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            _blank
                        </xsl:attribute>
                        <div class="contenedor-imagen">
                            <img class="articulo-imagen">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="image"/>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="title"/>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="articulo-caja col-12 col-12m col-12s">
                            <p class="articulo-titulo">
                                <xsl:value-of select="title"/>
                            </p>
                        </div>
                    </xsl:element>
                </div>
            </xsl:for-each>
        </main>  
        <footer class="col-12 col-12m col-12s">
            <div class="col-1 col-4m col-4s" id="footerlist">
                <ul>
                    <li>
                        <a href="#facebook" target="_blank">
                            <i style=" color: #3b5998" class="fa fa-facebook-square fa-fw" aria-hidden="true"></i>facebook</a>
                    </li>
                    <li>
                        <a href="#twitter" target="_blank">
                            <i style=" color: #1DA1F2" class="fa fa-twitter-square fa-fw" aria-hidden="true"></i>twitter</a>
                    </li>
                    <li>
                        <a href="#steam" target="_blank">
                            <i style=" color: #171a21" class="fa fa-steam-square fa-fw" aria-hidden="true"></i>steam</a>
                    </li>
                    <li>
                        <a href="#youtube" target="_blank">
                            <i style=" color: #cc181e" class="fa fa-youtube-play fa-fw" aria-hidden="true"></i>youtube</a>
                    </li>
                </ul>
            </div>
        </footer>
    </xsl:template>

</xsl:stylesheet>
