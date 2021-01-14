#!/usr/bin/env bash
make docker-build

SNOMED_VERSION="20200731"
#SNOMED_ARCHIVE="SnomedCT_InternationalRF2_PRODUCTION_${SNOMED_VERSION}T120000Z.zip"
docker run -v $PWD/:/work -e SNOMED_VERSION="$SNOMED_VERSION" --rm -ti ebispot/snomed-owl
