# Order Detail Parameter (R6 Pre-adoption) - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Order Detail Parameter (R6 Pre-adoption)**

## Extension: Order Detail Parameter (R6 Pre-adoption) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/StructureDefinition/order-detail-parameter | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:OrderDetailParameter |

Structured key-value parameters for order details. This extension pre-adopts the R6 ServiceRequest.orderDetail.parameter structure to enable computable order instructions in R4. Each instance represents one parameter with a code and a typed value.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Test Order](StructureDefinition-genomic-test-order.md)
* Examples for this Extension: [Bundle/genomic-test-order-trf-example](Bundle-genomic-test-order-trf-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/genomic-trf|current/StructureDefinition/StructureDefinition-order-detail-parameter.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-order-detail-parameter.csv), [Excel](StructureDefinition-order-detail-parameter.xlsx), [Schematron](StructureDefinition-order-detail-parameter.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "order-detail-parameter",
  "url" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/order-detail-parameter",
  "version" : "0.1.0",
  "name" : "OrderDetailParameter",
  "title" : "Order Detail Parameter (R6 Pre-adoption)",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-17T15:01:13-04:00",
  "publisher" : "Example Genomic Interoperability Program",
  "contact" : [{
    "name" : "Example Genomic Interoperability Program",
    "telecom" : [{
      "system" : "url",
      "value" : "https://example.org"
    }]
  }],
  "description" : "Structured key-value parameters for order details. This extension pre-adopts the R6 ServiceRequest.orderDetail.parameter structure to enable computable order instructions in R4. Each instance represents one parameter with a code and a typed value.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Order Detail Parameter (R6 Pre-adoption)",
      "definition" : "Structured key-value parameters for order details. This extension pre-adopts the R6 ServiceRequest.orderDetail.parameter structure to enable computable order instructions in R4. Each instance represents one parameter with a code and a typed value."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "short" : "Parameter identifier or name",
      "definition" : "A code or identifier that names this parameter, such as 'monitoring-cadence' or 'reflex-testing-enabled'.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:code.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:code.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:code.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:value[x]",
      "path" : "Extension.extension",
      "sliceName" : "value[x]",
      "short" : "Parameter value",
      "definition" : "The value of the parameter. Type varies based on the parameter code.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:value[x].extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:value[x].url",
      "path" : "Extension.extension.url",
      "fixedUri" : "value[x]"
    },
    {
      "id" : "Extension.extension:value[x].value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "dateTime"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "string"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/order-detail-parameter"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
