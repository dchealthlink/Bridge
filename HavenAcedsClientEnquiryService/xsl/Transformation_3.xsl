<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../ConsumeClientEnquryRequest.wsdl"/>
      <rootElement name="ClientInquiryResponse" namespace="http://xmlns.dhs.dc.gov/DCAS/ESB/ACDService/V1"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../ConsumeClientEnquryRequest.wsdl"/>
      <rootElement name="ClientInquiryResponse" namespace="http://xmlns.dhs.dc.gov/DCAS/ESB/ACDService/V1"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [TUE NOV 15 14:00:33 EST 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Test/HavenAcedsClientEnquiryService/ConsumeClientEnquryRequest"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:imp1="http://xmlns.dhs.dc.gov/DCAS/ESB/ACDService/V1"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl tns xsd plt imp1 pc wsdl jca mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
  <xsl:template match="/">
    <imp1:ClientInquiryResponse>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:RequestNumber">
        <imp1:RequestNumber>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:RequestNumber/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:RequestNumber/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:RequestNumber"/>
        </imp1:RequestNumber>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-CODE">
        <imp1:ACEDS_CONDITION-CODE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-CODE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-CODE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-CODE"/>
        </imp1:ACEDS_CONDITION-CODE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-DESC">
        <imp1:ACEDS_CONDITION-DESC>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-DESC/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-DESC/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CONDITION-DESC"/>
        </imp1:ACEDS_CONDITION-DESC>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_USER-ID">
        <imp1:ACEDS_USER-ID>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_USER-ID/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_USER-ID/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_USER-ID"/>
        </imp1:ACEDS_USER-ID>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-I">
        <imp1:ACEDS_CLIENT-NUMBER-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-I"/>
        </imp1:ACEDS_CLIENT-NUMBER-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_LAST-NAME-I">
        <imp1:ACEDS_LAST-NAME-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_LAST-NAME-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_LAST-NAME-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_LAST-NAME-I"/>
        </imp1:ACEDS_LAST-NAME-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_FIRST-NAME-I">
        <imp1:ACEDS_FIRST-NAME-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_FIRST-NAME-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_FIRST-NAME-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_FIRST-NAME-I"/>
        </imp1:ACEDS_FIRST-NAME-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_MIDDLE-NAME-I">
        <imp1:ACEDS_MIDDLE-NAME-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_MIDDLE-NAME-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_MIDDLE-NAME-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_MIDDLE-NAME-I"/>
        </imp1:ACEDS_MIDDLE-NAME-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SUFFIX-I">
        <imp1:ACEDS_SUFFIX-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SUFFIX-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SUFFIX-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SUFFIX-I"/>
        </imp1:ACEDS_SUFFIX-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_DATE-OF-BIRTH-I">
        <imp1:ACEDS_DATE-OF-BIRTH-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_DATE-OF-BIRTH-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_DATE-OF-BIRTH-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_DATE-OF-BIRTH-I"/>
        </imp1:ACEDS_DATE-OF-BIRTH-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SEX-I">
        <imp1:ACEDS_SEX-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SEX-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SEX-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SEX-I"/>
        </imp1:ACEDS_SEX-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SSN-I">
        <imp1:ACEDS_SSN-I>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_SSN-I/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SSN-I/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_SSN-I"/>
        </imp1:ACEDS_SSN-I>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-AMT">
        <imp1:ACEDS_INCOME-WA-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-AMT"/>
        </imp1:ACEDS_INCOME-WA-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-TYPE">
        <imp1:ACEDS_INCOME-WA-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-WA-TYPE"/>
        </imp1:ACEDS_INCOME-WA-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-AMT">
        <imp1:ACEDS_INCOME-SE-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-AMT"/>
        </imp1:ACEDS_INCOME-SE-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-TYPE">
        <imp1:ACEDS_INCOME-SE-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SE-TYPE"/>
        </imp1:ACEDS_INCOME-SE-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-AMT">
        <imp1:ACEDS_INCOME-AL-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-AMT"/>
        </imp1:ACEDS_INCOME-AL-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-TYPE">
        <imp1:ACEDS_INCOME-AL-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-AL-TYPE"/>
        </imp1:ACEDS_INCOME-AL-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-AMT">
        <imp1:ACEDS_INCOME-DV-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-AMT"/>
        </imp1:ACEDS_INCOME-DV-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-TYPE">
        <imp1:ACEDS_INCOME-DV-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DV-TYPE"/>
        </imp1:ACEDS_INCOME-DV-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-AMT">
        <imp1:ACEDS_INCOME-PE-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-AMT"/>
        </imp1:ACEDS_INCOME-PE-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-TYPE">
        <imp1:ACEDS_INCOME-PE-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PE-TYPE"/>
        </imp1:ACEDS_INCOME-PE-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-AMT">
        <imp1:ACEDS_INCOME-RO-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-AMT"/>
        </imp1:ACEDS_INCOME-RO-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-TYPE">
        <imp1:ACEDS_INCOME-RO-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-RO-TYPE"/>
        </imp1:ACEDS_INCOME-RO-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-AMT">
        <imp1:ACEDS_INCOME-SS-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-AMT"/>
        </imp1:ACEDS_INCOME-SS-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-TYPE">
        <imp1:ACEDS_INCOME-SS-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SS-TYPE"/>
        </imp1:ACEDS_INCOME-SS-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-AMT">
        <imp1:ACEDS_INCOME-UB-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-AMT"/>
        </imp1:ACEDS_INCOME-UB-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-TYPE">
        <imp1:ACEDS_INCOME-UB-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-UB-TYPE"/>
        </imp1:ACEDS_INCOME-UB-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-AMT">
        <imp1:ACEDS_INCOME-LS-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-AMT"/>
        </imp1:ACEDS_INCOME-LS-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-TYPE">
        <imp1:ACEDS_INCOME-LS-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-LS-TYPE"/>
        </imp1:ACEDS_INCOME-LS-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-AMT">
        <imp1:ACEDS_INCOME-DI-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-AMT"/>
        </imp1:ACEDS_INCOME-DI-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-TYPE">
        <imp1:ACEDS_INCOME-DI-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-DI-TYPE"/>
        </imp1:ACEDS_INCOME-DI-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-AMT">
        <imp1:ACEDS_INCOME-MA-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-AMT"/>
        </imp1:ACEDS_INCOME-MA-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-TYPE">
        <imp1:ACEDS_INCOME-MA-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-MA-TYPE"/>
        </imp1:ACEDS_INCOME-MA-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-AMT">
        <imp1:ACEDS_INCOME-SB-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-AMT"/>
        </imp1:ACEDS_INCOME-SB-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-TYPE">
        <imp1:ACEDS_INCOME-SB-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-SB-TYPE"/>
        </imp1:ACEDS_INCOME-SB-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-AMT">
        <imp1:ACEDS_INCOME-PW-AMT>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-AMT/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-AMT/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-AMT"/>
        </imp1:ACEDS_INCOME-PW-AMT>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-TYPE">
        <imp1:ACEDS_INCOME-PW-TYPE>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-TYPE/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-TYPE/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-PW-TYPE"/>
        </imp1:ACEDS_INCOME-PW-TYPE>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-VER-FLAG">
        <imp1:ACEDS_INCOME-VER-FLAG>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-VER-FLAG/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-VER-FLAG/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_INCOME-VER-FLAG"/>
        </imp1:ACEDS_INCOME-VER-FLAG>
      </xsl:if>
      <imp1:ACEDS_CLIENT-SHORT-ARRAY-OUT>
        <xsl:for-each select="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-SHORT-ARRAY-OUT/imp1:string">
          <imp1:string>
            <xsl:value-of select="."/>
          </imp1:string>
        </xsl:for-each>
      </imp1:ACEDS_CLIENT-SHORT-ARRAY-OUT>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-O">
        <imp1:ACEDS_CITIZENSHIP-O>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-O/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-O/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-O"/>
        </imp1:ACEDS_CITIZENSHIP-O>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-VERIF-O">
        <imp1:ACEDS_CITIZENSHIP-VERIF-O>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-VERIF-O/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-VERIF-O/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CITIZENSHIP-VERIF-O"/>
        </imp1:ACEDS_CITIZENSHIP-VERIF-O>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_RACE-O">
        <imp1:ACEDS_RACE-O>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_RACE-O/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_RACE-O/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_RACE-O"/>
        </imp1:ACEDS_RACE-O>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_ETHNIC-CLASS-O">
        <imp1:ACEDS_ETHNIC-CLASS-O>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_ETHNIC-CLASS-O/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_ETHNIC-CLASS-O/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_ETHNIC-CLASS-O"/>
        </imp1:ACEDS_ETHNIC-CLASS-O>
      </xsl:if>
      <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-O">
        <imp1:ACEDS_CLIENT-NUMBER-O>
          <xsl:if test="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-O/@xsi:nil">
            <xsl:attribute name="xsi:nil">
              <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-O/@xsi:nil"/>
            </xsl:attribute>
          </xsl:if>
          <xsl:value-of select="/imp1:ClientInquiryResponse/imp1:ACEDS_CLIENT-NUMBER-O"/>
        </imp1:ACEDS_CLIENT-NUMBER-O>
      </xsl:if>
      <imp1:ACEDS_MEDICAID-ARRAY>
        <xsl:for-each select="/imp1:ClientInquiryResponse/imp1:ACEDS_MEDICAID-ARRAY/imp1:string">
          <imp1:string>
            <xsl:value-of select="."/>
          </imp1:string>
        </xsl:for-each>
      </imp1:ACEDS_MEDICAID-ARRAY>
    </imp1:ClientInquiryResponse>
  </xsl:template>
</xsl:stylesheet>
