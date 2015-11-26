#!/bin/bash

# This requires step 3 to be completed.
#JENA_HOME=/home/ghaesen/progs/apache-jena-3.0.0
#cat ../step-4/nif/* > all_tmp.ttl
#$JENA_HOME/bin/riot --output=Turtle all_tmp.ttl > all.ttl

# prefixes
grep --no-filename '^@prefix ' ../step-4/nif/* | sort -u > all.ttl

# the rest, without prefixes
grep -v --no-filename '^@prefix ' ../step-4/nif/* >> all.ttl
#for ttl in $(ls ../step-4/nif)
#do
#	ttl_file="../step-4/nif/$ttl"
#	nr_lines=$(cat $ttl_file | wc -l)
#	((rest_lines = nr_lines - 10))
#	tail -n $rest_lines $ttl_file >> all.ttl
#done
