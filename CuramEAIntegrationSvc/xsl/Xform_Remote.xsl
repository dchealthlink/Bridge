<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../FaultHandling.wsdl"/>
      <rootElement name="FaultHandling" namespace="http://CRMIntegrationACAPi/terms/1.0"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../FaultHandling.wsdl"/>
      <rootElement name="FaultHandling" namespace="http://CRMIntegrationACAPi/terms/1.0"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.0(build 140919.1004.0161) AT [FRI AUG 11 11:08:52 EDT 2017]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:imp1="http://CRMIntegrationACAPi/terms/1.0"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Haven/CuramEAIntegrationSvc/FaultHandling"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl imp1 xsd plt wsdl jca tns mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
  <xsl:template match="/">
    <imp1:FaultHandling>
      <imp1:ResponseCode>
        <xsl:value-of select="/imp1:FaultHandling/imp1:ResponseCode"/>
      </imp1:ResponseCode>
      <imp1:ResponseSummary>
        <xsl:value-of select="/imp1:FaultHandling/imp1:ResponseSummary"/>
      </imp1:ResponseSummary>
      <imp1:ResponseDetails>
        <xsl:value-of select="/imp1:FaultHandling/imp1:ResponseDetails"/>
      </imp1:ResponseDetails>
    </imp1:FaultHandling>
  </xsl:template>
</xsl:stylesheet>
