#!/usr/bin/env bash

docker run -v /Users/matentzn/ws/snomed_test_data/:/work -e SNOMED_ZIP="/work/SnomedCT_InternationalRF2_PRODUCTION_20200131T120000Z.zip" --rm -ti sno
