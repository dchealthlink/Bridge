<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://niem.gov/niem/niem-core/2.0" xmlns:ns4="http://niem.gov/niem/appinfo/2.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns1="http://niem.gov/niem/structures/2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns2="http://niem.gov/niem/usps_states/2.0" xmlns:exch="http://ssac.ee.sim.dsh.cms.hhs.gov" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:ns3="http://codes.ssac.ee.sim.dsh.cms.hhs.gov" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:tns="http://extn.ssac.ee.sim.dsh.cms.hhs.gov" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns5="http://niem.gov/niem/proxy/xsd/2.0" exclude-result-prefixes="xsl xsi xsd ns0 ns4 ns1 ns2 exch soap12 ns3 wsdl tns ns5 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:template match="/">
      <exch:SSACompositeRequest>
         <xsl:if test="/exch:SSACompositeRequest/@ns1:id">
            <xsl:attribute name="ns1:id">
               <xsl:value-of select="/exch:SSACompositeRequest/@ns1:id"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:if test="/exch:SSACompositeRequest/@ns1:metadata">
            <xsl:attribute name="ns1:metadata">
               <xsl:value-of select="/exch:SSACompositeRequest/@ns1:metadata"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:if test="/exch:SSACompositeRequest/@ns1:linkMetadata">
            <xsl:attribute name="ns1:linkMetadata">
               <xsl:value-of select="/exch:SSACompositeRequest/@ns1:linkMetadata"/>
            </xsl:attribute>
         </xsl:if>
         <xsl:for-each select="/exch:SSACompositeRequest/tns:SSACompositeIndividualRequest">
            <tns:SSACompositeIndividualRequest>
               <xsl:if test="@ns1:id">
                  <xsl:attribute name="ns1:id">
                     <xsl:value-of select="@ns1:id"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:if test="@ns1:metadata">
                  <xsl:attribute name="ns1:metadata">
                     <xsl:value-of select="@ns1:metadata"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:if test="@ns1:linkMetadata">
                  <xsl:attribute name="ns1:linkMetadata">
                     <xsl:value-of select="@ns1:linkMetadata"/>
                  </xsl:attribute>
               </xsl:if>
               <tns:Person>
                  <xsl:if test="tns:Person/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:Person/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:Person/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:Person/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:Person/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:Person/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <tns:PersonSSNIdentification>
                     <xsl:if test="tns:Person/tns:PersonSSNIdentification/@ns1:id">
                        <xsl:attribute name="ns1:id">
                           <xsl:value-of select="tns:Person/tns:PersonSSNIdentification/@ns1:id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonSSNIdentification/@ns1:metadata">
                        <xsl:attribute name="ns1:metadata">
                           <xsl:value-of select="tns:Person/tns:PersonSSNIdentification/@ns1:metadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonSSNIdentification/@ns1:linkMetadata">
                        <xsl:attribute name="ns1:linkMetadata">
                           <xsl:value-of select="tns:Person/tns:PersonSSNIdentification/@ns1:linkMetadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="tns:Person/tns:PersonSSNIdentification"/>
                  </tns:PersonSSNIdentification>
                  <tns:PersonName>
                     <xsl:if test="tns:Person/tns:PersonName/@ns1:id">
                        <xsl:attribute name="ns1:id">
                           <xsl:value-of select="tns:Person/tns:PersonName/@ns1:id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonName/@ns1:metadata">
                        <xsl:attribute name="ns1:metadata">
                           <xsl:value-of select="tns:Person/tns:PersonName/@ns1:metadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonName/@ns1:linkMetadata">
                        <xsl:attribute name="ns1:linkMetadata">
                           <xsl:value-of select="tns:Person/tns:PersonName/@ns1:linkMetadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonName/tns:PersonGivenName">
                        <tns:PersonGivenName>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:id">
                              <xsl:attribute name="ns1:id">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:id"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:metadata">
                              <xsl:attribute name="ns1:metadata">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:metadata"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:linkMetadata">
                              <xsl:attribute name="ns1:linkMetadata">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonGivenName/@ns1:linkMetadata"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonGivenName"/>
                        </tns:PersonGivenName>
                     </xsl:if>
                     <xsl:if test="tns:Person/tns:PersonName/tns:PersonMiddleName">
                        <tns:PersonMiddleName>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:id">
                              <xsl:attribute name="ns1:id">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:id"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:metadata">
                              <xsl:attribute name="ns1:metadata">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:metadata"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:linkMetadata">
                              <xsl:attribute name="ns1:linkMetadata">
                                 <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonMiddleName/@ns1:linkMetadata"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonMiddleName"/>
                        </tns:PersonMiddleName>
                     </xsl:if>
                     <tns:PersonSurName>
                        <xsl:if test="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:id">
                           <xsl:attribute name="ns1:id">
                              <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:id"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:metadata">
                           <xsl:attribute name="ns1:metadata">
                              <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:metadata"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:linkMetadata">
                           <xsl:attribute name="ns1:linkMetadata">
                              <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonSurName/@ns1:linkMetadata"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:Person/tns:PersonName/tns:PersonSurName"/>
                     </tns:PersonSurName>
                  </tns:PersonName>
                  <ns0:PersonBirthDate>
                     <xsl:if test="tns:Person/ns0:PersonBirthDate/@ns1:id">
                        <xsl:attribute name="ns1:id">
                           <xsl:value-of select="tns:Person/ns0:PersonBirthDate/@ns1:id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/ns0:PersonBirthDate/@ns1:metadata">
                        <xsl:attribute name="ns1:metadata">
                           <xsl:value-of select="tns:Person/ns0:PersonBirthDate/@ns1:metadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/ns0:PersonBirthDate/@ns1:linkMetadata">
                        <xsl:attribute name="ns1:linkMetadata">
                           <xsl:value-of select="tns:Person/ns0:PersonBirthDate/@ns1:linkMetadata"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="tns:Person/ns0:PersonBirthDate/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="tns:Person/ns0:PersonBirthDate/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <ns0:Date>
                        <xsl:if test="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:id">
                           <xsl:attribute name="ns1:id">
                              <xsl:value-of select="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:id"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:metadata">
                           <xsl:attribute name="ns1:metadata">
                              <xsl:value-of select="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:metadata"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:linkMetadata">
                           <xsl:attribute name="ns1:linkMetadata">
                              <xsl:value-of select="tns:Person/ns0:PersonBirthDate/ns0:Date/@ns1:linkMetadata"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="tns:Person/ns0:PersonBirthDate/ns0:Date/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="tns:Person/ns0:PersonBirthDate/ns0:Date/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="tns:Person/ns0:PersonBirthDate/ns0:Date"/>
                     </ns0:Date>
                  </ns0:PersonBirthDate>
               </tns:Person>
               <tns:RequestCitizenshipVerificationIndicator>
                  <xsl:if test="tns:RequestCitizenshipVerificationIndicator/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:RequestCitizenshipVerificationIndicator/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestCitizenshipVerificationIndicator/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:RequestCitizenshipVerificationIndicator/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestCitizenshipVerificationIndicator/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:RequestCitizenshipVerificationIndicator/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="tns:RequestCitizenshipVerificationIndicator"/>
               </tns:RequestCitizenshipVerificationIndicator>
               <tns:RequestIncarcerationVerificationIndicator>
                  <xsl:if test="tns:RequestIncarcerationVerificationIndicator/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:RequestIncarcerationVerificationIndicator/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestIncarcerationVerificationIndicator/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:RequestIncarcerationVerificationIndicator/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestIncarcerationVerificationIndicator/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:RequestIncarcerationVerificationIndicator/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="tns:RequestIncarcerationVerificationIndicator"/>
               </tns:RequestIncarcerationVerificationIndicator>
               <tns:RequestTitleIIMonthlyIncomeVerificationIndicator>
                  <xsl:if test="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:RequestTitleIIMonthlyIncomeVerificationIndicator/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="tns:RequestTitleIIMonthlyIncomeVerificationIndicator"/>
               </tns:RequestTitleIIMonthlyIncomeVerificationIndicator>
               <tns:RequestTitleIIAnnualIncomeVerificationIndicator>
                  <xsl:if test="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:RequestTitleIIAnnualIncomeVerificationIndicator/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="tns:RequestTitleIIAnnualIncomeVerificationIndicator"/>
               </tns:RequestTitleIIAnnualIncomeVerificationIndicator>
               <tns:RequestQuartersOfCoverageVerificationIndicator>
                  <xsl:if test="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:id">
                     <xsl:attribute name="ns1:id">
                        <xsl:value-of select="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:id"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:metadata">
                     <xsl:attribute name="ns1:metadata">
                        <xsl:value-of select="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:metadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:linkMetadata">
                     <xsl:attribute name="ns1:linkMetadata">
                        <xsl:value-of select="tns:RequestQuartersOfCoverageVerificationIndicator/@ns1:linkMetadata"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="tns:RequestQuartersOfCoverageVerificationIndicator"/>
               </tns:RequestQuartersOfCoverageVerificationIndicator>
               <xsl:if test="tns:RequestTitleIIMonthlyIncomeDate">
                  <tns:RequestTitleIIMonthlyIncomeDate>
                     <xsl:value-of select="tns:RequestTitleIIMonthlyIncomeDate"/>
                  </tns:RequestTitleIIMonthlyIncomeDate>
               </xsl:if>
               <xsl:if test="tns:RequestTitleIIAnnualIncomeDate">
                  <tns:RequestTitleIIAnnualIncomeDate>
                     <xsl:value-of select="tns:RequestTitleIIAnnualIncomeDate"/>
                  </tns:RequestTitleIIAnnualIncomeDate>
               </xsl:if>
            </tns:SSACompositeIndividualRequest>
         </xsl:for-each>
      </exch:SSACompositeRequest>
   </xsl:template>
</xsl:stylesheet>
