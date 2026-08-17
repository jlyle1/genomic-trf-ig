# Profiles and relationships

## GenomicTestOrder

The order requires identifiers, category, test code, subject, requester, at least one clinical indication, and supporting information. `orderDetail` carries test design, cadence, and reflex parameters; it does not replace discrete clinical resources.

## Specimen and supporting evidence

Use `Specimen.request` for the order-to-specimen association. A blood specimen and a tumor specimen may both be present, but each independently actionable assay remains its own `ServiceRequest`. Pathology reports are `DocumentReference`; structured stage, status, or biomarker facts are `Observation`.

## Questionnaires and consent

The questionnaire response preserves what was submitted on the TRF. It is not an assertion that every answer has been clinically verified. Keep revocable purposes - research, payer disclosure, administrative contact, and incidental-result preferences - as separate consent provisions or consent profiles.

## Study and result lifecycle

Create the `GenomicStudy` when analysis is registered or performed. Link it with `GenomicStudy.basedOn`. Report clinical results in `DiagnosticReport` and `Observation`, referencing the study where the target FHIR release/profile supports it.
