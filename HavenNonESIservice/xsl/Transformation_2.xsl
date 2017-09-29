<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReceiveRequestFromHaven.wsdl"/>
      <rootElement name="VerifyNonESIMECResponse" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../ReceiveRequestFromHaven.wsdl"/>
      <rootElement name="VerifyNonESIMECResponse" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [THU OCT 20 13:18:20 EDT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:ns1="http://niem.gov/niem/niem-core/2.0/ESB/V1"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns5="http://niem.gov/niem/structures/2.0/ESB/V1"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns3="http://niem.gov/niem/fbi/2.0/ESB/V1"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Test/HavenNonESIservice/ReceiveRequestFromHaven"
                xmlns:ns2="http://niem.gov/niem/usps_states/2.0/ESB/V1"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns4="http://niem.gov/niem/proxy/xsd/2.0/ESB/V1"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://niem.gov/niem/appinfo/2.0/ESB/V1"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:imp1="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsl xsi ns1 xsd plt pc ns5 ns3 tns ns2 ns4 wsdl ns0 jca imp1 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
  <xsl:template match="/">
    <imp1:VerifyNonESIMECResponse>
      <imp1:ResponseMetadata>
        <imp1:ResponseCode>
          <xsl:value-of select="/imp1:VerifyNonESIMECResponse/imp1:ResponseMetadata/imp1:ResponseCode"/>
        </imp1:ResponseCode>
        <imp1:ResponseDescriptionText>
          <xsl:value-of select="/imp1:VerifyNonESIMECResponse/imp1:ResponseMetadata/imp1:ResponseDescriptionText"/>
        </imp1:ResponseDescriptionText>
        <imp1:TDSResponseDescriptionText>
          <xsl:value-of select="/imp1:VerifyNonESIMECResponse/imp1:ResponseMetadata/imp1:TDSResponseDescriptionText"/>
        </imp1:TDSResponseDescriptionText>
      </imp1:ResponseMetadata>
      <imp1:HavenID>
        <xsl:value-of select="/imp1:VerifyNonESIMECResponse/imp1:HavenID"/>
      </imp1:HavenID>
      <imp1:RequestNumber>
        <xsl:value-of select="/imp1:VerifyNonESIMECResponse/imp1:RequestNumber"/>
      </imp1:RequestNumber>
    </imp1:VerifyNonESIMECResponse>
  </xsl:template>
</xsl:stylesheet>
