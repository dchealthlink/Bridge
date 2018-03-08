<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenFiveYearBarService/HavenFiveYearBarService" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/HavenFiveYearBarService" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/FiveYearBarService" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenCuramUserLookupCmpService/FiveYearBarService" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plt tns db soap ns2 ns1 wsdl ns0 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="FormatOutput"/>
   <xsl:template match="/">
      <ns2:five_year_bar>
         <ns2:O_RESPONSE_CODE>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
         </ns2:O_RESPONSE_CODE>
         <ns2:O_RESPONSE_TEXT>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
         </ns2:O_RESPONSE_TEXT>
         <ns2:cs_evidenceID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_evidenceID"/>
         </ns2:cs_evidenceID>
         <ns2:cs_comments>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_comments"/>
         </ns2:cs_comments>
         <ns2:cs_dhsCaseStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseStatus"/>
         </ns2:cs_dhsCaseStatus>
         <ns2:cs_isRetroCitizenship>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_isRetroCitizenship"/>
         </ns2:cs_isRetroCitizenship>
         <ns2:cs_dhsCaseNumber>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseNumber"/>
         </ns2:cs_dhsCaseNumber>
         <ns2:cs_docsMailDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_docsMailDate"/>
         </ns2:cs_docsMailDate>
         <ns2:cs_endDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_endDate"/>
         </ns2:cs_endDate>
         <ns2:cs_citizenStatusCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_citizenStatusCode"/>
         </ns2:cs_citizenStatusCode>
         <ns2:cs_exemptedImmigrationStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_exemptedImmigrationStatus"/>
         </ns2:cs_exemptedImmigrationStatus>
         <ns2:cs_isProductTypePresumptive>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_isProductTypePresumptive"/>
         </ns2:cs_isProductTypePresumptive>
         <ns2:cs_caseParticipantRoleID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_caseParticipantRoleID"/>
         </ns2:cs_caseParticipantRoleID>
         <ns2:cs_ParticipantRoleID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_ParticipantRoleID"/>
         </ns2:cs_ParticipantRoleID>
         <ns2:cs_dhsCaseStatusNew>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseStatusNew"/>
         </ns2:cs_dhsCaseStatusNew>
         <ns2:cs_approxDocsReceiveDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_approxDocsReceiveDate"/>
         </ns2:cs_approxDocsReceiveDate>
         <ns2:cs_dateOfEntry>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dateOfEntry"/>
         </ns2:cs_dateOfEntry>
         <ns2:cs_startDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_startDate"/>
         </ns2:cs_startDate>
         <ns2:ss_evidenceID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_evidenceID"/>
         </ns2:ss_evidenceID>
         <ns2:ss_raiseOutStandVerification>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_raiseOutStandVerification"/>
         </ns2:ss_raiseOutStandVerification>
         <ns2:ss_lprStatusDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lprStatusDate"/>
         </ns2:ss_lprStatusDate>
         <ns2:ss_lawfulPresenceVerifiedCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lawfulPresenceVerifiedCode"/>
         </ns2:ss_lawfulPresenceVerifiedCode>
         <ns2:ss_lawfulPresenceVerifiedDesc>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lawfulPresenceVerifiedDesc"/>
         </ns2:ss_lawfulPresenceVerifiedDesc>
         <ns2:ss_g845MajorCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_g845MajorCode"/>
         </ns2:ss_g845MajorCode>
         <ns2:ss_fiveYearBarMetCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarMetCode"/>
         </ns2:ss_fiveYearBarMetCode>
         <ns2:ss_fiveYearBarMetDesc>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarMetDesc"/>
         </ns2:ss_fiveYearBarMetDesc>
         <ns2:ss_fiveYearBarMetStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarMetStatus"/>
         </ns2:ss_fiveYearBarMetStatus>
         <ns2:ss_errorDescription>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_errorDescription"/>
         </ns2:ss_errorDescription>
         <ns2:ss_errorCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_errorCode"/>
         </ns2:ss_errorCode>
         <ns2:ss_citizenshipVerified>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_citizenshipVerified"/>
         </ns2:ss_citizenshipVerified>
         <ns2:ss_webServSftwrVer>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_webServSftwrVer"/>
         </ns2:ss_webServSftwrVer>
         <ns2:ss_verificationCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_verificationCode"/>
         </ns2:ss_verificationCode>
         <ns2:ss_usCitizenCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_usCitizenCode"/>
         </ns2:ss_usCitizenCode>
         <ns2:ss_startDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_startDate"/>
         </ns2:ss_startDate>
         <ns2:ss_qualfiedNonCitizenCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_qualfiedNonCitizenCode"/>
         </ns2:ss_qualfiedNonCitizenCode>
         <ns2:ss_pendStatusDesc>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_pendStatusDesc"/>
         </ns2:ss_pendStatusDesc>
         <ns2:ss_nonCitizenStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitizenStatus"/>
         </ns2:ss_nonCitizenStatus>
         <ns2:ss_nonCitEntryDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitEntryDate"/>
         </ns2:ss_nonCitEntryDate>
         <ns2:ss_nonCitCoaCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitCoaCode"/>
         </ns2:ss_nonCitCoaCode>
         <ns2:ss_lawfulPresenceVerified>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lawfulPresenceVerified"/>
         </ns2:ss_lawfulPresenceVerified>
         <ns2:ss_grantDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_grantDate"/>
         </ns2:ss_grantDate>
         <ns2:ss_fiveYearBarApplyStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarApplyStatus"/>
         </ns2:ss_fiveYearBarApplyStatus>
         <ns2:ss_fiveYearBarApplyDesc>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarApplyDesc"/>
         </ns2:ss_fiveYearBarApplyDesc>
         <ns2:ss_fiveYearBarApplyCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarApplyCode"/>
         </ns2:ss_fiveYearBarApplyCode>
         <ns2:ss_endDate>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_endDate"/>
         </ns2:ss_endDate>
         <ns2:ss_eligStatementTxt>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_eligStatementTxt"/>
         </ns2:ss_eligStatementTxt>
         <ns2:ss_eligStatementCd>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_eligStatementCd"/>
         </ns2:ss_eligStatementCd>
         <ns2:ss_dhsCaseStatus>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsCaseStatus"/>
         </ns2:ss_dhsCaseStatus>
         <ns2:ss_dhsCaseNumber>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsCaseNumber"/>
         </ns2:ss_dhsCaseNumber>
         <ns2:ss_dhsAutotriggerStepTwo>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsAutotriggerStepTwo"/>
         </ns2:ss_dhsAutotriggerStepTwo>
         <ns2:ss_dhsAutotriggerStepThree>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsAutotriggerStepThree"/>
         </ns2:ss_dhsAutotriggerStepThree>
         <ns2:ss_coaCode>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_coaCode"/>
         </ns2:ss_coaCode>
         <ns2:ss_citizenshipSource>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_citizenshipSource"/>
         </ns2:ss_citizenshipSource>
         <ns2:ss_caseParticipantRoleID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_caseParticipantRoleID"/>
         </ns2:ss_caseParticipantRoleID>
         <ns2:ss_ParticipantRoleID>
            <xsl:value-of select="$FormatOutput/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_ParticipantRoleID"/>
         </ns2:ss_ParticipantRoleID>
      </ns2:five_year_bar>
   </xsl:template>
</xsl:stylesheet>
