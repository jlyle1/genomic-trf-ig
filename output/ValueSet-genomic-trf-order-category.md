# Genomic TRF Order Category ValueSet - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic TRF Order Category ValueSet**

## ValueSet: Genomic TRF Order Category ValueSet (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/ValueSet/genomic-trf-order-category | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTRFOrderCategoryVS |

 
Permitted high-level genomic requisition categories. 

 **References** 

* [Genomic Test Order](StructureDefinition-genomic-test-order.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "genomic-trf-order-category",
  "url" : "https://example.org/fhir/uv/genomic-trf/ValueSet/genomic-trf-order-category",
  "version" : "0.1.0",
  "name" : "GenomicTRFOrderCategoryVS",
  "title" : "Genomic TRF Order Category ValueSet",
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
  "description" : "Permitted high-level genomic requisition categories.",
  "compose" : {
    "include" : [{
      "system" : "https://example.org/fhir/uv/genomic-trf/CodeSystem/genomic-trf-order-category"
    }]
  }
}

```
