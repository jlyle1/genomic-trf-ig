# Genomic TRF Study - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic TRF Study**

## Resource Profile: Genomic TRF Study 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-study | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTRFStudy |

 
A genomic study initiated to fulfill a genomic test order. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/genomic-trf|current/StructureDefinition/StructureDefinition-genomic-trf-study.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-trf-study.csv), [Excel](StructureDefinition-genomic-trf-study.xlsx), [Schematron](StructureDefinition-genomic-trf-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-trf-study",
  "url" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-study",
  "version" : "0.1.0",
  "name" : "GenomicTRFStudy",
  "title" : "Genomic TRF Study",
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
  "description" : "A genomic study initiated to fulfill a genomic test order.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "min" : 1
    }]
  }
}

```
