# Validation and Inferno - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Validation and Inferno**

## Validation and Inferno

# Validation and Inferno

## IG validation

The source declares FHIR R6 ballot 4. Validate with a publisher/validator configured for `hl7.fhir.r6.core#6.0.0-ballot5`; R6 is a ballot release and must be version-locked in implementation and test environments.

## Inferno test strategy

Inferno is extensible through custom test kits. This package includes scenario inputs and an Inferno test-kit starter that checks the order-centric relationships. Run the custom kit against a server and validator configured for the same FHIR version as the IG.

The public Inferno test kits are not a substitute for these IG-specific relationship checks. Use US Core/SMART suites separately for server/API conformance where applicable.

## Minimum test inputs

* Base FHIR URL
* Patient id
* Genomic test order id
* Specimen ids
* QuestionnaireResponse id
* GenomicStudy id
* Optional reflex-order id

See `inferno/README.md` for the scenario assertion matrix and the custom kit bootstrap steps.

