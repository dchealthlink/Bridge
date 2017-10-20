<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:vil="http://vilpsav.ee.sim.dsh.cms.hhs.gov" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ssa="http://gov.hhs.cms.hix.dsh.ee.ssa" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:client="http://xmlns.oracle.com/SOA/VerifyLawfulPresenceFedCmpService/VerifyLawfulPresenceFedABCSImpl" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:vcl="http://vclpsav.ee.sim.dsh.cms.hhs.gov" xmlns:ns1="http://vlp.ee.sim.dsh.cms.hhs.gov/ESB/V1" xmlns:tns="http://vlp.ee.services.dsh.cms.hhs.gov/wsdl" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:WL5G3N6="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:vlp="http://vlp.ee.sim.dsh.cms.hhs.gov" xmlns:ctzn="http://gov.hhs.cms.hix.dsh.ee.ctzn" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plnk tns pc ns1 wsdl jca vil wsp ssa vcl WL5G3N6 vlp ctzn oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:template match="/">
      <vlp:Agency3InitVerifRequest>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I327DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I327DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:I327DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:if test="ns1:DHSID/ns1:I327DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:I327DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:I327DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I551DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I551DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:I551DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:choose>
                              <xsl:when test="string-length(ns1:DHSID/ns1:I551DocumentID/ns1:cardNumber) = &quot;13&quot;">
                                 <vlp:ReceiptNumber>
                                    <xsl:value-of select="ns1:DHSID/ns1:I551DocumentID/ns1:cardNumber"/>
                                 </vlp:ReceiptNumber>
                              </xsl:when>
                           </xsl:choose>
                           <xsl:if test="ns1:DHSID/ns1:I551DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:I551DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:I551DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName != &quot;&quot;"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I571DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I571DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:I571DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:if test="ns1:DHSID/ns1:I571DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:I571DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:I571DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I766DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I766DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:I766DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:choose>
                              <xsl:when test="string-length(ns1:DHSID/ns1:I766DocumentID/ns1:cardNumber) = &quot;13&quot;">
                                 <vlp:ReceiptNumber>
                                    <xsl:value-of select="ns1:DHSID/ns1:I766DocumentID/ns1:cardNumber"/>
                                 </vlp:ReceiptNumber>
                              </xsl:when>
                           </xsl:choose>
                           <vlp:DocExpirationDate>
                              <xsl:value-of select="ns1:DHSID/ns1:I766DocumentID/ns1:docExpirationDate"/>
                           </vlp:DocExpirationDate>
                        </vlp:I766DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:certOfCitDocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:CertOfCitDocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:certOfCitDocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <vlp:CitizenshipNumber>
                              <xsl:value-of select="ns1:DHSID/ns1:certOfCitDocumentID/ns1:citizenshipNumber"/>
                           </vlp:CitizenshipNumber>
                        </vlp:CertOfCitDocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:natrOfCertDocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:NatrOfCertDocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:natrOfCertDocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <vlp:NaturalizationNumber>
                              <xsl:value-of select="ns1:DHSID/ns1:natrOfCertDocumentID/ns1:naturalizationNumber"/>
                           </vlp:NaturalizationNumber>
                        </vlp:NatrOfCertDocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:macReadI551DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:MacReadI551DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:macReadI551DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:if test="ns1:DHSID/ns1:macReadI551DocumentID/ns1:visaNumber != &quot;&quot;">
                              <vlp:VisaNumber>
                                 <xsl:value-of select="ns1:DHSID/ns1:macReadI551DocumentID/ns1:visaNumber"/>
                              </vlp:VisaNumber>
                           </xsl:if>
                           <vlp:PassportNumber>
                              <xsl:value-of select="ns1:DHSID/ns1:macReadI551DocumentID/ns1:passportNumber"/>
                           </vlp:PassportNumber>
                           <vlp:CountryOfIssuance>
                              <xsl:value-of select="ns1:DHSID/ns1:macReadI551DocumentID/ns1:countryOfIssuance"/>
                           </vlp:CountryOfIssuance>
                           <xsl:if test="ns1:DHSID/ns1:macReadI551DocumentID/ns1:docExpirationDate">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:macReadI551DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:MacReadI551DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:tempI551DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:TempI551DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:tempI551DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:if test="ns1:DHSID/ns1:tempI551DocumentID/ns1:passportCountry != &quot;&quot;">
                              <vlp:PassportCountry>
                                 <vlp:PassportNumber>
                                    <xsl:value-of select="ns1:DHSID/ns1:tempI551DocumentID/ns1:passportCountry/ns1:passportNumber"/>
                                 </vlp:PassportNumber>
                                 <vlp:CountryOfIssuance>
                                    <xsl:value-of select="ns1:DHSID/ns1:tempI551DocumentID/ns1:passportCountry/ns1:countryOfIssuance"/>
                                 </vlp:CountryOfIssuance>
                              </vlp:PassportCountry>
                           </xsl:if>
                           <xsl:if test="ns1:DHSID/ns1:tempI551DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:tempI551DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:TempI551DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I94DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I94DocumentID>
                           <vlp:I94Number>
                              <xsl:value-of select="ns1:DHSID/ns1:I94DocumentID/ns1:I94Number"/>
                           </vlp:I94Number>
                           <xsl:if test="ns1:DHSID/ns1:I94DocumentID/ns1:SEVISID != &quot;&quot;">
                              <vlp:SEVISID>
                                 <xsl:value-of select="ns1:DHSID/ns1:I94DocumentID/ns1:SEVISID"/>
                              </vlp:SEVISID>
                           </xsl:if>
                           <xsl:if test="ns1:DHSID/ns1:I94DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:I94DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:I94DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I94UnexpForeignPassportDocumentID>
                           <vlp:I94Number>
                              <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:I94Number"/>
                           </vlp:I94Number>
                           <xsl:if test="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:visaNumber != &quot;&quot;">
                              <vlp:VisaNumber>
                                 <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:visaNumber"/>
                              </vlp:VisaNumber>
                           </xsl:if>
                           <vlp:PassportNumber>
                              <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:passportNumber"/>
                           </vlp:PassportNumber>
                           <vlp:CountryOfIssuance>
                              <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:countryOfIssuance"/>
                           </vlp:CountryOfIssuance>
                           <xsl:if test="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:SEVISID != &quot;&quot;">
                              <vlp:SEVISID>
                                 <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:SEVISID"/>
                              </vlp:SEVISID>
                           </xsl:if>
                           <vlp:DocExpirationDate>
                              <xsl:value-of select="ns1:DHSID/ns1:I94UnexpForeignPassportDocumentID/ns1:docExpirationDate"/>
                           </vlp:DocExpirationDate>
                        </vlp:I94UnexpForeignPassportDocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:unexpForeignPassportDocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:UnexpForeignPassportDocumentID>
                           <xsl:if test="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:I94Number != &quot;&quot;">
                              <vlp:I94Number>
                                 <xsl:value-of select="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:I94Number"/>
                              </vlp:I94Number>
                           </xsl:if>
                           <vlp:PassportNumber>
                              <xsl:value-of select="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:passportNumber"/>
                           </vlp:PassportNumber>
                           <vlp:CountryOfIssuance>
                              <xsl:value-of select="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:countryOfIssuance"/>
                           </vlp:CountryOfIssuance>
                           <xsl:if test="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:SEVISID != &quot;&quot;">
                              <vlp:SEVISID>
                                 <xsl:value-of select="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:SEVISID"/>
                              </vlp:SEVISID>
                           </xsl:if>
                           <vlp:DocExpirationDate>
                              <xsl:value-of select="ns1:DHSID/ns1:unexpForeignPassportDocumentID/ns1:docExpirationDate"/>
                           </vlp:DocExpirationDate>
                        </vlp:UnexpForeignPassportDocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:I20DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:I20DocumentID>
                           <xsl:if test="ns1:DHSID/ns1:I20DocumentID/ns1:I94Number != &quot;&quot;">
                              <vlp:I94Number>
                                 <xsl:value-of select="ns1:DHSID/ns1:I20DocumentID/ns1:I94Number"/>
                              </vlp:I94Number>
                           </xsl:if>
                           <vlp:SEVISID>
                              <xsl:value-of select="ns1:DHSID/ns1:I20DocumentID/ns1:SEVISID"/>
                           </vlp:SEVISID>
                           <xsl:if test="ns1:DHSID/ns1:I20DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:I20DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:I20DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:DS2019DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:DS2019DocumentID>
                           <xsl:if test="ns1:DHSID/ns1:DS2019DocumentID/ns1:I94Number != &quot;&quot;">
                              <vlp:I94Number>
                                 <xsl:value-of select="ns1:DHSID/ns1:DS2019DocumentID/ns1:I94Number"/>
                              </vlp:I94Number>
                           </xsl:if>
                           <vlp:SEVISID>
                              <xsl:value-of select="ns1:DHSID/ns1:DS2019DocumentID/ns1:SEVISID"/>
                           </vlp:SEVISID>
                           <xsl:if test="ns1:DHSID/ns1:DS2019DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:DS2019DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                        </vlp:DS2019DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:otherCase1DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:OtherCase1DocumentID>
                           <vlp:AlienNumber>
                              <xsl:call-template name="stripSpecialChars">
                                 <xsl:with-param name="vstring" select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest/ns1:DHSID/ns1:otherCase1DocumentID/ns1:alienNumber"/>
                              </xsl:call-template>
                           </vlp:AlienNumber>
                           <xsl:if test="ns1:DHSID/ns1:otherCase1DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:otherCase1DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                           <vlp:DocDescReq>
                              <xsl:value-of select="ns1:DHSID/ns1:otherCase1DocumentID/ns1:docDescReq"/>
                           </vlp:DocDescReq>
                        </vlp:OtherCase1DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
         <xsl:for-each select="/ns1:verifyLawfulPresenceInput/ns1:lawfulPresenceRequest">
            <xsl:choose>
               <xsl:when test="ns1:DHSID/ns1:otherCase2DocumentID != &quot;&quot;">
                  <vlp:Agency3InitVerifRequestSet>
                     <vlp:DHSID>
                        <vlp:OtherCase2DocumentID>
                           <vlp:I94Number>
                              <xsl:value-of select="ns1:DHSID/ns1:otherCase2DocumentID/ns1:I94Number"/>
                           </vlp:I94Number>
                           <xsl:if test="ns1:DHSID/ns1:otherCase2DocumentID/ns1:SEVISID != &quot;&quot;">
                              <vlp:SEVISID>
                                 <xsl:value-of select="ns1:DHSID/ns1:otherCase2DocumentID/ns1:SEVISID"/>
                              </vlp:SEVISID>
                           </xsl:if>
                           <xsl:if test="ns1:DHSID/ns1:otherCase2DocumentID/ns1:docExpirationDate != &quot;&quot;">
                              <vlp:DocExpirationDate>
                                 <xsl:value-of select="ns1:DHSID/ns1:otherCase2DocumentID/ns1:docExpirationDate"/>
                              </vlp:DocExpirationDate>
                           </xsl:if>
                           <vlp:DocDescReq>
                              <xsl:value-of select="ns1:DHSID/ns1:otherCase2DocumentID/ns1:docDescReq"/>
                           </vlp:DocDescReq>
                        </vlp:OtherCase2DocumentID>
                     </vlp:DHSID>
                     <vlp:FirstName>
                        <xsl:value-of select="ns1:firstName"/>
                     </vlp:FirstName>
                     <xsl:if test="ns1:middleName != &quot;&quot;">
                        <vlp:MiddleName>
                           <xsl:value-of select="ns1:middleName"/>
                        </vlp:MiddleName>
                     </xsl:if>
                     <vlp:LastName>
                        <xsl:value-of select="ns1:lastName"/>
                     </vlp:LastName>
                     <vlp:DateOfBirth>
                        <xsl:value-of select="ns1:dateOfBirth"/>
                     </vlp:DateOfBirth>
                     <xsl:if test="ns1:AKA != &quot;&quot;">
                        <vlp:AKA>
                           <xsl:value-of select="ns1:AKA"/>
                        </vlp:AKA>
                     </xsl:if>
                     <xsl:if test="ns1:comments != &quot;&quot;">
                        <vlp:Comments>
                           <xsl:value-of select="ns1:comments"/>
                        </vlp:Comments>
                     </xsl:if>
                     <vlp:RequestedCoverageStartDate>
                        <xsl:value-of select="ns1:requestedCoverageStartDate"/>
                     </vlp:RequestedCoverageStartDate>
                     <vlp:FiveYearBarApplicabilityIndicator>
                        <xsl:value-of select="ns1:fiveYearBarApplicabilityIndicator"/>
                     </vlp:FiveYearBarApplicabilityIndicator>
                     <vlp:RequestSponsorDataIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestSponsorDataIndicator>
                     <vlp:RequestGrantDateIndicator>
                        <xsl:text disable-output-escaping="no">false</xsl:text>
                     </vlp:RequestGrantDateIndicator>
                     <vlp:RequesterCommentsForHub>
                        <xsl:text disable-output-escaping="no">true</xsl:text>
                     </vlp:RequesterCommentsForHub>
                     <vlp:CategoryCode>
                        <xsl:text disable-output-escaping="no">C40</xsl:text>
                     </vlp:CategoryCode>
                  </vlp:Agency3InitVerifRequestSet>
               </xsl:when>
            </xsl:choose>
         </xsl:for-each>
      </vlp:Agency3InitVerifRequest>
   </xsl:template>
   <xsl:template name="stripSpecialChars">
      <xsl:param name="vstring"/>
      <xsl:variable name="AllowedSymbols" select="'0123456789'"/>
      <xsl:value-of select="         translate($vstring,translate($vstring, $AllowedSymbols, ''),'')                "/>
   </xsl:template>
</xsl:stylesheet>
