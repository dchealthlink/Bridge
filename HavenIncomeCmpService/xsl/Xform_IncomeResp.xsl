<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Test/HavenIncomeCmpService/GetIncomeSP" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/sp/IncomeReqService" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:db1="http://xmlns.oracle.com/pcbpel/adapter/db/sp/IncomeRespService" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/GetIncomeSP" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:client="http://xmlns.oracle.com/Test/HavenIncomeCmpService/HavenIncomeABCSImpl" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi tns ns0 xsd plt db1 db soap plnk ns1 wsdl client oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="IncomeFormat"/>
   <xsl:template match="/">
      <db1:incomes>
         <db1:ResponseCode>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
         </db1:ResponseCode>
         <db1:ResponseText>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
         </db1:ResponseText>
         <xsl:for-each select="$IncomeFormat/incomes/income">
            <db1:income>
               <db1:start_date>
                  <xsl:value-of select="start_date"/>
               </db1:start_date>
               <db1:end_date>
                  <xsl:value-of select="end_date"/>
               </db1:end_date>
               <db1:inc_incomeTypeCode>
                  <xsl:value-of select="inc_incomeTypeCode"/>
               </db1:inc_incomeTypeCode>
               <db1:income_type>
                  <xsl:value-of select="income_type"/>
               </db1:income_type>
               <db1:amount>
                  <xsl:value-of select="amount"/>
               </db1:amount>
               <db1:inc_frequencyCode>
                  <xsl:value-of select="inc_frequencyCode"/>
               </db1:inc_frequencyCode>
               <db1:frequency>
                  <xsl:value-of select="frequency"/>
               </db1:frequency>
               <db1:inc_caseParticipantRoleID>
                  <xsl:value-of select="inc_caseParticipantRoleID"/>
               </db1:inc_caseParticipantRoleID>
               <db1:inc_ParticipantRoleID>
                  <xsl:value-of select="inc_ParticipantRoleID"/>
               </db1:inc_ParticipantRoleID>
               <db1:inc_taxformType>
                  <xsl:value-of select="inc_taxformType"/>
               </db1:inc_taxformType>
               <db1:inc_state>
                  <xsl:value-of select="inc_state"/>
               </db1:inc_state>
               <db1:inc_street2>
                  <xsl:value-of select="inc_street2"/>
               </db1:inc_street2>
               <db1:inc_zipCode>
                  <xsl:value-of select="inc_zipCode"/>
               </db1:inc_zipCode>
               <db1:inc_employer>
                  <xsl:value-of select="inc_employer"/>
               </db1:inc_employer>
               <db1:inc_source>
                  <xsl:value-of select="inc_source"/>
               </db1:inc_source>
               <db1:inc_city>
                  <xsl:value-of select="inc_city"/>
               </db1:inc_city>
               <db1:inc_street1>
                  <xsl:value-of select="inc_street1"/>
               </db1:inc_street1>
               <db1:inc_zipCodePlusFour>
                  <xsl:value-of select="inc_zipCodePlusFour"/>
               </db1:inc_zipCodePlusFour>
               <db1:inc_employerName>
                  <xsl:value-of select="inc_employerName"/>
               </db1:inc_employerName>
               <db1:inc_seasonalIncomeInd>
                  <xsl:value-of select="inc_seasonalIncomeInd"/>
               </db1:inc_seasonalIncomeInd>
               <db1:inc_suiteNum>
                  <xsl:value-of select="inc_suiteNum"/>
               </db1:inc_suiteNum>
               <db1:inc_incomeID>
                  <xsl:value-of select="inc_incomeID"/>
               </db1:inc_incomeID>
               <db1:inc_taxExemptAmount>
                  <xsl:value-of select="inc_taxExemptAmount"/>
               </db1:inc_taxExemptAmount>
               <db1:inc_comments>
                  <xsl:value-of select="inc_comments"/>
               </db1:inc_comments>
               <db1:evidenceID>
                  <xsl:value-of select="evidenceID"/>
               </db1:evidenceID>
               <db1:statuscode>
                  <xsl:value-of select="statuscode"/>
               </db1:statuscode>
               <db1:receiveddate>
                  <xsl:value-of select="receiveddate"/>
               </db1:receiveddate>
               <db1:correctionsetid>
                  <xsl:value-of select="correctionsetid"/>
               </db1:correctionsetid>
            </db1:income>
         </xsl:for-each>
      </db1:incomes>
   </xsl:template>
</xsl:stylesheet>
