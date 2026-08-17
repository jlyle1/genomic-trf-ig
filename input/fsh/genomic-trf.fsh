Alias: $trf = https://example.org/fhir/uv/genomic-trf

Extension: OrderDetailParameter
Id: order-detail-parameter
Title: "Order Detail Parameter (R6 Pre-adoption)"
Description: "Structured key-value parameters for order details. This extension pre-adopts the R6 ServiceRequest.orderDetail.parameter structure to enable computable order instructions in R4. Each instance represents one parameter with a code and a typed value."
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* extension contains
    code 1..1 MS and
    value[x] 1..1 MS
* extension[code] ^short = "Parameter identifier or name"
* extension[code] ^definition = "A code or identifier that names this parameter, such as 'monitoring-cadence' or 'reflex-testing-enabled'."
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept 1..1
* extension[value[x]] ^short = "Parameter value"
* extension[value[x]] ^definition = "The value of the parameter. Type varies based on the parameter code."
* extension[value[x]].value[x] only CodeableConcept or string or boolean or integer or Quantity or dateTime

CodeSystem: GenomicTRFOrderCategoryCS
Id: genomic-trf-order-category
Title: "Genomic TRF Order Category"
Description: "High-level order categories used in the Genomic TRF IG."
* ^url = "https://example.org/fhir/uv/genomic-trf/CodeSystem/genomic-trf-order-category"
* ^status = #draft
* ^experimental = true
* #genomic-testing "Genomic testing"
* #tumor-profiling "Tumor molecular profiling"
* #hereditary-testing "Hereditary cancer testing"

ValueSet: GenomicTRFOrderCategoryVS
Id: genomic-trf-order-category
Title: "Genomic TRF Order Category ValueSet"
Description: "Permitted high-level genomic requisition categories."
* ^url = "https://example.org/fhir/uv/genomic-trf/ValueSet/genomic-trf-order-category"
* ^status = #draft
* ^experimental = true
* include codes from system GenomicTRFOrderCategoryCS

Profile: GenomicTestOrder
Parent: ServiceRequest
Id: genomic-test-order
Title: "Genomic Test Order"
Description: "A ServiceRequest used to authorize one independently actionable genomic testing service."
* extension contains OrderDetailParameter named orderDetailParameter 0..*
* extension[orderDetailParameter] ^short = "Structured order parameters (R6 pre-adoption)"
* extension[orderDetailParameter] ^definition = "Structured key-value parameters for order details such as monitoring cadence, reflex testing options, test design specifications, etc. Pre-adopts R6 ServiceRequest.orderDetail.parameter for R4 compatibility."
* identifier 1..*
* category 1..*
* category from GenomicTRFOrderCategoryVS (required)
* code 1..1
* subject 1..1
* requester 1..1
* reasonCode 0..*
* reasonReference 1..*
* supportingInfo 1..*
* occurrence[x] 0..1
* orderDetail 0..*
* note 0..*

Profile: GenomicTRFSpecimen
Parent: Specimen
Id: genomic-trf-specimen
Title: "Genomic TRF Specimen"
Description: "A specimen collected or retrieved to fulfill a genomic test order."
* subject 1..1
* request 1..*
* identifier 1..*
* type 1..1

Profile: GenomicTRFQuestionnaireResponse
Parent: QuestionnaireResponse
Id: genomic-trf-questionnaire-response
Title: "Genomic TRF Questionnaire Response"
Description: "A completed TRF/AOE response with explicit order provenance."
* questionnaire 1..1
* subject 1..1
* basedOn 1..*

Profile: GenomicTRFStudy
Parent: GenomicStudy
Id: genomic-trf-study
Title: "Genomic TRF Study"
Description: "A genomic study initiated to fulfill a genomic test order."
* subject 1..1
* basedOn 1..*
