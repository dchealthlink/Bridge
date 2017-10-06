<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../Consume_APTCReq.wsdl"/>
      <rootElement name="APTCResponse" namespace="http://aptc.dsh.cms.gov/exchange/1.0"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../Consume_APTCReq.wsdl"/>
      <rootElement name="APTCResponse" namespace="http://aptc.dsh.cms.gov/exchange/1.0"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [WED FEB 22 11:52:47 EST 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:ns0="http://hix.cms.gov/0.1/hix-core"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/SOA_APP/Haven_APTCService/Consume_APTCReq"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://niem.gov/niem/niem-core/2.0"
                xmlns:ns3="http://aptc.dsh.cms.gov/extension/1.0"
                xmlns:ns4="http://niem.gov/niem/appinfo/2.1"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns5="http://niem.gov/niem/appinfo/2.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns1="http://niem.gov/niem/structures/2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:imp1="http://aptc.dsh.cms.gov/exchange/1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns6="http://hix.cms.gov/0.1/hix-ee"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:ns7="http://niem.gov/niem/proxy/xsd/2.0"
                exclude-result-prefixes="xsl xsi ns0 xsd tns plt ns2 ns3 ns4 pc ns5 ns1 imp1 wsdl jca ns6 ns7 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
  <xsl:template match="/">
    <imp1:APTCResponse>
      <xsl:if test="/imp1:APTCResponse/@ns1:id">
        <xsl:attribute name="ns1:id">
          <xsl:value-of select="/imp1:APTCResponse/@ns1:id"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="/imp1:APTCResponse/@ns1:metadata">
        <xsl:attribute name="ns1:metadata">
          <xsl:value-of select="/imp1:APTCResponse/@ns1:metadata"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="/imp1:APTCResponse/@ns1:linkMetadata">
        <xsl:attribute name="ns1:linkMetadata">
          <xsl:value-of select="/imp1:APTCResponse/@ns1:linkMetadata"/>
        </xsl:attribute>
      </xsl:if>
      <ns3:RequestNumber>
        <xsl:value-of select="/imp1:APTCResponse/ns3:RequestNumber"/>
      </ns3:RequestNumber>
      <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse">
        <ns3:IRSResponse>
          <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/@ns1:id">
            <xsl:attribute name="ns1:id">
              <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/@ns1:id"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/@ns1:metadata">
            <xsl:attribute name="ns1:metadata">
              <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/@ns1:metadata"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/@ns1:linkMetadata">
            <xsl:attribute name="ns1:linkMetadata">
              <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/@ns1:linkMetadata"/>
            </xsl:attribute>
          </xsl:if>
          <ns0:RequestID>
            <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns0:RequestID"/>
          </ns0:RequestID>
          <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC">
            <ns6:APTC>
              <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:id">
                <xsl:attribute name="ns1:id">
                  <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:metadata">
                <xsl:attribute name="ns1:metadata">
                  <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:metadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:linkMetadata">
                <xsl:attribute name="ns1:linkMetadata">
                  <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/@ns1:linkMetadata"/>
                </xsl:attribute>
              </xsl:if>
              <ns6:APTCMaximumAmount>
                <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/ns6:APTCMaximumAmount"/>
              </ns6:APTCMaximumAmount>
              <ns6:APTCRemainingBHCAmount>
                <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns6:APTC/ns6:APTCRemainingBHCAmount"/>
              </ns6:APTCRemainingBHCAmount>
            </ns6:APTC>
          </xsl:if>
          <ns3:SystemCode>
            <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:id">
              <xsl:attribute name="ns1:id">
                <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:id"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:metadata">
              <xsl:attribute name="ns1:metadata">
                <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:metadata"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:if test="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:linkMetadata">
              <xsl:attribute name="ns1:linkMetadata">
                <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode/@ns1:linkMetadata"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="/imp1:APTCResponse/ns3:IRSResponse/ns3:SystemCode"/>
          </ns3:SystemCode>
        </ns3:IRSResponse>
      </xsl:if>
      <xsl:for-each select="/imp1:APTCResponse/ns3:ErrorMessageDetail">
        <ns3:ErrorMessageDetail>
          <xsl:if test="@ns1:id">
            <xsl:attribute name="ns1:id">
              <xsl:value-of select="@ns1:id"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="@ns1:metadata">
            <xsl:attribute name="ns1:metadata">
              <xsl:value-of select="@ns1:metadata"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:if test="@ns1:linkMetadata">
            <xsl:attribute name="ns1:linkMetadata">
              <xsl:value-of select="@ns1:linkMetadata"/>
            </xsl:attribute>
          </xsl:if>
          <ns0:ResponseMetadata>
            <xsl:if test="ns0:ResponseMetadata/@ns1:id">
              <xsl:attribute name="ns1:id">
                <xsl:value-of select="ns0:ResponseMetadata/@ns1:id"/>
              </xsl:attribute>
            </xsl:if>
            <ns0:ResponseCode>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:id">
                <xsl:attribute name="ns1:id">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:metadata">
                <xsl:attribute name="ns1:metadata">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:metadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:linkMetadata">
                <xsl:attribute name="ns1:linkMetadata">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseCode/@ns1:linkMetadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseCode"/>
            </ns0:ResponseCode>
            <ns0:ResponseDescriptionText>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:id">
                <xsl:attribute name="ns1:id">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:metadata">
                <xsl:attribute name="ns1:metadata">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:metadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:linkMetadata">
                <xsl:attribute name="ns1:linkMetadata">
                  <xsl:value-of select="ns0:ResponseMetadata/ns0:ResponseDescriptionText/@ns1:linkMetadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="translate(ns0:ResponseMetadata/ns0:ResponseDescriptionText,&quot;'&quot;,&quot;&quot;)"/>
            </ns0:ResponseDescriptionText>
            <xsl:if test="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText">
              <ns0:TDSResponseDescriptionText>
                <xsl:if test="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:id">
                  <xsl:attribute name="ns1:id">
                    <xsl:value-of select="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:id"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:metadata">
                  <xsl:attribute name="ns1:metadata">
                    <xsl:value-of select="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:metadata"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:if test="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:linkMetadata">
                  <xsl:attribute name="ns1:linkMetadata">
                    <xsl:value-of select="ns0:ResponseMetadata/ns0:TDSResponseDescriptionText/@ns1:linkMetadata"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="translate(ns0:ResponseMetadata/ns0:TDSResponseDescriptionText,&quot;'&quot;,&quot;&quot;)"/>
              </ns0:TDSResponseDescriptionText>
            </xsl:if>
          </ns0:ResponseMetadata>
          <xsl:if test="ns3:XPathContent">
            <ns3:XPathContent>
              <xsl:if test="ns3:XPathContent/@ns1:id">
                <xsl:attribute name="ns1:id">
                  <xsl:value-of select="ns3:XPathContent/@ns1:id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns3:XPathContent/@ns1:metadata">
                <xsl:attribute name="ns1:metadata">
                  <xsl:value-of select="ns3:XPathContent/@ns1:metadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:if test="ns3:XPathContent/@ns1:linkMetadata">
                <xsl:attribute name="ns1:linkMetadata">
                  <xsl:value-of select="ns3:XPathContent/@ns1:linkMetadata"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="ns3:XPathContent"/>
            </ns3:XPathContent>
          </xsl:if>
        </ns3:ErrorMessageDetail>
      </xsl:for-each>
    </imp1:APTCResponse>
  </xsl:template>
</xsl:stylesheet>
