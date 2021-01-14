#!/usr/bin/env bash
set -e

# Maintained by spot@ebi.ac.uk
# 2020 EMBL-EBI
echo "Processing SNOMED version: "$SNOMED_VERSION
echo "Archive: "$SNOMED_ZIP
java -Xms6g -jar $SOT -rf2-to-owl -rf2-snapshot-archives "/work/$SNOMED_ZIP" -version $SNOMED_VERSION
