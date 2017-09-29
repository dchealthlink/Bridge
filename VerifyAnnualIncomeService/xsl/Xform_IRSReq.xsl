<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns2="http://hix.cms.gov/0.1/hix-core" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns4="http://niem.gov/niem/niem-core/2.0" xmlns:ns5="http://niem.gov/niem/appinfo/2.1" xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:ns6="http://niem.gov/niem/appinfo/2.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/SOA_APP/VerifyAnnualIncomeService/ConsumeIRSReq" xmlns:ns0="http://ifsv.dsh.cms.gov/extension/1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns3="http://niem.gov/niem/structures/2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:imp1="http://ifsv.dsh.cms.gov/exchange/1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns1="http://hix.cms.gov/0.1/hix-types" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ns7="http://hix.cms.gov/0.1/hix-ee" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns8="http://niem.gov/niem/proxy/xsd/2.0" exclude-result-prefixes="xsl xsi ns2 xsd plt ns4 ns5 pc ns6 tns ns0 ns3 imp1 wsdl ns1 jca ns7 ns8 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:template match="/">
      <imp1:IFSVRequest>
         <ns2:RequestID>
            <xsl:value-of select="/imp1:IFSVRequest/ns2:RequestID"/>
         </ns2:RequestID>
         <xsl:for-each select="/imp1:IFSVRequest/ns0:IFSVApplicant">
            <ns0:IFSVApplicant>
               <ns0:Person>
                  <ns4:PersonName>
                     <xsl:if test="ns0:Person/ns4:PersonName/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns0:Person/ns4:PersonName/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <ns4:PersonGivenName>
                        <xsl:if test="ns0:Person/ns4:PersonName/ns4:PersonGivenName/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonGivenName/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonGivenName"/>
                     </ns4:PersonGivenName>
                     <xsl:if test="ns0:Person/ns4:PersonName/ns4:PersonMiddleName">
                        <ns4:PersonMiddleName>
                           <xsl:if test="ns0:Person/ns4:PersonName/ns4:PersonMiddleName/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                 <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonMiddleName/@xsi:nil"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonMiddleName"/>
                        </ns4:PersonMiddleName>
                     </xsl:if>
                     <ns4:PersonSurName>
                        <xsl:if test="ns0:Person/ns4:PersonName/ns4:PersonSurName/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonSurName/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns0:Person/ns4:PersonName/ns4:PersonSurName"/>
                     </ns4:PersonSurName>
                  </ns4:PersonName>
                  <ns4:PersonSSNIdentification>
                     <xsl:if test="ns0:Person/ns4:PersonSSNIdentification/@xsi:nil">
                        <xsl:attribute name="xsi:nil">
                           <xsl:value-of select="ns0:Person/ns4:PersonSSNIdentification/@xsi:nil"/>
                        </xsl:attribute>
                     </xsl:if>
                     <ns4:IdentificationID>
                        <xsl:if test="ns0:Person/ns4:PersonSSNIdentification/ns4:IdentificationID/@xsi:nil">
                           <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="ns0:Person/ns4:PersonSSNIdentification/ns4:IdentificationID/@xsi:nil"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns0:Person/ns4:PersonSSNIdentification/ns4:IdentificationID"/>
                     </ns4:IdentificationID>
                  </ns4:PersonSSNIdentification>
               </ns0:Person>
               <ns0:TaxFilerCategoryCode>
                  <xsl:value-of select="ns0:TaxFilerCategoryCode"/>
               </ns0:TaxFilerCategoryCode>
            </ns0:IFSVApplicant>
         </xsl:for-each>
      </imp1:IFSVRequest>
   </xsl:template>
</xsl:stylesheet>
