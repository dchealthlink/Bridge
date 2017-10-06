<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ReceiveRequestFromHaven.wsdl"/>
      <rootElement name="VerifyNonESIMECRequest" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"/>
    </source>
    <source type="WSDL">
      <schema location="../VerifyNonESIFedProxyService.wsdl"/>
      <rootElement name="VerifyNonESIMECResponse" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov"/>
      <param name="InvokeFedHub_OutputVariable.body" />
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../ReceiveRequestFromHaven.wsdl"/>
      <rootElement name="VerifyNonESIMECResponse" namespace="http://vnem.ee.sim.dsh.cms.hhs.gov/ESB/V1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [MON OCT 17 16:45:13 EDT 2016]. -->
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
                exclude-result-prefixes="xsl xsi ns6 ns1 wsp xsd plt ns8 pc ns11 ns5 ns9 ns3 ns10 ns7 WL5G3N3 tns ns2 ns4 wsdl ns0 jca imp1 ns12 oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
  <xsl:param name="InvokeFedHub_OutputVariable.body"/>
  <xsl:template match="/">
    <imp1:VerifyNonESIMECResponse>
      <xsl:if test='$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:ResponseMetadata != " "'>
        <imp1:ResponseMetadata>
          <imp1:ResponseCode>
            <xsl:value-of select="$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:ResponseMetadata/ns6:ResponseCode"/>
          </imp1:ResponseCode>
          <imp1:ResponseDescriptionText>
            <xsl:value-of select="$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:ResponseMetadata/ns6:ResponseDescriptionText"/>
          </imp1:ResponseDescriptionText>
          <xsl:if test="$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:ResponseMetadata/ns6:TDSResponseDescriptionText">
            <imp1:TDSResponseDescriptionText>
              <xsl:value-of select="$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:ResponseMetadata/ns6:TDSResponseDescriptionText"/>
            </imp1:TDSResponseDescriptionText>
          </xsl:if>
        </imp1:ResponseMetadata>
      </xsl:if>
      <imp1:IndividualResponseSet>
        <xsl:for-each select="$InvokeFedHub_OutputVariable.body/ns6:VerifyNonESIMECResponse/ns6:IndividualResponseSet/ns6:IndividualResponse">
          <imp1:IndividualResponse>
            <imp1:Applicant>
              <imp1:PersonSSNIdentification>
                <xsl:value-of select="ns6:Applicant/ns6:PersonSSNIdentification"/>
              </imp1:PersonSSNIdentification>
              <imp1:PersonName>
                <imp1:PersonGivenName>
                  <xsl:value-of select="ns6:Applicant/ns6:PersonName/ns6:PersonGivenName"/>
                </imp1:PersonGivenName>
                <xsl:if test="ns6:Applicant/ns6:PersonName/ns6:PersonMiddleName">
                  <imp1:PersonMiddleName>
                    <xsl:value-of select="ns6:Applicant/ns6:PersonName/ns6:PersonMiddleName"/>
                  </imp1:PersonMiddleName>
                </xsl:if>
                <imp1:PersonSurName>
                  <xsl:value-of select="ns6:Applicant/ns6:PersonName/ns6:PersonSurName"/>
                </imp1:PersonSurName>
                <xsl:if test="ns6:Applicant/ns6:PersonName/ns6:PersonNameSuffixText">
                  <imp1:PersonNameSuffixText>
                    <xsl:value-of select="ns6:Applicant/ns6:PersonName/ns6:PersonNameSuffixText"/>
                  </imp1:PersonNameSuffixText>
                </xsl:if>
              </imp1:PersonName>
              <ns1:PersonBirthDate>
                <xsl:if test="ns6:Applicant/ns8:PersonBirthDate/@xsi:nil">
                  <xsl:attribute name="xsi:nil">
                    <xsl:value-of select="ns6:Applicant/ns8:PersonBirthDate/@xsi:nil"/>
                  </xsl:attribute>
                </xsl:if>
              </ns1:PersonBirthDate>
            </imp1:Applicant>
            <imp1:PartialResponseIndicator>
              <xsl:value-of select="ns6:PartialResponseIndicator"/>
            </imp1:PartialResponseIndicator>
            <xsl:for-each select="ns6:OtherCoverage">
              <imp1:OtherCoverage>
                <imp1:OrganizationCode>
                  <xsl:value-of select="ns6:OrganizationCode"/>
                </imp1:OrganizationCode>
                <imp1:ResponseMetadata>
                  <imp1:ResponseCode>
                    <xsl:value-of select="ns6:ResponseMetadata/ns6:ResponseCode"/>
                  </imp1:ResponseCode>
                  <imp1:ResponseDescriptionText>
                    <xsl:value-of select="ns6:ResponseMetadata/ns6:ResponseDescriptionText"/>
                  </imp1:ResponseDescriptionText>
                  <xsl:if test="ns6:ResponseMetadata/ns6:TDSResponseDescriptionText">
                    <imp1:TDSResponseDescriptionText>
                      <xsl:value-of select="ns6:ResponseMetadata/ns6:TDSResponseDescriptionText"/>
                    </imp1:TDSResponseDescriptionText>
                  </xsl:if>
                </imp1:ResponseMetadata>
                <xsl:if test="ns6:MECCoverage">
                  <imp1:MECCoverage>
                    <xsl:if test="ns6:MECCoverage/ns8:LocationStateUSPostalServiceCode">
                      <ns1:LocationStateUSPostalServiceCode>
                        <xsl:if test="ns6:MECCoverage/ns8:LocationStateUSPostalServiceCode/@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="ns6:MECCoverage/ns8:LocationStateUSPostalServiceCode/@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="ns6:MECCoverage/ns8:LocationStateUSPostalServiceCode"/>
                      </ns1:LocationStateUSPostalServiceCode>
                    </xsl:if>
                    <imp1:MECVerificationCode>
                      <xsl:value-of select="ns6:MECCoverage/ns6:MECVerificationCode"/>
                    </imp1:MECVerificationCode>
                    <xsl:for-each select="ns6:MECCoverage/ns8:Insurance">
                      <ns1:Insurance>
                        <xsl:if test="@xsi:nil">
                          <xsl:attribute name="xsi:nil">
                            <xsl:value-of select="@xsi:nil"/>
                          </xsl:attribute>
                        </xsl:if>
                        <ns1:InsuranceEffectiveDate>
                          <xsl:if test="ns8:InsuranceEffectiveDate/@xsi:nil">
                            <xsl:attribute name="xsi:nil">
                              <xsl:value-of select="ns8:InsuranceEffectiveDate/@xsi:nil"/>
                            </xsl:attribute>
                          </xsl:if>
                        </ns1:InsuranceEffectiveDate>
                        <xsl:if test="ns8:InsuranceEndDate">
                          <ns1:InsuranceEndDate>
                            <xsl:if test="ns8:InsuranceEndDate/@xsi:nil">
                              <xsl:attribute name="xsi:nil">
                                <xsl:value-of select="ns8:InsuranceEndDate/@xsi:nil"/>
                              </xsl:attribute>
                            </xsl:if>
                          </ns1:InsuranceEndDate>
                        </xsl:if>
                      </ns1:Insurance>
                    </xsl:for-each>
                  </imp1:MECCoverage>
                </xsl:if>
              </imp1:OtherCoverage>
            </xsl:for-each>
          </imp1:IndividualResponse>
        </xsl:for-each>
      </imp1:IndividualResponseSet>
      <imp1:HavenId>
        <xsl:value-of select="/imp1:VerifyNonESIMECRequest/imp1:HavenID"/>
      </imp1:HavenId>
      <imp1:RequestNumber>
        <xsl:value-of select="/imp1:VerifyNonESIMECRequest/imp1:RequestNumber"/>
      </imp1:RequestNumber>
    </imp1:VerifyNonESIMECResponse>
  </xsl:template>
</xsl:stylesheet>
