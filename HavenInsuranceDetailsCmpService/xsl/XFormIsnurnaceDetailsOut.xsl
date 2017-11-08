<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns2="https://openhbx.gov/haven/insurancedetails/response" xmlns:ns1="https://openhbx.gov/haven/insurancedetails/request" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns3="https://openhbx.gov/haven/insurancedetails/spfomrat" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/InsDetailsSP" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:client="http://xmlns.oracle.com/Test/HavenInsuranceDetailsCmpService/HavenInsuranceDetailsABCSImpl" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Test/HavenInsuranceDetailsCmpService/InsDetailsSP" exclude-result-prefixes="xsl xsi ns2 ns1 xsd plt ns3 plnk wsdl db client tns oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="InsDetailsSP_Output_format"/>
   <xsl:template match="/">
      <ns2:participant_insured_or_eligible>
         <ns2:ResponseCode>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
         </ns2:ResponseCode>
         <ns2:ResponseText>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
         </ns2:ResponseText>
         <xsl:for-each select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:benefits">
            <ns2:benefits>
               <xsl:for-each select="ns3:benefit">
                  <ns2:benefit>
                     <ns2:participantEnrolled>
                        <xsl:value-of select="ns3:participantEnrolled"/>
                     </ns2:participantEnrolled>
                     <ns2:insuranceTypeCode>
                        <xsl:value-of select="ns3:insuranceTypeCode"/>
                     </ns2:insuranceTypeCode>
                     <ns2:type>
                        <xsl:value-of select="ns3:type"/>
                     </ns2:type>
                     <ns2:start_date>
                        <xsl:value-of select="ns3:start_date"/>
                     </ns2:start_date>
                     <ns2:end_date>
                        <xsl:value-of select="ns3:end_date"/>
                     </ns2:end_date>
                  </ns2:benefit>
               </xsl:for-each>
            </ns2:benefits>
         </xsl:for-each>
         <ns2:isPersonEligible>
            <ns2:participantEligible>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:participantEligible"/>
            </ns2:participantEligible>
            <ns2:start_date>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:start_date"/>
            </ns2:start_date>
            <ns2:end_date>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:end_date"/>
            </ns2:end_date>
            <ns2:employerName>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:employerName"/>
            </ns2:employerName>
            <ns2:employerID>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:employerID"/>
            </ns2:employerID>
            <ns2:planExists>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:planExists"/>
            </ns2:planExists>
            <ns2:planCoverage>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:planCoverage"/>
            </ns2:planCoverage>
            <ns2:personCost>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:personCost"/>
            </ns2:personCost>
            <ns2:costFrequency>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:costFrequency"/>
            </ns2:costFrequency>
            <ns2:planMEC>
               <xsl:value-of select="$InsDetailsSP_Output_format/ns3:participant_insured_or_eligible/ns3:isPersonEligible/ns3:planMEC"/>
            </ns2:planMEC>
         </ns2:isPersonEligible>
      </ns2:participant_insured_or_eligible>
   </xsl:template>
</xsl:stylesheet>
