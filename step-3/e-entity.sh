#!/bin/bash

OUTPUT_DIR='nif'
INPUT_DIR='../step-2/out'

rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR

for input_file in $(ls $INPUT_DIR/*.html)
do
	output_file_name=$(basename "$input_file")
	output_file=$OUTPUT_DIR/$output_file_name
	curl -X POST --header "Content-Type: text/html" --header "Accept: application/ld+json" \
	-d "@$input_file" "http://api-dev.freme-project.eu/current/e-entity/freme-ner/documents?language=en&dataset=dbpedia&mode=all" \
	-o $output_file
done
