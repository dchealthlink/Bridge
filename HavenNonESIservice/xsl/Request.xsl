<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReceiveRequestFromHaven.wsdl"/>
      <rootElement name="VerifyNonESIMECRequest" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../VerifyNonESIFedProxyService.wsdl"/>
      <rootElement name="VerifyNonESIMECRequest" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [MON OCT 17 10:59:34 EDT 2016]. -->
?>
<xsl:stylesheet version="1.0" xmlns:ns6="http://vnem.ee.sim.dsh.cms.hhs.gov"
                xmlns:ns1="http://niem.gov/niem/niem-core/2.0/ESB/V1"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:wsp="http://schemas.xmlsoap.org/ws/2004/09/policy"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns8="http://niem.gov/niem/niem-core/2.0"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:ns11="http://niem.gov/niem/appinfo/2.0"
                xmlns:ns5="http://niem.gov/niem/structures/2.0/ESB/V1"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:ns9="http://niem.gov/niem/structures/2.0"
                xmlns:ns3="http://niem.gov/niem/fbi/2.0/ESB/V1"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ns10="http://niem.gov/niem/usps_states/2.0"
                xmlns:ns7="http://niem.gov/niem/fbi/2.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:WL5G3N3="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Test/HavenNonESIservice/ReceiveRequestFromHaven"
                xmlns:ns2="http://niem.gov/niem/usps_states/2.0/ESB/V1"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:ns4="http://niem.gov/niem/proxy/xsd/2.0/ESB/V1"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns0="http://niem.gov/niem/appinfo/2.0/ESB/V1"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:imp1="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                xmlns:ns12="http://niem.gov/niem/proxy/xsd/2.0"
                exclude-result-prefixes="xsl xsi ns1 xsd plt pc ns5 ns3 tns ns2 ns4 wsdl ns0 jca imp1 ns6 wsp ns8 ns11 ns9 ns10 ns7 WL5G3N3 ns12 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
  <xsl:template match="/">
    <ns6:VerifyNonESIMECRequest>
      <xsl:for-each select="/imp1:VerifyNonESIMECRequest/imp1:IndividualRequest">
        <ns6:IndividualRequest>
          <ns6:Applicant>
            <ns6:PersonSSNIdentification>
              <xsl:value-of select="imp1:Applicant/imp1:PersonSSNIdentification"/>
            </ns6:PersonSSNIdentification>
            <ns6:PersonName>
              <ns6:PersonGivenName>
                <xsl:value-of select="imp1:Applicant/imp1:PersonName/imp1:PersonGivenName"/>
              </ns6:PersonGivenName>
              <xsl:if test="imp1:Applicant/imp1:PersonName/imp1:PersonMiddleName">
                <ns6:PersonMiddleName>
                  <xsl:value-of select="imp1:Applicant/imp1:PersonName/imp1:PersonMiddleName"/>
                </ns6:PersonMiddleName>
              </xsl:if>
              <ns6:PersonSurName>
                <xsl:value-of select="imp1:Applicant/imp1:PersonName/imp1:PersonSurName"/>
              </ns6:PersonSurName>
              <xsl:if test="imp1:Applicant/imp1:PersonName/imp1:PersonNameSuffixText">
                <ns6:PersonNameSuffixText>
                  <xsl:value-of select="imp1:Applicant/imp1:PersonName/imp1:PersonNameSuffixText"/>
                </ns6:PersonNameSuffixText>
              </xsl:if>
            </ns6:PersonName>
            <ns8:PersonBirthDate>
              <xsl:if test="imp1:Applicant/ns1:PersonBirthDate/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="imp1:Applicant/ns1:PersonBirthDate/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <ns8:Date>
                <xsl:if test="imp1:Applicant/ns1:PersonBirthDate/ns1:Date/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="imp1:Applicant/ns1:PersonBirthDate/ns1:Date/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
                <xsl:value-of select="imp1:Applicant/ns1:PersonBirthDate/ns1:Date"/>
                <?oracle-xsl-mapper-position ns8:DateRepresentation?>
              </ns8:Date>
            </ns8:PersonBirthDate>
            <ns8:PersonSexCode>
              <xsl:if test="imp1:Applicant/ns1:PersonSexCode/@xsi:nil">
                <xsl:attribute name="xsi:nil">
                  <xsl:value-of select="imp1:Applicant/ns1:PersonSexCode/@xsi:nil"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="imp1:Applicant/ns1:PersonSexCode"/>
              <?oracle-xsl-mapper-position ns8:PersonSex?>
            </ns8:PersonSexCode>
          </ns6:Applicant>
          <ns8:LocationStateUSPostalServiceCode>
            <xsl:if test="ns1:LocationStateUSPostalServiceCode/@xsi:nil">
              <xsl:attribute name="xsi:nil">
                <xsl:value-of select="ns1:LocationStateUSPostalServiceCode/@xsi:nil"/>
              </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="ns1:LocationStateUSPostalServiceCode"/>
          </ns8:LocationStateUSPostalServiceCode>
          <ns6:InsurancePolicy>
            <ns6:InsurancePolicyEffectiveDate>
              <xsl:value-of select="imp1:InsurancePolicy/imp1:InsurancePolicyEffectiveDate"/>
            </ns6:InsurancePolicyEffectiveDate>
            <ns6:InsurancePolicyExpirationDate>
              <xsl:value-of select="imp1:InsurancePolicy/imp1:InsurancePolicyExpirationDate"/>
            </ns6:InsurancePolicyExpirationDate>
          </ns6:InsurancePolicy>
          <xsl:if test="imp1:Organization">
            <ns6:Organization>
              <xsl:for-each select="imp1:Organization/imp1:OrganizationCode">
                <ns6:OrganizationCode>
                  <xsl:value-of select="."/>
                </ns6:OrganizationCode>
              </xsl:for-each>
            </ns6:Organization>
          </xsl:if>
        </ns6:IndividualRequest>
      </xsl:for-each>
    </ns6:VerifyNonESIMECRequest>
  </xsl:template>
</xsl:stylesheet>