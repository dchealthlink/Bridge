<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://hix.cms.gov/0.1/hix-core" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns4="http://niem.gov/niem/niem-core/2.0" xmlns:ns5="http://niem.gov/niem/appinfo/2.1" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns6="http://niem.gov/niem/appinfo/2.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/SOA_APP/VerifyAnnualIncomeService/ConsumeIRSReq" xmlns:ns0="http://ifsv.dsh.cms.gov/extension/1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://niem.gov/niem/structures/2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:imp1="http://ifsv.dsh.cms.gov/exchange/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns1="http://hix.cms.gov/0.1/hix-types" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns7="http://hix.cms.gov/0.1/hix-ee" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns8="http://niem.gov/niem/proxy/xsd/2.0" exclude-result-prefixes="xsl xsi ns2 xsd plt ns4 ns5 pc ns6 tns ns0 ns3 imp1 wsdl ns1 jca ns7 ns8 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="Consume_Message_InputVariable.body"/>
   <xsl:template match="/">
      <imp1:IFSVResponse>
         <ns0:RequestNumber>
            <xsl:value-of select="$Consume_Message_InputVariable.body/imp1:IFSVRequest/ns0:RequestNumber"/>
         </ns0:RequestNumber>
         <xsl:if test="/imp1:IFSVResponse/ns0:IRSResponse != &quot;&quot;">
            <ns0:IRSResponse>
               <xsl:if test="/imp1:IFSVResponse/ns0:IRSResponse/ns2:RequestID != &quot;&quot;">
                  <ns2:RequestID>
                     <xsl:value-of select="/imp1:IFSVResponse/ns0:IRSResponse/ns2:RequestID"/>
                  </ns2:RequestID>
               </xsl:if>
               <xsl:if test="/imp1:IFSVResponse/ns0:IRSResponse/ns0:Household">
                  <ns0:Household>
                     <xsl:if test="/imp1:IFSVResponse/ns0:IRSResponse/ns0:Household/ns0:Income">
                        <ns0:Income>
                           <ns2:IncomeAmount>
                              <xsl:value-of select="/imp1:IFSVResponse/ns0:IRSResponse/ns0:Household/ns0:Income/ns2:IncomeAmount"/>
                           </ns2:IncomeAmount>
                        </ns0:Income>
                     </xsl:if>
                     <xsl:for-each select="/imp1:IFSVResponse/ns0:IRSResponse/ns0:Household/ns0:ApplicantVerification">
                        <ns0:ApplicantVerification>
                           <ns0:TaxReturn>
                              <ns7:PrimaryTaxFiler>
                                 <ns2:TINIdentification>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:PrimaryTaxFiler/ns2:TINIdentification"/>
                                 </ns2:TINIdentification>
                              </ns7:PrimaryTaxFiler>
                              <xsl:if test="ns0:TaxReturn/ns7:SpouseTaxFiler">
                                 <ns7:SpouseTaxFiler>
                                    <ns2:TINIdentification>
                                       <xsl:value-of select="ns0:TaxReturn/ns7:SpouseTaxFiler/ns2:TINIdentification"/>
                                    </ns2:TINIdentification>
                                 </ns7:SpouseTaxFiler>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnYear">
                                 <ns7:TaxReturnYear>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnYear"/>
                                 </ns7:TaxReturnYear>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnFilingStatusCode">
                                 <ns7:TaxReturnFilingStatusCode>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnFilingStatusCode"/>
                                 </ns7:TaxReturnFilingStatusCode>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnAGIAmount">
                                 <ns7:TaxReturnAGIAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnAGIAmount"/>
                                 </ns7:TaxReturnAGIAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnMAGIAmount">
                                 <ns7:TaxReturnMAGIAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnMAGIAmount"/>
                                 </ns7:TaxReturnMAGIAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnTaxableSocialSecurityBenefitsAmount">
                                 <ns7:TaxReturnTaxableSocialSecurityBenefitsAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnTaxableSocialSecurityBenefitsAmount"/>
                                 </ns7:TaxReturnTaxableSocialSecurityBenefitsAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnTotalExemptionsQuantity">
                                 <ns7:TaxReturnTotalExemptionsQuantity>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnTotalExemptionsQuantity"/>
                                 </ns7:TaxReturnTotalExemptionsQuantity>
                              </xsl:if>
                           </ns0:TaxReturn>
                           <xsl:if test="ns2:ResponseMetadata">
                              <ns2:ResponseMetadata>
                                 <ns2:ResponseCode>
                                    <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseCode"/>
                                 </ns2:ResponseCode>
                                 <ns2:ResponseDescriptionText>
                                    <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseDescriptionText"/>
                                 </ns2:ResponseDescriptionText>
                                 <xsl:if test="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText">
                                    <ns2:TDSResponseDescriptionText>
                                       <xsl:value-of select="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText"/>
                                    </ns2:TDSResponseDescriptionText>
                                 </xsl:if>
                              </ns2:ResponseMetadata>
                           </xsl:if>
                        </ns0:ApplicantVerification>
                     </xsl:for-each>
                     <xsl:for-each select="/imp1:IFSVResponse/ns0:IRSResponse/ns0:Household/ns0:DependentVerification">
                        <ns0:DependentVerification>
                           <ns0:TaxReturn>
                              <xsl:if test="ns0:TaxReturn/ns7:SpouseTaxFiler">
                                 <ns7:SpouseTaxFiler/>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnYear">
                                 <ns7:TaxReturnYear>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnYear"/>
                                 </ns7:TaxReturnYear>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnFilingStatusCode">
                                 <ns7:TaxReturnFilingStatusCode>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnFilingStatusCode"/>
                                 </ns7:TaxReturnFilingStatusCode>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnAGIAmount">
                                 <ns7:TaxReturnAGIAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnAGIAmount"/>
                                 </ns7:TaxReturnAGIAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnMAGIAmount">
                                 <ns7:TaxReturnMAGIAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnMAGIAmount"/>
                                 </ns7:TaxReturnMAGIAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnTaxableSocialSecurityBenefitsAmount">
                                 <ns7:TaxReturnTaxableSocialSecurityBenefitsAmount>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnTaxableSocialSecurityBenefitsAmount"/>
                                 </ns7:TaxReturnTaxableSocialSecurityBenefitsAmount>
                              </xsl:if>
                              <xsl:if test="ns0:TaxReturn/ns7:TaxReturnTotalExemptionsQuantity">
                                 <ns7:TaxReturnTotalExemptionsQuantity>
                                    <xsl:value-of select="ns0:TaxReturn/ns7:TaxReturnTotalExemptionsQuantity"/>
                                 </ns7:TaxReturnTotalExemptionsQuantity>
                              </xsl:if>
                           </ns0:TaxReturn>
                           <xsl:if test="ns2:ResponseMetadata">
                              <ns2:ResponseMetadata>
                                 <ns2:ResponseCode>
                                    <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseCode"/>
                                 </ns2:ResponseCode>
                                 <ns2:ResponseDescriptionText>
                                    <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseDescriptionText"/>
                                 </ns2:ResponseDescriptionText>
                                 <xsl:if test="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText">
                                    <ns2:TDSResponseDescriptionText>
                                       <xsl:value-of select="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText"/>
                                    </ns2:TDSResponseDescriptionText>
                                 </xsl:if>
                              </ns2:ResponseMetadata>
                           </xsl:if>
                        </ns0:DependentVerification>
                     </xsl:for-each>
                  </ns0:Household>
               </xsl:if>
            </ns0:IRSResponse>
         </xsl:if>
         <ns0:ErrorMessage>
            <xsl:for-each select="/imp1:IFSVResponse/ns0:ErrorMessage/ns0:ErrorMessageDetail">
               <ns0:ErrorMessageDetail>
                  <ns2:ResponseMetadata>
                     <ns2:ResponseCode>
                        <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseCode"/>
                     </ns2:ResponseCode>
                     <ns2:ResponseDescriptionText>
                        <xsl:value-of select="ns2:ResponseMetadata/ns2:ResponseDescriptionText"/>
                     </ns2:ResponseDescriptionText>
                     <xsl:if test="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText">
                        <ns2:TDSResponseDescriptionText>
                           <xsl:value-of select="ns2:ResponseMetadata/ns2:TDSResponseDescriptionText"/>
                        </ns2:TDSResponseDescriptionText>
                     </xsl:if>
                  </ns2:ResponseMetadata>
                  <xsl:if test="ns0:XPathContent != &quot;&quot;">
                     <ns0:XPathContent>
                        <xsl:value-of select="ns0:XPathContent"/>
                     </ns0:XPathContent>
                  </xsl:if>
               </ns0:ErrorMessageDetail>
            </xsl:for-each>
         </ns0:ErrorMessage>
      </imp1:IFSVResponse>
   </xsl:template>
</xsl:stylesheet>
