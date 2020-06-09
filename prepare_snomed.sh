#!/usr/bin/env bash
set -e

# Maintained by spot@ebi.ac.uk
# 2020 EMBL-EBI

java -Xms6g -jar $SOT -rf2-to-owl -rf2-snapshot-archives $SNOMED_ZIP -version $SNOMED_VERSION
cp *.owl /work