<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns1="http://xmlns.oracle.com/dcas/esb/assistancelookup/service/xsd/v1" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenCuramUserLookupCmpService/HavenCuramUserLookupService" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:client="http://xmlns.oracle.com/Haven/HavenCuramUserLookupCmpService/HavenCuramUserLookupABCSImpl" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/HavenCuramUserLookupService" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plnk ns1 ns2 wsdl client plt tns db oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:template match="/">
      <db:InputParameters>
         <xsl:if test="/ns1:assistance_lookup_resquest/ns1:first_name">
            <db:I_FIRST_NAME>
               <xsl:value-of select="/ns1:assistance_lookup_resquest/ns1:first_name"/>
            </db:I_FIRST_NAME>
         </xsl:if>
         <xsl:if test="/ns1:assistance_lookup_resquest/ns1:last_name">
            <db:I_LAST_NAME>
               <xsl:value-of select="/ns1:assistance_lookup_resquest/ns1:last_name"/>
            </db:I_LAST_NAME>
         </xsl:if>
         <xsl:if test="/ns1:assistance_lookup_resquest/ns1:date_of_birth">
            <db:I_DATE_OF_BIRTH>
               <xsl:value-of select="/ns1:assistance_lookup_resquest/ns1:date_of_birth"/>
            </db:I_DATE_OF_BIRTH>
         </xsl:if>
         <xsl:if test="/ns1:assistance_lookup_resquest/ns1:ssn">
            <db:I_SSN>
               <xsl:value-of select="/ns1:assistance_lookup_resquest/ns1:ssn"/>
            </db:I_SSN>
         </xsl:if>
      </db:InputParameters>
   </xsl:template>
</xsl:stylesheet>
