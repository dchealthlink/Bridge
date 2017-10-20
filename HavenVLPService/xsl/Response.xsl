<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:vil="http://vilpsav.ee.sim.dsh.cms.hhs.gov" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Test/HavenVLPService/ConsumeMessageFromVLPQueue" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ssa="http://gov.hhs.cms.hix.dsh.ee.ssa" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:vcl="http://vclpsav.ee.sim.dsh.cms.hhs.gov" xmlns:imp1="http://vlp.ee.sim.dsh.cms.hhs.gov/ESB/V1" xmlns:ns0="http://vlp.ee.services.dsh.cms.hhs.gov/wsdl" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:WL5G3N6="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:vlp="http://vlp.ee.sim.dsh.cms.hhs.gov" xmlns:ctzn="http://gov.hhs.cms.hix.dsh.ee.ctzn" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi vil wsp xsd plt tns pc ssa vcl imp1 ns0 WL5G3N6 wsdl vlp ctzn jca oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="InvokeFedHub_OutputVariable.body"/>
   <xsl:template match="/">
      <imp1:verifyLawfulPresenceOutput>
         <xsl:if test="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:ResponseMetadata">
            <imp1:responseMetadata>
               <imp1:responseCode>
                  <xsl:value-of select="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:ResponseMetadata/vlp:ResponseCode"/>
               </imp1:responseCode>
               <imp1:responseDescriptionText>
                  <xsl:value-of select="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:ResponseMetadata/vlp:ResponseDescriptionText"/>
               </imp1:responseDescriptionText>
               <xsl:if test="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:ResponseMetadata/vlp:TDSResponseDescriptionText">
                  <imp1:TDSResponseDescriptionText>
                     <xsl:value-of select="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:ResponseMetadata/vlp:TDSResponseDescriptionText"/>
                  </imp1:TDSResponseDescriptionText>
               </xsl:if>
               <imp1:RequestNumber>
                  <xsl:value-of select="/imp1:verifyLawfulPresenceInput/imp1:RequestNumber"/>
               </imp1:RequestNumber>
               <imp1:PersonID>
                  <xsl:value-of select="/imp1:verifyLawfulPresenceInput/imp1:PersonID"/>
               </imp1:PersonID>
            </imp1:responseMetadata>
         </xsl:if>
         <imp1:lawfulPresenceResponse>
            <xsl:for-each select="$InvokeFedHub_OutputVariable.body/vlp:Agency3InitVerifResponse/vlp:Agency3InitVerifResponseSet/vlp:Agency3InitVerifIndividualResponse">
               <imp1:lawfulPresenceIndividualResponse>
                  <imp1:responseMetadata>
                     <imp1:responseCode>
                        <xsl:value-of select="vlp:ResponseMetadata/vlp:ResponseCode"/>
                     </imp1:responseCode>
                     <imp1:responseDescriptionText>
                        <xsl:value-of select="vlp:ResponseMetadata/vlp:ResponseDescriptionText"/>
                     </imp1:responseDescriptionText>
                     <xsl:if test="vlp:ResponseMetadata/vlp:TDSResponseDescriptionText">
                        <imp1:TDSResponseDescriptionText>
                           <xsl:value-of select="vlp:ResponseMetadata/vlp:TDSResponseDescriptionText"/>
                        </imp1:TDSResponseDescriptionText>
                     </xsl:if>
                  </imp1:responseMetadata>
                  <imp1:lawfulPresenceVerified>
                     <xsl:value-of select="vlp:LawfulPresenceVerifiedCode"/>
                  </imp1:lawfulPresenceVerified>
                  <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet">
                     <imp1:lawfulPresenceServiceResponseFields>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitLastName">
                           <imp1:nonCitLastName>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitLastName"/>
                           </imp1:nonCitLastName>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitFirstName">
                           <imp1:nonCitFirstName>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitFirstName"/>
                           </imp1:nonCitFirstName>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitMiddleName">
                           <imp1:nonCitMiddleName>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitMiddleName"/>
                           </imp1:nonCitMiddleName>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitBirthDate">
                           <imp1:nonCitBirthDate>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitBirthDate"/>
                           </imp1:nonCitBirthDate>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitEntryDate">
                           <imp1:nonCitEntryDate>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitEntryDate"/>
                           </imp1:nonCitEntryDate>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitAdmittedToDate">
                           <imp1:nonCitAdmittedToDate>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitAdmittedToDate"/>
                           </imp1:nonCitAdmittedToDate>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitAdmittedToText">
                           <imp1:nonCitAdmittedToText>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitAdmittedToText"/>
                           </imp1:nonCitAdmittedToText>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCountryBirthCd">
                           <imp1:nonCitCountryBirthCd>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCountryBirthCd"/>
                           </imp1:nonCitCountryBirthCd>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCountryCitCd">
                           <imp1:nonCitCountryCitCd>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCountryCitCd"/>
                           </imp1:nonCitCountryCitCd>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCoaCode">
                           <imp1:nonCitCoaCode>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitCoaCode"/>
                           </imp1:nonCitCoaCode>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitEadsExpireDate">
                           <imp1:nonCitEadsExpireDate>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:NonCitEadsExpireDate"/>
                           </imp1:nonCitEadsExpireDate>
                        </xsl:if>
                        <imp1:eligStatementCd>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:EligStatementCd"/>
                        </imp1:eligStatementCd>
                        <imp1:eligStatementTxt>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:EligStatementTxt"/>
                        </imp1:eligStatementTxt>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:IAVTypeCode">
                           <imp1:iavTypeCode>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:IAVTypeCode"/>
                           </imp1:iavTypeCode>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:IAVTypeTxt">
                           <imp1:iavTypeTxt>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:IAVTypeTxt"/>
                           </imp1:iavTypeTxt>
                        </xsl:if>
                        <imp1:webServSftwrVer>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:WebServSftwrVer"/>
                        </imp1:webServSftwrVer>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:GrantDate">
                           <imp1:GrantDate>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:GrantDate"/>
                           </imp1:GrantDate>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:GrantDateReasonCd">
                           <imp1:GrantDateReasonCd>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:GrantDateReasonCd"/>
                           </imp1:GrantDateReasonCd>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:SponsorDataFoundIndicator">
                           <imp1:SponsorDataFoundIndicator>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:SponsorDataFoundIndicator"/>
                           </imp1:SponsorDataFoundIndicator>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:ArrayOfSponsorshipData">
                           <imp1:ArrayOfSponsorshipData>
                              <xsl:for-each select="vlp:Agency3InitVerifIndividualResponseSet/vlp:ArrayOfSponsorshipData/vlp:SponsorshipData">
                                 <imp1:SponsorshipData>
                                    <imp1:LastName>
                                       <xsl:value-of select="vlp:LastName"/>
                                    </imp1:LastName>
                                    <imp1:FirstName>
                                       <xsl:value-of select="vlp:FirstName"/>
                                    </imp1:FirstName>
                                    <xsl:if test="vlp:MiddleName">
                                       <imp1:MiddleName>
                                          <xsl:value-of select="vlp:MiddleName"/>
                                       </imp1:MiddleName>
                                    </xsl:if>
                                    <xsl:if test="vlp:Addr1">
                                       <imp1:Addr1>
                                          <xsl:value-of select="vlp:Addr1"/>
                                       </imp1:Addr1>
                                    </xsl:if>
                                    <xsl:if test="vlp:Addr2">
                                       <imp1:Addr2>
                                          <xsl:value-of select="vlp:Addr2"/>
                                       </imp1:Addr2>
                                    </xsl:if>
                                    <xsl:if test="vlp:City">
                                       <imp1:City>
                                          <xsl:value-of select="vlp:City"/>
                                       </imp1:City>
                                    </xsl:if>
                                    <xsl:if test="vlp:StateCode">
                                       <imp1:StateCode>
                                          <xsl:value-of select="vlp:StateCode"/>
                                       </imp1:StateCode>
                                    </xsl:if>
                                    <xsl:if test="vlp:ZipCode">
                                       <imp1:ZipCode>
                                          <xsl:value-of select="vlp:ZipCode"/>
                                       </imp1:ZipCode>
                                    </xsl:if>
                                 </imp1:SponsorshipData>
                              </xsl:for-each>
                           </imp1:ArrayOfSponsorshipData>
                        </xsl:if>
                        <xsl:if test="vlp:Agency3InitVerifIndividualResponseSet/vlp:SponsorshipReasonCd">
                           <imp1:SponsorshipReasonCd>
                              <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:SponsorshipReasonCd"/>
                           </imp1:SponsorshipReasonCd>
                        </xsl:if>
                        <imp1:CaseSentToSecondaryIndicator>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:CaseSentToSecondaryIndicator"/>
                        </imp1:CaseSentToSecondaryIndicator>
                        <imp1:DSHAutoTriggerStepTwo>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:DSHAutoTriggerStepTwo"/>
                        </imp1:DSHAutoTriggerStepTwo>
                        <imp1:USCitizenCode>
                           <xsl:value-of select="vlp:Agency3InitVerifIndividualResponseSet/vlp:USCitizenCode"/>
                        </imp1:USCitizenCode>
                     </imp1:lawfulPresenceServiceResponseFields>
                  </xsl:if>
               </imp1:lawfulPresenceIndividualResponse>
            </xsl:for-each>
            <imp1:RequestNumber>
               <xsl:value-of select="/imp1:verifyLawfulPresenceInput/imp1:RequestNumber"/>
            </imp1:RequestNumber>
            <imp1:PersonID>
               <xsl:value-of select="/imp1:verifyLawfulPresenceInput/imp1:PersonID"/>
            </imp1:PersonID>
         </imp1:lawfulPresenceResponse>
      </imp1:verifyLawfulPresenceOutput>
   </xsl:template>
</xsl:stylesheet>
