# Genomic TRF IG source package

This package formalizes the cross-vendor genomic TRF model as a FHIR R6 draft IG source.

## Contents

* `input/fsh/genomic-trf.fsh` - core profiles and terminology.
* `input/examples/Bundle-genomic-trf-synthetic.json` - synthetic scenario example.
* `input/pagecontent/` - publication narrative, profiles, scenarios, and testing guidance.
* `inferno/` - custom-kit starter and scenario assertion matrix.

## Build

Install a current IG Publisher and a FHIR Shorthand toolchain that can resolve `hl7.fhir.r6.core#6.0.0-ballot5`, then run SUSHI followed by the IG Publisher from this directory. The package has not been publisher-built in this workspace because no SUSHI or IG Publisher binary is installed.

## Version and testing decision

This IG retains the established R6 ballot model. Inferno custom test kits are appropriate for IG-specific semantic checks, but the deployed kit/validator must support the same R6 package. A separate R4B/R5 compatibility IG should be created for an Inferno deployment pinned to those releases; R6 examples must not be silently down-converted.
