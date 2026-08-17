# Genomic Test Requisition Form (TRF) IG

This draft Implementation Guide defines a cross-vendor, FHIR R6 model for submitting and fulfilling genomic test requisitions. The focus is a scan-friendly representation of the information recurring across oncology, tumor-profiling, hereditary-cancer, and blood-based molecular-testing forms.

## Scope

`GenomicTestOrder` is a profile of `ServiceRequest`, not a new FHIR resource. One order represents one independently actionable test. Use separate orders for concurrent assays and a draft `reflex-order` only where an authorization and triggering condition exist.

## Core relationships

| Business relationship | FHIR R6 expression |
|---|---|
| uses specimen | `Specimen.request` → `ServiceRequest` |
| has indication | `ServiceRequest.reason` → `Condition`/clinical evidence |
| has TRF answers | `QuestionnaireResponse.basedOn` → `ServiceRequest` |
| results in study | `GenomicStudy.basedOn` → `ServiceRequest` |
| has pathology evidence | `ServiceRequest.supportingInfo` → `DocumentReference`/`Observation` |
| captures consent | `Consent.sourceReference` → `QuestionnaireResponse` |

The synthetic bundle example is intentionally non-production and contains no patient-identifying data.
