<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenCuramUserLookupCmpService/FiveYearBarService" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/FiveYearBarService" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd plt wsdl tns soap db mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
   <xsl:template match="/">
      <db:OutputParameters>
         <xsl:if test="/db:OutputParameters/db:O_RESPONSE_CODE">
            <db:O_RESPONSE_CODE>
               <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
            </db:O_RESPONSE_CODE>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:O_RESPONSE_TEXT">
            <db:O_RESPONSE_TEXT>
               <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
            </db:O_RESPONSE_TEXT>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_evidenceID">
            <db:cs_evidenceID>
               <xsl:value-of select="/db:OutputParameters/db:cs_evidenceID"/>
            </db:cs_evidenceID>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_comments">
            <db:cs_comments>
               <xsl:value-of select="/db:OutputParameters/db:cs_comments"/>
            </db:cs_comments>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_dhsCaseStatus">
            <db:cs_dhsCaseStatus>
               <xsl:value-of select="/db:OutputParameters/db:cs_dhsCaseStatus"/>
            </db:cs_dhsCaseStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_isRetroCitizenship">
            <db:cs_isRetroCitizenship>
               <xsl:value-of select="/db:OutputParameters/db:cs_isRetroCitizenship"/>
            </db:cs_isRetroCitizenship>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_dhsCaseNumber">
            <db:cs_dhsCaseNumber>
               <xsl:value-of select="/db:OutputParameters/db:cs_dhsCaseNumber"/>
            </db:cs_dhsCaseNumber>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_docsMailDate">
            <db:cs_docsMailDate>
               <xsl:if test="/db:OutputParameters/db:cs_docsMailDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_docsMailDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_docsMailDate"/>
            </db:cs_docsMailDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_endDate">
            <db:cs_endDate>
               <xsl:if test="/db:OutputParameters/db:cs_endDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_endDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_endDate"/>
            </db:cs_endDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_citizenStatusCode">
            <db:cs_citizenStatusCode>
               <xsl:if test="/db:OutputParameters/db:cs_citizenStatusCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_citizenStatusCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_citizenStatusCode"/>
            </db:cs_citizenStatusCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_exemptedImmigrationStatus">
            <db:cs_exemptedImmigrationStatus>
               <xsl:if test="/db:OutputParameters/db:cs_exemptedImmigrationStatus/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_exemptedImmigrationStatus/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_exemptedImmigrationStatus"/>
            </db:cs_exemptedImmigrationStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_isProductTypePresumptive">
            <db:cs_isProductTypePresumptive>
               <xsl:if test="/db:OutputParameters/db:cs_isProductTypePresumptive/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_isProductTypePresumptive/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_isProductTypePresumptive"/>
            </db:cs_isProductTypePresumptive>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_caseParticipantRoleID">
            <db:cs_caseParticipantRoleID>
               <xsl:if test="/db:OutputParameters/db:cs_caseParticipantRoleID/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_caseParticipantRoleID/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_caseParticipantRoleID"/>
            </db:cs_caseParticipantRoleID>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_dhsCaseStatusNew">
            <db:cs_dhsCaseStatusNew>
               <xsl:if test="/db:OutputParameters/db:cs_dhsCaseStatusNew/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_dhsCaseStatusNew/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_dhsCaseStatusNew"/>
            </db:cs_dhsCaseStatusNew>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_approxDocsReceiveDate">
            <db:cs_approxDocsReceiveDate>
               <xsl:if test="/db:OutputParameters/db:cs_approxDocsReceiveDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_approxDocsReceiveDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_approxDocsReceiveDate"/>
            </db:cs_approxDocsReceiveDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_dateOfEntry">
            <db:cs_dateOfEntry>
               <xsl:if test="/db:OutputParameters/db:cs_dateOfEntry/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_dateOfEntry/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_dateOfEntry"/>
            </db:cs_dateOfEntry>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:cs_startDate">
            <db:cs_startDate>
               <xsl:if test="/db:OutputParameters/db:cs_startDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:cs_startDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:cs_startDate"/>
            </db:cs_startDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_evidenceID">
            <db:ss_evidenceID>
               <xsl:value-of select="/db:OutputParameters/db:ss_evidenceID"/>
            </db:ss_evidenceID>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_raiseOutStandVerification">
            <db:ss_raiseOutStandVerification>
               <xsl:if test="/db:OutputParameters/db:ss_raiseOutStandVerification/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_raiseOutStandVerification/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_raiseOutStandVerification"/>
            </db:ss_raiseOutStandVerification>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_lprStatusDate">
            <db:ss_lprStatusDate>
               <xsl:if test="/db:OutputParameters/db:ss_lprStatusDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_lprStatusDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_lprStatusDate"/>
            </db:ss_lprStatusDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_lawfulPresenceVerifiedCode">
            <db:ss_lawfulPresenceVerifiedCode>
               <xsl:if test="/db:OutputParameters/db:ss_lawfulPresenceVerifiedCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_lawfulPresenceVerifiedCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_lawfulPresenceVerifiedCode"/>
            </db:ss_lawfulPresenceVerifiedCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_g845MajorCode">
            <db:ss_g845MajorCode>
               <xsl:if test="/db:OutputParameters/db:ss_g845MajorCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_g845MajorCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_g845MajorCode"/>
            </db:ss_g845MajorCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarMetCode">
            <db:ss_fiveYearBarMetCode>
               <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarMetCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarMetCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarMetCode"/>
            </db:ss_fiveYearBarMetCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarApplyStatus">
            <db:ss_fiveYearBarApplyStatus>
               <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarApplyStatus/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarApplyStatus/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarApplyStatus"/>
            </db:ss_fiveYearBarApplyStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_errorDescription">
            <db:ss_errorDescription>
               <xsl:if test="/db:OutputParameters/db:ss_errorDescription/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_errorDescription/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_errorDescription"/>
            </db:ss_errorDescription>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_errorCode">
            <db:ss_errorCode>
               <xsl:if test="/db:OutputParameters/db:ss_errorCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_errorCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_errorCode"/>
            </db:ss_errorCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_citizenshipVerified">
            <db:ss_citizenshipVerified>
               <xsl:if test="/db:OutputParameters/db:ss_citizenshipVerified/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_citizenshipVerified/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_citizenshipVerified"/>
            </db:ss_citizenshipVerified>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_webServSftwrVer">
            <db:ss_webServSftwrVer>
               <xsl:if test="/db:OutputParameters/db:ss_webServSftwrVer/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_webServSftwrVer/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_webServSftwrVer"/>
            </db:ss_webServSftwrVer>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_verificationCode">
            <db:ss_verificationCode>
               <xsl:if test="/db:OutputParameters/db:ss_verificationCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_verificationCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_verificationCode"/>
            </db:ss_verificationCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_usCitizenCode">
            <db:ss_usCitizenCode>
               <xsl:if test="/db:OutputParameters/db:ss_usCitizenCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_usCitizenCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_usCitizenCode"/>
            </db:ss_usCitizenCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_startDate">
            <db:ss_startDate>
               <xsl:if test="/db:OutputParameters/db:ss_startDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_startDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_startDate"/>
            </db:ss_startDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_qualfiedNonCitizenCode">
            <db:ss_qualfiedNonCitizenCode>
               <xsl:if test="/db:OutputParameters/db:ss_qualfiedNonCitizenCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_qualfiedNonCitizenCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_qualfiedNonCitizenCode"/>
            </db:ss_qualfiedNonCitizenCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_pendStatusDesc">
            <db:ss_pendStatusDesc>
               <xsl:if test="/db:OutputParameters/db:ss_pendStatusDesc/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_pendStatusDesc/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_pendStatusDesc"/>
            </db:ss_pendStatusDesc>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_nonCitizenStatus">
            <db:ss_nonCitizenStatus>
               <xsl:if test="/db:OutputParameters/db:ss_nonCitizenStatus/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_nonCitizenStatus/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_nonCitizenStatus"/>
            </db:ss_nonCitizenStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_nonCitEntryDate">
            <db:ss_nonCitEntryDate>
               <xsl:if test="/db:OutputParameters/db:ss_nonCitEntryDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_nonCitEntryDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_nonCitEntryDate"/>
            </db:ss_nonCitEntryDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_nonCitCoaCode">
            <db:ss_nonCitCoaCode>
               <xsl:if test="/db:OutputParameters/db:ss_nonCitCoaCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_nonCitCoaCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_nonCitCoaCode"/>
            </db:ss_nonCitCoaCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_lawfulPresenceVerified">
            <db:ss_lawfulPresenceVerified>
               <xsl:if test="/db:OutputParameters/db:ss_lawfulPresenceVerified/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_lawfulPresenceVerified/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_lawfulPresenceVerified"/>
            </db:ss_lawfulPresenceVerified>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_grantDate">
            <db:ss_grantDate>
               <xsl:if test="/db:OutputParameters/db:ss_grantDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_grantDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_grantDate"/>
            </db:ss_grantDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarMetStatus">
            <db:ss_fiveYearBarMetStatus>
               <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarMetStatus/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarMetStatus/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarMetStatus"/>
            </db:ss_fiveYearBarMetStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarApplyCode">
            <db:ss_fiveYearBarApplyCode>
               <xsl:if test="/db:OutputParameters/db:ss_fiveYearBarApplyCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarApplyCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_fiveYearBarApplyCode"/>
            </db:ss_fiveYearBarApplyCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_endDate">
            <db:ss_endDate>
               <xsl:if test="/db:OutputParameters/db:ss_endDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_endDate/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_endDate"/>
            </db:ss_endDate>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_eligStatementTxt">
            <db:ss_eligStatementTxt>
               <xsl:if test="/db:OutputParameters/db:ss_eligStatementTxt/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_eligStatementTxt/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_eligStatementTxt"/>
            </db:ss_eligStatementTxt>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_eligStatementCd">
            <db:ss_eligStatementCd>
               <xsl:if test="/db:OutputParameters/db:ss_eligStatementCd/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_eligStatementCd/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_eligStatementCd"/>
            </db:ss_eligStatementCd>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_dhsCaseStatus">
            <db:ss_dhsCaseStatus>
               <xsl:if test="/db:OutputParameters/db:ss_dhsCaseStatus/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_dhsCaseStatus/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_dhsCaseStatus"/>
            </db:ss_dhsCaseStatus>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_dhsCaseNumber">
            <db:ss_dhsCaseNumber>
               <xsl:if test="/db:OutputParameters/db:ss_dhsCaseNumber/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_dhsCaseNumber/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_dhsCaseNumber"/>
            </db:ss_dhsCaseNumber>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_dhsAutotriggerStepTwo">
            <db:ss_dhsAutotriggerStepTwo>
               <xsl:if test="/db:OutputParameters/db:ss_dhsAutotriggerStepTwo/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_dhsAutotriggerStepTwo/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_dhsAutotriggerStepTwo"/>
            </db:ss_dhsAutotriggerStepTwo>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_dhsAutotriggerStepThree">
            <db:ss_dhsAutotriggerStepThree>
               <xsl:if test="/db:OutputParameters/db:ss_dhsAutotriggerStepThree/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_dhsAutotriggerStepThree/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_dhsAutotriggerStepThree"/>
            </db:ss_dhsAutotriggerStepThree>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_coaCode">
            <db:ss_coaCode>
               <xsl:if test="/db:OutputParameters/db:ss_coaCode/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_coaCode/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_coaCode"/>
            </db:ss_coaCode>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_citizenshipSource">
            <db:ss_citizenshipSource>
               <xsl:if test="/db:OutputParameters/db:ss_citizenshipSource/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_citizenshipSource/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_citizenshipSource"/>
            </db:ss_citizenshipSource>
         </xsl:if>
         <xsl:if test="/db:OutputParameters/db:ss_caseParticipantRoleID">
            <db:ss_caseParticipantRoleID>
               <xsl:if test="/db:OutputParameters/db:ss_caseParticipantRoleID/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                     <xsl:value-of select="/db:OutputParameters/db:ss_caseParticipantRoleID/@xsi:nil"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:value-of select="/db:OutputParameters/db:ss_caseParticipantRoleID"/>
            </db:ss_caseParticipantRoleID>
         </xsl:if>
      </db:OutputParameters>
   </xsl:template>
</xsl:stylesheet>
