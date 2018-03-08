<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:client="http://xmlns.oracle.com/Test/HavenPregnancyDetailsCmpService/HavenPregnancyDetailsCmpServiceABCSImpl" xmlns:ns2="https://openhbx.gov/haven/Pregnancyedetails/response" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns3="https://openhbx.gov/haven/Pregnancydetails/spformat" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Test/HavenPregnancyDetailsCmpService/InvokePregnancyDetSP" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns1="https://openhbx.gov/haven/Pregnancydetails/request" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/InvokePregnancyDetSP" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plt client ns2 ns3 tns plnk ns1 wsdl db oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="FormatSPOutput"/>
   <xsl:template match="/">
      <ns2:participant_pregnant>
         <ns2:ResponseCode>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
         </ns2:ResponseCode>
         <ns2:ResponseText>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
         </ns2:ResponseText>
         <ns2:pregnancy>
            <ns2:isPregnancy>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:isPregnancy"/>
            </ns2:isPregnancy>
            <ns2:dueDate>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:dueDate"/>
            </ns2:dueDate>
            <ns2:comments>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:comments"/>
            </ns2:comments>
            <ns2:enrolledOnMedicaidDuringPregnancy>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:enrolledOnMedicaidDuringPregnancy"/>
            </ns2:enrolledOnMedicaidDuringPregnancy>
            <ns2:noOfUnborn>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:noOfUnborn"/>
            </ns2:noOfUnborn>
            <ns2:pregnancyEndDate>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:pregnancyEndDate"/>
            </ns2:pregnancyEndDate>
            <ns2:start_date>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:start_date"/>
            </ns2:start_date>
            <ns2:end_date>
               <xsl:value-of select="$FormatSPOutput/ns3:participant_pregnant/ns3:pregnancy/ns3:end_date"/>
            </ns2:end_date>
         </ns2:pregnancy>
      </ns2:participant_pregnant>
   </xsl:template>
</xsl:stylesheet>
