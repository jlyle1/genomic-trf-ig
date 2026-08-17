# Genomic TRF Questionnaire Response - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic TRF Questionnaire Response**

## Resource Profile: Genomic TRF Questionnaire Response 

| | |
| :--- | :--- |
| *Official URL*:https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-questionnaire-response | *Version*:0.1.0 |
| Draft as of 2026-08-17 | *Computable Name*:GenomicTRFQuestionnaireResponse |

 
A completed TRF/AOE response with explicit order provenance. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/genomic-trf|current/StructureDefinition/StructureDefinition-genomic-trf-questionnaire-response.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-trf-questionnaire-response.csv), [Excel](StructureDefinition-genomic-trf-questionnaire-response.xlsx), [Schematron](StructureDefinition-genomic-trf-questionnaire-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-trf-questionnaire-response",
  "url" : "https://example.org/fhir/uv/genomic-trf/StructureDefinition/genomic-trf-questionnaire-response",
  "version" : "0.1.0",
  "name" : "GenomicTRFQuestionnaireResponse",
  "title" : "Genomic TRF Questionnaire Response",
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
  "description" : "A completed TRF/AOE response with explicit order provenance.",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse",
      "path" : "QuestionnaireResponse"
    },
    {
      "id" : "QuestionnaireResponse.basedOn",
      "path" : "QuestionnaireResponse.basedOn",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.questionnaire",
      "path" : "QuestionnaireResponse.questionnaire",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1
    }]
  }
}

```
