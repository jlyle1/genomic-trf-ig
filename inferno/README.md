# Genomic TRF Inferno starter

This is a custom-test-kit source fragment, not a copy of the Inferno template. Create a fresh kit with `inferno new genomic_trf_test_kit`, then copy the `lib/` contents into that kit and add the suite to its metadata/loader according to the current Inferno template.

## Scenario assertions

| Test group | Assertions |
|---|---|
| Order profile | A ServiceRequest exists; it has subject, requester, code, reason, and supportingInfo. |
| Specimen links | Each expected Specimen has `request` pointing to the supplied order. |
| TRF response | QuestionnaireResponse has `basedOn` pointing to the supplied order. |
| Genomic study | GenomicStudy has `basedOn` pointing to the supplied order. |
| Reflex safety | A supplied reflex order has `intent = reflex-order` and is draft until the triggering workflow activates it. |

Run this against a FHIR R6-capable server/validator. If the deployed Inferno environment is R4B or R5 only, use a version-specific compatibility implementation of this IG rather than submitting R6 resources unchanged.
