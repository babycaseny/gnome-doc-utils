<?xml version='1.0' encoding='UTF-8'?><!-- -*- indent-tabs-mode: nil -*- -->
<!--
This program is free software; you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation; either version 2 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
details.

You should have received a copy of the GNU Lesser General Public License
along with this program; see the file COPYING.LGPL.  If not, see <http://www.gnu.org/licenses/>.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">

<xsl:output method="text" encoding="utf-8"/>

<xsl:include href="../html/db2html-media.xsl"/>

<xsl:template match="/">
  <xsl:for-each select="//mediaobject">
    <xsl:call-template name="db2html.mediaobject">
      <xsl:with-param name="node" select="."/>
    </xsl:call-template>
  </xsl:for-each>
</xsl:template>

<xsl:template match="imageobjectco">
  <xsl:apply-templates select="imageobject"/>
</xsl:template>

<xsl:template match="imageobject">
  <xsl:call-template name="db2html.imagedata.src">
    <xsl:with-param name="node" select="imagedata"/>
  </xsl:call-template>
  <xsl:text>&#x000A;</xsl:text>
</xsl:template>

</xsl:stylesheet>
