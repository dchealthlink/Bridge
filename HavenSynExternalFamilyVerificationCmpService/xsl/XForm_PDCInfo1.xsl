<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype" xmlns:ns2="http://xmlns.oracle.com/DCHBX/Haven/PDCInfo/v1" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:client="http://xmlns.oracle.com/Test/HavenSynExternalFamilyVerificationCmpService/HavenSyncExternal" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns1="http://xmlns.oracle.com/DCAS/edi/dchealthlink.com/SyncIntegratedCases/v1" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:ns0="http://openhbx.org/api/terms/1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk ns2 xsd client wsdl ns1 ns0 mhdr oraext bpm xp20 hwf xref socket ora dvm bpws xdk ids med bpel ldap">
   <xsl:param name="PDCInfo"/>
   <xsl:template match="/">
      <integrated_cases>
         <xsl:for-each select="/integrated_cases/integrated_case">
            <integrated_case>
               <integrated_case_reference>
                  <xsl:value-of select="integrated_case_reference"/>
               </integrated_case_reference>
               <application_submission_date>
                  <xsl:value-of select="application_submission_date"/>
               </application_submission_date>
               <curam_applicants>
                  <xsl:for-each select="curam_applicants/curam_applicant">
                     <curam_applicant>
                        <identifier_sets>
                           <xsl:for-each select="identifier_sets/identifier_set">
                              <identifier_set>
                                 <person_id>
                                    <xsl:value-of select="person_id"/>
                                 </person_id>
                                 <xsl:if test="participant_id">
                                    <participant_id>
                                       <xsl:value-of select="participant_id"/>
                                    </participant_id>
                                 </xsl:if>
                                 <xsl:if test="hbx_person_id">
                                    <hbx_person_id>
                                       <xsl:value-of select="hbx_person_id"/>
                                    </hbx_person_id>
                                 </xsl:if>
                                 <xsl:if test="aceds_id">
                                    <aceds_id>
                                       <xsl:value-of select="aceds_id"/>
                                    </aceds_id>
                                 </xsl:if>
                              </identifier_set>
                           </xsl:for-each>
                        </identifier_sets>
                        <concern_role_id>
                           <xsl:value-of select="concern_role_id"/>
                        </concern_role_id>
                        <full_name>
                           <xsl:value-of select="full_name"/>
                        </full_name>
                        <xsl:if test="name_first">
                           <name_first>
                              <xsl:value-of select="name_first"/>
                           </name_first>
                        </xsl:if>
                        <xsl:if test="name_middle">
                           <name_middle>
                              <xsl:value-of select="name_middle"/>
                           </name_middle>
                        </xsl:if>
                        <xsl:if test="name_last">
                           <name_last>
                              <xsl:value-of select="name_last"/>
                           </name_last>
                        </xsl:if>
                        <is_primary_applicant>
                           <xsl:value-of select="is_primary_applicant"/>
                        </is_primary_applicant>
                        <date_of_birth>
                           <xsl:value-of select="date_of_birth"/>
                        </date_of_birth>
                        <age>
                           <xsl:value-of select="age"/>
                        </age>
                        <gender>
                           <xsl:value-of select="gender"/>
                        </gender>
                        <ssn>
                           <xsl:value-of select="ssn"/>
                        </ssn>
                        <xsl:if test="aptc_amount">
                           <aptc_amount>
                              <xsl:value-of select="aptc_amount"/>
                           </aptc_amount>
                        </xsl:if>
                        <xsl:if test="csr">
                           <csr>
                              <xsl:value-of select="csr"/>
                           </csr>
                        </xsl:if>
                        <xsl:if test="is_resident">
                           <is_resident>
                              <xsl:value-of select="is_resident"/>
                           </is_resident>
                        </xsl:if>
                        <xsl:if test="is_pregnancy">
                           <is_pregnancy>
                              <xsl:value-of select="is_pregnancy"/>
                           </is_pregnancy>
                        </xsl:if>
                        <xsl:if test="pregnancy_end_date">
                           <pregnancy_end_date>
                              <xsl:value-of select="pregnancy_end_date"/>
                           </pregnancy_end_date>
                        </xsl:if>
                        <xsl:if test="enrolled_on_medicaid_during_pregnancy">
                           <enrolled_on_medicaid_during_pregnancy>
                              <xsl:value-of select="enrolled_on_medicaid_during_pregnancy"/>
                           </enrolled_on_medicaid_during_pregnancy>
                        </xsl:if>
                        <is_applicant>
                           <xsl:value-of select="is_applicant"/>
                        </is_applicant>
                        <citizen_status>
                           <xsl:value-of select="citizen_status"/>
                        </citizen_status>
                        <tax_filing_status>
                           <xsl:value-of select="tax_filing_status"/>
                        </tax_filing_status>
                        <tax_filing_together>
                           <xsl:value-of select="tax_filing_together"/>
                        </tax_filing_together>
                        <incarceration_status>
                           <xsl:value-of select="incarceration_status"/>
                        </incarceration_status>
                        <household_size>
                           <xsl:value-of select="household_size"/>
                        </household_size>
                        <incomes>
                           <xsl:for-each select="incomes/income">
                              <income>
                                 <xsl:if test="amount">
                                    <amount>
                                       <xsl:value-of select="amount"/>
                                    </amount>
                                 </xsl:if>
                                 <xsl:if test="frequency">
                                    <frequency>
                                       <xsl:value-of select="frequency"/>
                                    </frequency>
                                 </xsl:if>
                                 <xsl:if test="income_type">
                                    <income_type>
                                       <xsl:value-of select="income_type"/>
                                    </income_type>
                                 </xsl:if>
                                 <xsl:if test="start_date">
                                    <start_date>
                                       <xsl:value-of select="start_date"/>
                                    </start_date>
                                 </xsl:if>
                                 <xsl:if test="end_date">
                                    <end_date>
                                       <xsl:value-of select="end_date"/>
                                    </end_date>
                                 </xsl:if>
                              </income>
                           </xsl:for-each>
                        </incomes>
                        <benefits>
                           <xsl:for-each select="benefits/benefit">
                              <benefit>
                                 <xsl:if test="type">
                                    <type>
                                       <xsl:value-of select="type"/>
                                    </type>
                                 </xsl:if>
                                 <xsl:if test="start_date">
                                    <start_date>
                                       <xsl:value-of select="start_date"/>
                                    </start_date>
                                 </xsl:if>
                                 <xsl:if test="end_date">
                                    <end_date>
                                       <xsl:value-of select="end_date"/>
                                    </end_date>
                                 </xsl:if>
                              </benefit>
                           </xsl:for-each>
                        </benefits>
                        <deductions>
                           <xsl:for-each select="deductions/deduction">
                              <deduction>
                                 <xsl:if test="type">
                                    <type>
                                       <xsl:value-of select="type"/>
                                    </type>
                                 </xsl:if>
                                 <xsl:if test="amount">
                                    <amount>
                                       <xsl:value-of select="amount"/>
                                    </amount>
                                 </xsl:if>
                                 <xsl:if test="frequency">
                                    <frequency>
                                       <xsl:value-of select="frequency"/>
                                    </frequency>
                                 </xsl:if>
                                 <xsl:if test="start_date">
                                    <start_date>
                                       <xsl:value-of select="start_date"/>
                                    </start_date>
                                 </xsl:if>
                                 <xsl:if test="end_date">
                                    <end_date>
                                       <xsl:value-of select="end_date"/>
                                    </end_date>
                                 </xsl:if>
                              </deduction>
                           </xsl:for-each>
                        </deductions>
                        <address>
                           <xsl:if test="address/address_line_1">
                              <address_line_1>
                                 <xsl:value-of select="address/address_line_1"/>
                              </address_line_1>
                           </xsl:if>
                           <xsl:if test="address/address_line_2">
                              <address_line_2>
                                 <xsl:value-of select="address/address_line_2"/>
                              </address_line_2>
                           </xsl:if>
                           <xsl:if test="address/address_line_3">
                              <address_line_3>
                                 <xsl:value-of select="address/address_line_3"/>
                              </address_line_3>
                           </xsl:if>
                           <xsl:if test="address/city">
                              <city>
                                 <xsl:value-of select="address/city"/>
                              </city>
                           </xsl:if>
                           <xsl:if test="address/county">
                              <county>
                                 <xsl:value-of select="address/county"/>
                              </county>
                           </xsl:if>
                           <xsl:if test="address/state">
                              <state>
                                 <xsl:value-of select="address/state"/>
                              </state>
                           </xsl:if>
                           <xsl:if test="address/postal_code">
                              <postal_code>
                                 <xsl:value-of select="address/postal_code"/>
                              </postal_code>
                           </xsl:if>
                        </address>
                        <xsl:if test="email_address">
                           <email_address>
                              <xsl:value-of select="email_address"/>
                           </email_address>
                        </xsl:if>
                        <telephone_number>
                           <xsl:if test="telephone_number/country_code">
                              <country_code>
                                 <xsl:value-of select="telephone_number/country_code"/>
                              </country_code>
                           </xsl:if>
                           <xsl:if test="telephone_number/area_code">
                              <area_code>
                                 <xsl:value-of select="telephone_number/area_code"/>
                              </area_code>
                           </xsl:if>
                           <xsl:if test="telephone_number/number">
                              <number>
                                 <xsl:value-of select="telephone_number/number"/>
                              </number>
                           </xsl:if>
                           <xsl:if test="telephone_number/number_full">
                              <number_full>
                                 <xsl:value-of select="telephone_number/number_full"/>
                              </number_full>
                           </xsl:if>
                        </telephone_number>
                        <relationships>
                           <xsl:for-each select="relationships/relationship">
                              <relationship>
                                 <xsl:if test="relationship_type">
                                    <relationship_type>
                                       <xsl:value-of select="relationship_type"/>
                                    </relationship_type>
                                 </xsl:if>
                                 <xsl:if test="related_participant_id">
                                    <related_participant_id>
                                       <xsl:value-of select="related_participant_id"/>
                                    </related_participant_id>
                                 </xsl:if>
                                 <xsl:if test="person_id">
                                    <person_id>
                                       <xsl:value-of select="person_id"/>
                                    </person_id>
                                 </xsl:if>
                                 <xsl:if test="hbx_person_id">
                                    <hbx_person_id>
                                       <xsl:value-of select="hbx_person_id"/>
                                    </hbx_person_id>
                                 </xsl:if>
                              </relationship>
                           </xsl:for-each>
                        </relationships>
                        <created_at>
                           <xsl:value-of select="created_at"/>
                        </created_at>
                        <modified_at>
                           <xsl:value-of select="modified_at"/>
                        </modified_at>
                        <xsl:if test="version">
                           <version>
                              <xsl:value-of select="version"/>
                           </version>
                        </xsl:if>
                     </curam_applicant>
                  </xsl:for-each>
               </curam_applicants>
               <xsl:if test="brokers">
                  <brokers>
                     <xsl:for-each select="brokers/broker">
                        <broker>
                           <broker_npn>
                              <xsl:value-of select="broker_npn"/>
                           </broker_npn>
                           <start_on>
                              <xsl:value-of select="start_on"/>
                           </start_on>
                        </broker>
                     </xsl:for-each>
                  </brokers>
               </xsl:if>
               <product_delivery_cases>
                  <xsl:for-each select="product_delivery_cases/product_delivery_case">
                     <xsl:choose>
                        <xsl:when test="pdc_case_reference = $PDCInfo/ns2:integratedcases/ns2:integratedcase/ns2:product_delivery_cases/ns2:product_delivery_case/ns2:product_delivery_case_reference">
                           <product_delivery_case>
                              <pdc_case_reference>
                                 <xsl:value-of select="pdc_case_reference"/>
                              </pdc_case_reference>
                              <pdc_product_type>
                                 <xsl:value-of select="pdc_product_type"/>
                              </pdc_product_type>
                              <pdc_product_type_description>
                                 <xsl:value-of select="pdc_product_type_description"/>
                              </pdc_product_type_description>
                              <pdc_primary_applicant_name>
                                 <xsl:value-of select="pdc_primary_applicant_name"/>
                              </pdc_primary_applicant_name>
                              <xsl:if test="pdc_primary_applicant_id">
                                 <pdc_primary_applicant_id>
                                    <xsl:value-of select="pdc_primary_applicant_id"/>
                                 </pdc_primary_applicant_id>
                              </xsl:if>
                              <pdc_primary_applicant_person_id>
                                 <xsl:value-of select="pdc_primary_applicant_person_id"/>
                              </pdc_primary_applicant_person_id>
                              <xsl:if test="pdc_primary_applicant_hbx_person_id">
                                 <pdc_primary_applicant_hbx_person_id>
                                    <xsl:value-of select="pdc_primary_applicant_hbx_person_id"/>
                                 </pdc_primary_applicant_hbx_person_id>
                              </xsl:if>
                              <pdc_applicants>
                                 <xsl:for-each select="pdc_applicants/pdc_applicant">
                                    <xsl:variable name="pdc_ref" select="../../pdc_case_reference"/>
                                    <xsl:choose>
                                       <xsl:when test="concern_role_id = $PDCInfo/ns2:integratedcases/ns2:integratedcase/ns2:product_delivery_cases/ns2:product_delivery_case[ns2:product_delivery_case_reference = $pdc_ref]/ns2:concern_role_id">
                                          <pdc_applicant>
                                             <xsl:if test="person_id">
                                                <person_id>
                                                   <xsl:value-of select="person_id"/>
                                                </person_id>
                                             </xsl:if>
                                             <xsl:if test="hbx_person_id">
                                                <hbx_person_id>
                                                   <xsl:value-of select="hbx_person_id"/>
                                                </hbx_person_id>
                                             </xsl:if>
                                             <xsl:if test="participant_id">
                                                <participant_id>
                                                   <xsl:value-of select="participant_id"/>
                                                </participant_id>
                                             </xsl:if>
                                             <xsl:if test="concern_role_id">
                                                <concern_role_id>
                                                   <xsl:value-of select="concern_role_id"/>
                                                </concern_role_id>
                                             </xsl:if>
                                             <applicant_name>
                                                <xsl:value-of select="applicant_name"/>
                                             </applicant_name>
                                             <consent_applicant>
                                                <xsl:value-of select="consent_applicant"/>
                                             </consent_applicant>
                                             <is_enrolled_for_es_coverage>
                                                <xsl:value-of select="is_enrolled_for_es_coverage"/>
                                             </is_enrolled_for_es_coverage>
                                             <xsl:if test="consent_applicant_participant_id">
                                                <consent_applicant_participant_id>
                                                   <xsl:value-of select="consent_applicant_participant_id"/>
                                                </consent_applicant_participant_id>
                                             </xsl:if>
                                             <is_without_assistance>
                                                <xsl:value-of select="is_without_assistance"/>
                                             </is_without_assistance>
                                             <years_to_renew_coverage>
                                                <xsl:value-of select="years_to_renew_coverage"/>
                                             </years_to_renew_coverage>
                                             <coverage_renewal_year>
                                                <xsl:value-of select="coverage_renewal_year"/>
                                             </coverage_renewal_year>
                                             <financial_assistance>
                                                <xsl:value-of select="financial_assistance"/>
                                             </financial_assistance>
                                             <ia_eligible>
                                                <xsl:value-of select="ia_eligible"/>
                                             </ia_eligible>
                                             <medicaid_chip_eligible>
                                                <xsl:value-of select="medicaid_chip_eligible"/>
                                             </medicaid_chip_eligible>
                                             <receiving_benefit>
                                                <xsl:value-of select="receiving_benefit"/>
                                             </receiving_benefit>
                                             <projected_amount>
                                                <xsl:value-of select="projected_amount"/>
                                             </projected_amount>
                                             <participant_projected_income>
                                                <xsl:value-of select="participant_projected_income"/>
                                             </participant_projected_income>
                                             <projected_income_start_date>
                                                <xsl:value-of select="projected_income_start_date"/>
                                             </projected_income_start_date>
                                             <projected_income_end_date>
                                                <xsl:value-of select="projected_income_end_date"/>
                                             </projected_income_end_date>
                                             <application_submission_date>
                                                <xsl:value-of select="application_submission_date"/>
                                             </application_submission_date>
                                          </pdc_applicant>
                                       </xsl:when>
                                    </xsl:choose>
                                 </xsl:for-each>
                              </pdc_applicants>
                              <pdc_status_code>
                                 <xsl:value-of select="pdc_status_code"/>
                              </pdc_status_code>
                              <pdc_registration_date>
                                 <xsl:value-of select="pdc_registration_date"/>
                              </pdc_registration_date>
                              <created_at>
                                 <xsl:value-of select="created_at"/>
                              </created_at>
                              <modified_at>
                                 <xsl:value-of select="modified_at"/>
                              </modified_at>
                              <xsl:if test="version">
                                 <version>
                                    <xsl:value-of select="version"/>
                                 </version>
                              </xsl:if>
                           </product_delivery_case>
                        </xsl:when>
                     </xsl:choose>
                  </xsl:for-each>
               </product_delivery_cases>
               <created_at>
                  <xsl:value-of select="created_at"/>
               </created_at>
               <modified_at>
                  <xsl:value-of select="modified_at"/>
               </modified_at>
               <xsl:if test="version">
                  <version>
                     <xsl:value-of select="version"/>
                  </version>
               </xsl:if>
            </integrated_case>
         </xsl:for-each>
      </integrated_cases>
   </xsl:template>
</xsl:stylesheet>
