# Scenarios

| Scenario | Required resources | Key assertions |
|---|---|---|
| Tumor-informed ctDNA monitoring | `ServiceRequest`, blood `Specimen`, tumor `Specimen`, `Condition`, `QuestionnaireResponse`, `GenomicStudy` | Both specimens reference the order; the study references the order; cadence is captured as timing. |
| Tissue-only tumor profiling | `ServiceRequest`, tumor `Specimen`, `DocumentReference`, `Condition` | Tissue accession and pathology report are available before fulfillment. |
| Concurrent tissue and blood profiling | Two `ServiceRequest` instances plus their specimens; optional `RequestOrchestration` | No independent assays are packed into one order code. |
| Tissue quantity not sufficient | Parent order, draft `reflex-order`, specimen-quality event, authorization response | The reflex order is not activated until the quality trigger and authorization are present. |
| Hereditary cancer testing | Hereditary `ServiceRequest`, `QuestionnaireResponse`, `FamilyMemberHistory`, `Consent` | Family-history answers are repeatable and not embedded as a tumor-order note. |

The supplied synthetic bundle covers the first scenario and includes a draft reflex order to illustrate the fourth.
