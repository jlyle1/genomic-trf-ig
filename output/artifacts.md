# Artifacts Summary - Genomic Test Requisition Form (TRF) Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Genomic TRF Questionnaire Response](StructureDefinition-genomic-trf-questionnaire-response.md) | A completed TRF/AOE response with explicit order provenance. |
| [Genomic TRF Specimen](StructureDefinition-genomic-trf-specimen.md) | A specimen collected or retrieved to fulfill a genomic test order. |
| [Genomic TRF Study](StructureDefinition-genomic-trf-study.md) | A genomic study initiated to fulfill a genomic test order. |
| [Genomic Test Order](StructureDefinition-genomic-test-order.md) | A ServiceRequest used to authorize one independently actionable genomic testing service. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Order Detail Parameter (R6 Pre-adoption)](StructureDefinition-order-detail-parameter.md) | Structured key-value parameters for order details. This extension pre-adopts the R6 ServiceRequest.orderDetail.parameter structure to enable computable order instructions in R4. Each instance represents one parameter with a code and a typed value. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Genomic TRF Order Category ValueSet](ValueSet-genomic-trf-order-category.md) | Permitted high-level genomic requisition categories. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Genomic TRF Order Category](CodeSystem-genomic-trf-order-category.md) | High-level order categories used in the Genomic TRF IG. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| |
| :--- |
| [genomic-test-order-trf-example](Bundle-genomic-test-order-trf-example.md) |

