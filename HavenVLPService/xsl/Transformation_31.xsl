<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Test/HavenVLPService/ConsumeMessageFromVLPQueue" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:imp1="http://vlp.ee.sim.dsh.cms.hhs.gov/ESB/V1" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd plt tns pc wsdl jca imp1 mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
   <xsl:template match="/">
      <imp1:verifyLawfulPresenceOutput>
         <imp1:responseMetadata>
            <imp1:responseCode>
               <xsl:value-of select="translate(/imp1:verifyLawfulPresenceOutput/imp1:responseMetadata/imp1:responseCode,&quot;'&quot;,&quot;&quot;)"/>
            </imp1:responseCode>
         </imp1:responseMetadata>
      </imp1:verifyLawfulPresenceOutput>
   </xsl:template>
</xsl:stylesheet>
