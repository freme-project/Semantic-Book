#!/bin/bash
# This requires step 3 to be completed.

# prefixes
grep --no-filename '^@prefix ' ../step-4/nif/* | sort -u > ./all.ttl

# the rest, without prefixes
grep -v --no-filename '^@prefix ' ../step-4/nif/* >> ./all.ttl
