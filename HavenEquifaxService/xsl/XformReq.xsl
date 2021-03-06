<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ConsumeEquifaxReq.wsdl"/>
      <rootElement name="CurrentIncomeRequest" namespace="http://vci.dsh.cms.gov/exchange/1.0/ESB/V1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../VerifyCurrentHouseHoldIncomeFedProxyService.wsdl"/>
      <rootElement name="CurrentIncomeRequest" namespace="http://vci.dsh.cms.gov/exchange/1.0"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [TUE NOV 08 14:57:16 EST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns3="http://niem.gov/niem/niem-core/2.0/ESB/V1"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"
                xmlns:ns8="http://hix.cms.gov/0.1/hix-core"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns10="http://niem.gov/niem/niem-core/2.0"
                xmlns:ns12="http://niem.gov/niem/appinfo/2.1"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns14="http://niem.gov/niem/appinfo/2.0"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/SOA_APP/HavenEquifaxService/ConsumeEquifaxReq"
                xmlns:ns6="http://niem.gov/niem/structures/2.0/ESB/V1"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns9="http://niem.gov/niem/structures/2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns13="http://niem.gov/niem/usps_states/2.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:WL5G3N3="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:ns4="http://niem.gov/niem/usps_states/2.0/ESB/V1"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns5="http://niem.gov/niem/proxy/xsd/2.0/ESB/V1"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns7="http://hix.cms.gov/0.1/hix-core/ESB/V1"
                xmlns:ns0="http://niem.gov/niem/appinfo/2.1/ESB/V1"
                xmlns:ns1="http://niem.gov/niem/appinfo/2.0/ESB/V1"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:exch="http://vci.dsh.cms.gov/exchange/1.0"
                xmlns:ns2="http://vci.dsh.cms.gov/extension/1.0/ESB/V1"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ns11="http://vci.dsh.cms.gov/extension/1.0"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:imp1="http://vci.dsh.cms.gov/exchange/1.0/ESB/V1"
                xmlns:ns15="http://niem.gov/niem/proxy/xsd/2.0"
                exclude-result-prefixes="xsl xsi ns3 xsd plt pc tns ns6 ns4 ns5 wsdl ns7 ns0 ns1 ns2 jca imp1 wsp ns8 ns10 ns12 ns14 ns9 ns13 WL5G3N3 exch ns11 ns15 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
  <xsl:template match="/">
    <exch:CurrentIncomeRequest>
      <xsl:for-each select="/imp1:CurrentIncomeRequest/ns2:Person">
        <ns11:Person>
          <ns10:PersonBirthDate>
            <ns10:Date>
              <xsl:value-of select="ns3:PersonBirthDate/ns3:Date"/>
              <?oracle-xsl-mapper-position ns10:DateRepresentation?>
            </ns10:Date>
          </ns10:PersonBirthDate>
          <ns10:PersonName>
            <ns10:PersonGivenName>
              <xsl:value-of select="ns3:PersonName/ns3:PersonGivenName"/>
            </ns10:PersonGivenName>
            <xsl:if test='ns3:PersonName/ns3:PersonMiddleName != ""'>
              <ns10:PersonMiddleName>
                <xsl:value-of select="ns3:PersonName/ns3:PersonMiddleName"/>
              </ns10:PersonMiddleName>
            </xsl:if>
            <ns10:PersonSurName>
              <xsl:value-of select="ns3:PersonName/ns3:PersonSurName"/>
            </ns10:PersonSurName>
          </ns10:PersonName>
          <ns10:PersonSSNIdentification>
            <xsl:value-of select="ns3:PersonSSNIdentification/ns3:IdentificationID"/>
          </ns10:PersonSSNIdentification>
        </ns11:Person>
      </xsl:for-each>
    </exch:CurrentIncomeRequest>
  </xsl:template>
</xsl:stylesheet>
