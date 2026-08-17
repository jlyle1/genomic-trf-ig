# Genomic TRF Order Category - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic TRF Order Category**

## CodeSystem: Genomic TRF Order Category (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/CodeSystem/genomic-trf-order-category | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTRFOrderCategoryCS |

 
High-level order categories used in the Genomic TRF IG. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Genomic TRF Order Category ValueSet](ValueSet-genomic-trf-order-category.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "genomic-trf-order-category",
  "url" : "https://example.org/fhir/uv/genomic-trf/CodeSystem/genomic-trf-order-category",
  "version" : "0.1.0",
  "name" : "GenomicTRFOrderCategoryCS",
  "title" : "Genomic TRF Order Category",
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
  "description" : "High-level order categories used in the Genomic TRF IG.",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "genomic-testing",
    "display" : "Genomic testing"
  },
  {
    "code" : "tumor-profiling",
    "display" : "Tumor molecular profiling"
  },
  {
    "code" : "hereditary-testing",
    "display" : "Hereditary cancer testing"
  }]
}

```
