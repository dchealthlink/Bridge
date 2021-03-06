<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenCuramUserLookupCmpService/FiveYearBarService" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/FiveYearBarService" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd plt wsdl tns soap db mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
   <xsl:param name="FiveYearBarService_OutputVariable.OutputParameters"/>
   <xsl:template match="/">
      <db:five_year_bar>
         <db:O_RESPONSE_CODE>
            <xsl:value-of select="$FiveYearBarService_OutputVariable.OutputParameters/db:five_year_bar/db:O_RESPONSE_CODE"/>
         </db:O_RESPONSE_CODE>
         <db:O_RESPONSE_TEXT>
            <xsl:value-of select="$FiveYearBarService_OutputVariable.OutputParameters/db:five_year_bar/db:O_RESPONSE_TEXT"/>
         </db:O_RESPONSE_TEXT>
         <db:cs_evidenceID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_evidenceID"/>
         </db:cs_evidenceID>
         <db:cs_comments>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_comments"/>
         </db:cs_comments>
         <db:cs_dhsCaseStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseStatus"/>
         </db:cs_dhsCaseStatus>
         <db:cs_isRetroCitizenship>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_isRetroCitizenship"/>
         </db:cs_isRetroCitizenship>
         <db:cs_dhsCaseNumber>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseNumber"/>
         </db:cs_dhsCaseNumber>
         <db:cs_docsMailDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_docsMailDate"/>
         </db:cs_docsMailDate>
         <db:cs_endDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_endDate"/>
         </db:cs_endDate>
         <db:cs_citizenStatusCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_citizenStatusCode"/>
         </db:cs_citizenStatusCode>
         <db:cs_exemptedImmigrationStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_exemptedImmigrationStatus"/>
         </db:cs_exemptedImmigrationStatus>
         <db:cs_isProductTypePresumptive>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_isProductTypePresumptive"/>
         </db:cs_isProductTypePresumptive>
         <db:cs_caseParticipantRoleID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_caseParticipantRoleID"/>
         </db:cs_caseParticipantRoleID>
         <db:cs_ParticipantRoleID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_ParticipantRoleID"/>
         </db:cs_ParticipantRoleID>
         <db:cs_dhsCaseStatusNew>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dhsCaseStatusNew"/>
         </db:cs_dhsCaseStatusNew>
         <db:cs_approxDocsReceiveDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_approxDocsReceiveDate"/>
         </db:cs_approxDocsReceiveDate>
         <db:cs_dateOfEntry>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_dateOfEntry"/>
         </db:cs_dateOfEntry>
         <db:cs_startDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_cs/cs_startDate"/>
         </db:cs_startDate>
         <db:ss_evidenceID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_evidenceID"/>
         </db:ss_evidenceID>
         <db:ss_raiseOutStandVerification>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_raiseOutStandVerification"/>
         </db:ss_raiseOutStandVerification>
         <db:ss_lprStatusDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lprStatusDate"/>
         </db:ss_lprStatusDate>
         <db:ss_lawfulPresenceVerifiedCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lawfulPresenceVerifiedCode"/>
         </db:ss_lawfulPresenceVerifiedCode>
         <db:ss_g845MajorCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_g845MajorCode"/>
         </db:ss_g845MajorCode>
         <db:ss_fiveYearBarMetCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarMetCode"/>
         </db:ss_fiveYearBarMetCode>
         <db:ss_fiveYearBarApplyStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarApplyStatus"/>
         </db:ss_fiveYearBarApplyStatus>
         <db:ss_errorDescription>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_errorDescription"/>
         </db:ss_errorDescription>
         <db:ss_errorCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_errorCode"/>
         </db:ss_errorCode>
         <db:ss_citizenshipVerified>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_citizenshipVerified"/>
         </db:ss_citizenshipVerified>
         <db:ss_webServSftwrVer>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_webServSftwrVer"/>
         </db:ss_webServSftwrVer>
         <db:ss_verificationCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_verificationCode"/>
         </db:ss_verificationCode>
         <db:ss_usCitizenCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_usCitizenCode"/>
         </db:ss_usCitizenCode>
         <db:ss_startDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_startDate"/>
         </db:ss_startDate>
         <db:ss_qualfiedNonCitizenCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_qualfiedNonCitizenCode"/>
         </db:ss_qualfiedNonCitizenCode>
         <db:ss_pendStatusDesc>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_pendStatusDesc"/>
         </db:ss_pendStatusDesc>
         <db:ss_nonCitizenStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitizenStatus"/>
         </db:ss_nonCitizenStatus>
         <db:ss_nonCitEntryDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitEntryDate"/>
         </db:ss_nonCitEntryDate>
         <db:ss_nonCitCoaCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_nonCitCoaCode"/>
         </db:ss_nonCitCoaCode>
         <db:ss_lawfulPresenceVerified>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_lawfulPresenceVerified"/>
         </db:ss_lawfulPresenceVerified>
         <db:ss_grantDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_grantDate"/>
         </db:ss_grantDate>
         <db:ss_fiveYearBarMetStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarMetStatus"/>
         </db:ss_fiveYearBarMetStatus>
         <db:ss_fiveYearBarApplyCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_fiveYearBarApplyCode"/>
         </db:ss_fiveYearBarApplyCode>
         <db:ss_endDate>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_endDate"/>
         </db:ss_endDate>
         <db:ss_eligStatementTxt>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_eligStatementTxt"/>
         </db:ss_eligStatementTxt>
         <db:ss_eligStatementCd>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_eligStatementCd"/>
         </db:ss_eligStatementCd>
         <db:ss_dhsCaseStatus>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsCaseStatus"/>
         </db:ss_dhsCaseStatus>
         <db:ss_dhsCaseNumber>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsCaseNumber"/>
         </db:ss_dhsCaseNumber>
         <db:ss_dhsAutotriggerStepTwo>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsAutotriggerStepTwo"/>
         </db:ss_dhsAutotriggerStepTwo>
         <db:ss_dhsAutotriggerStepThree>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_dhsAutotriggerStepThree"/>
         </db:ss_dhsAutotriggerStepThree>
         <db:ss_coaCode>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_coaCode"/>
         </db:ss_coaCode>
         <db:ss_citizenshipSource>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_citizenshipSource"/>
         </db:ss_citizenshipSource>
         <db:ss_caseParticipantRoleID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_caseParticipantRoleID"/>
         </db:ss_caseParticipantRoleID>
         <db:ss_ParticipantRoleID>
            <xsl:value-of select="/FiveYearBar/FiveYearBar_info/evidenceID_ss/ss_ParticipantRoleID"/>
         </db:ss_ParticipantRoleID>
      </db:five_year_bar>
   </xsl:template>
</xsl:stylesheet>
