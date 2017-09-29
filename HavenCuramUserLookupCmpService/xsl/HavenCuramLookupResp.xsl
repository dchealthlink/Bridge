<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ns1="http://xmlns.oracle.com/dcas/esb/assistancelookup/service/xsd/v1" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/Haven/HavenCuramUserLookupCmpService/HavenCuramUserLookupService" xmlns:ns2="http://schemas.oracle.com/bpel/extension" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:client="http://xmlns.oracle.com/Haven/HavenCuramUserLookupCmpService/HavenCuramUserLookupABCSImpl" xmlns:db="http://xmlns.oracle.com/pcbpel/adapter/db/sp/HavenCuramUserLookupService" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsl xsi xsd plt plnk ns1 tns ns2 wsdl client db oraext socket ora bpws xdk ids mhdr bpm xp20 hwf xref dvm med bpel ldap">
   <xsl:param name="FormatUsersSPOutput"/>
   <xsl:template match="/">
      <ns1:assistance_lookup_response>
         <xsl:choose>
            <xsl:when test="$FormatUsersSPOutput/users_ID_IC_info">
               <xsl:for-each select="$FormatUsersSPOutput/users_ID_IC_info/user_ID_IC_info">
                  <ns1:user_details>
                     <ns1:user_id>
                        <xsl:value-of select="user_CONCERNROLEID"/>
                     </ns1:user_id>
                     <ns1:integrated_case_id>
                        <xsl:value-of select="user_IC"/>
                     </ns1:integrated_case_id>
                     <ns1:app_case_ref_id>
                        <xsl:value-of select="AppCaseRef"/>
                     </ns1:app_case_ref_id>
                     <ns1:AppCreatedOn>
                        <xsl:value-of select="AppCreatedOn"/>
                     </ns1:AppCreatedOn>
                     <ns1:motivationType>
                        <xsl:value-of select="motivationType"/>
                     </ns1:motivationType>
                     <ns1:user_SSN>
                        <xsl:value-of select="user_SSN"/>
                     </ns1:user_SSN>
                     <ns1:user_FirstName>
                        <xsl:value-of select="user_FirstName"/>
                     </ns1:user_FirstName>
                     <ns1:user_LastName>
                        <xsl:value-of select="user_LastName"/>
                     </ns1:user_LastName>
                     <ns1:user_DOB>
                        <xsl:value-of select="user_DOB"/>
                     </ns1:user_DOB>
                  </ns1:user_details>
               </xsl:for-each>
            </xsl:when>
         </xsl:choose>
         <ns1:response_code>
            <xsl:call-template name="assistance_lookup_response">
               <xsl:with-param name="response" select="/db:OutputParameters/db:O_RESPONSE_CODE"/>
            </xsl:call-template>
         </ns1:response_code>
         <xsl:choose>
            <xsl:when test="/db:OutputParameters/db:O_RESPONSE_TEXT">
               <ns1:response_text>
                  <xsl:value-of select="/db:OutputParameters/db:O_RESPONSE_TEXT"/>
               </ns1:response_text>
            </xsl:when>
         </xsl:choose>
      </ns1:assistance_lookup_response>
   </xsl:template>
   <xsl:template name="assistance_lookup_response">
      <xsl:param name="response"/>
      <xsl:choose>
         <xsl:when test="$response = 'NO_DATA_FOUND'">
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#NO_DATA_FOUND'"/>
         </xsl:when>
         <xsl:when test="$response = 'SINGLE_USER'">
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#SINGLE_USER'"/>
         </xsl:when>
         <xsl:when test="$response = 'MULTIPLE_USERS'">
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#MULTIPLE_USER'"/>
         </xsl:when>
         <xsl:when test="$response = 'MULTIPLE_APPLICATIONS'">
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#MULTIPLE_APPLICATIONS'"/>
         </xsl:when>
         <xsl:when test="$response = 'ERROR'">
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#FAILURE'"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:value-of select="'urn:openhbx:terms:v1:assistance_lookup_response#SYSTEM_FAILURE'"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
