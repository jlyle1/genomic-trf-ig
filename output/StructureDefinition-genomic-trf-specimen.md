# Genomic TRF Specimen - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic TRF Specimen**

## Resource Profile: Genomic TRF Specimen 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-specimen | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTRFSpecimen |

 
A specimen collected or retrieved to fulfill a genomic test order. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/genomic-trf|current/StructureDefinition/StructureDefinition-genomic-trf-specimen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-trf-specimen.csv), [Excel](StructureDefinition-genomic-trf-specimen.xlsx), [Schematron](StructureDefinition-genomic-trf-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-trf-specimen",
  "url" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-specimen",
  "version" : "0.1.0",
  "name" : "GenomicTRFSpecimen",
  "title" : "Genomic TRF Specimen",
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
  "description" : "A specimen collected or retrieved to fulfill a genomic test order.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "min" : 1
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "min" : 1
    }]
  }
}

```
