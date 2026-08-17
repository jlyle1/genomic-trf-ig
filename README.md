# Genomic Test Requisition Form (TRF) Implementation Guide

This repository contains the source for the Genomic TRF Implementation Guide, which formalizes the cross-vendor genomic test requisition form model as a FHIR R4 Implementation Guide.

## Published IG

The latest version is automatically published at: **https://jlyle1.github.io/genomic-trf-ig/**

The IG is automatically rebuilt and deployed on every push to the master branch via GitHub Actions.

## Contents

* `input/fsh/genomic-trf.fsh` - core profiles and terminology defined in FHIR Shorthand
* `input/examples/Bundle-genomic-trf-synthetic.json` - synthetic scenario example
* `input/pagecontent/` - publication narrative, profiles, scenarios, and testing guidance
* `inferno/` - custom test kit starter and scenario assertion matrix

## Building Locally

### Prerequisites
- Java 17 or higher
- Node.js 18 or higher (for SUSHI)

### Quick Build

**Windows:**
```bash
_genonce.bat
```

**Linux/Mac:**
```bash
./_genonce.sh
```

The build scripts will automatically:
- Download the IG Publisher (~200MB) on first run
- Install FHIR Shorthand (SUSHI) if needed
- Build the complete IG to the `output/` directory

### Interactive Build Menu (Windows)
```bash
_build.bat
```

Provides options for:
- Updating the IG Publisher
- Building with different configurations
- Continuous watch mode
- Cleanup operations

## FHIR Version

This IG is built on **FHIR R4 (4.0.1)** and depends on:
- `hl7.fhir.uv.genomics-reporting` version 3.0.0

## Testing

Inferno custom test kits in the `inferno/` directory provide IG-specific semantic checks and scenario validation.
