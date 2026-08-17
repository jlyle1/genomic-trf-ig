# Genomic Test Order - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Test Order**

## Resource Profile: Genomic Test Order 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-test-order | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTestOrder |

 
A ServiceRequest used to authorize one independently actionable genomic testing service. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/genomic-trf|current/StructureDefinition/StructureDefinition-genomic-test-order.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-test-order.csv), [Excel](StructureDefinition-genomic-test-order.xlsx), [Schematron](StructureDefinition-genomic-test-order.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-test-order",
  "url" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-test-order",
  "version" : "0.1.0",
  "name" : "GenomicTestOrder",
  "title" : "Genomic Test Order",
  "status" : "draft",
  "date" : "2026-08-17T15:01:13-04:00",
  "publisher" : "Example Genomic Interoperability Program",
  "contact" : [{
    "name" : "Example Genomic Interoperability Program",
    "telecom" : [{
      "system" : "url",
      "value" : "https://example.org"
    }]
  }],
  "description" : "A ServiceRequest used to authorize one independently actionable genomic testing service.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "ServiceRequest.extension:orderDetailParameter",
      "path" : "ServiceRequest.extension",
      "sliceName" : "orderDetailParameter",
      "short" : "Structured order parameters (R6 pre-adoption)",
      "definition" : "Structured key-value parameters for order details such as monitoring cadence, reflex testing options, test design specifications, etc. Pre-adopts R6 ServiceRequest.orderDetail.parameter for R4 compatibility.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://example.org/fhir/uv/genomic-trf/StructureDefinition/order-detail-parameter"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://example.org/fhir/uv/genomic-trf/ValueSet/genomic-trf-order-category"
      }
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "min" : 1
    }]
  }
}

```
