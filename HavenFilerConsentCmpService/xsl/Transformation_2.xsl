<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/FilerConsentSP" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:client="http://xmlns.oracle.com/Test/HavenFilerConsentCmpService/HavenFilerConsentABCSImpl" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Test/HavenFilerConsentCmpService/FilerConsentSP" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ns1="http://xmlns.haven.dc.govcom/haven/FilerConsentIn" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns2="http://xmlns.haven.dc.govcom/haven/FilerConsentsout" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plt db soap plnk wsdl client tns ns1 ns2 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="Filer_Format"/>
   <xsl:template match="/">
      <ns2:FilersConsent>
         <ns2:ResponseCode>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
         </ns2:ResponseCode>
         <ns2:ResponseText>
            <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
         </ns2:ResponseText>
         <ns2:filer_consent>
            <ns2:filer_IC>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/filer_IC"/>
            </ns2:filer_IC>
            <ns2:caseworker>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/caseworker"/>
            </ns2:caseworker>
            <ns2:consent_ForIRSRenewals>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consent_ForIRSRenewals"/>
            </ns2:consent_ForIRSRenewals>
            <ns2:consent_yearsToRenewCoverage>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consent_yearsToRenewCoverage"/>
            </ns2:consent_yearsToRenewCoverage>
            <ns2:consent_startDate>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consent_startDate"/>
            </ns2:consent_startDate>
            <ns2:consent_endDate>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consent_endDate"/>
            </ns2:consent_endDate>
            <ns2:consentToTruthfulAnswers>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consentToTruthfulAnswers"/>
            </ns2:consentToTruthfulAnswers>
            <ns2:consenttToMedicaidReimbursement>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consenttToMedicaidReimbursement"/>
            </ns2:consenttToMedicaidReimbursement>
            <ns2:consentToShareInformationExternally>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consentToShareInformationExternally"/>
            </ns2:consentToShareInformationExternally>
            <ns2:consentToCooperationForMedicalSupport>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consentToCooperationForMedicalSupport"/>
            </ns2:consentToCooperationForMedicalSupport>
            <ns2:consentToNotifyOfChange>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/consentToNotifyOfChange"/>
            </ns2:consentToNotifyOfChange>
            <ns2:registerToVote>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/registerToVote"/>
            </ns2:registerToVote>
            <ns2:eSignatureFirstName>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/eSignatureFirstName"/>
            </ns2:eSignatureFirstName>
            <ns2:eSignatureMiddleName>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/eSignatureMiddleName"/>
            </ns2:eSignatureMiddleName>
            <ns2:eSignatureLastName>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/eSignatureLastName"/>
            </ns2:eSignatureLastName>
            <ns2:caseParticipantRoleID>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/caseParticipantRoleID"/>
            </ns2:caseParticipantRoleID>
            <ns2:participantID>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/participantID"/>
            </ns2:participantID>
            <ns2:evidenceID>
               <xsl:value-of select="$Filer_Format/FilersConsent/filer_consent/evidenceID"/>
            </ns2:evidenceID>
         </ns2:filer_consent>
      </ns2:FilersConsent>
   </xsl:template>
</xsl:stylesheet>
