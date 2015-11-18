# Step 4

## Usage

- Replace `X-Auth-Token` in the header of the curl command in `e-link.sh` with your token.
- Execute `e-link.sh TOKEN` to generate the updated HTML files (in the folder `out`), where `TOKEN` is replaced by your own token. Be sure that you execute the script for step 3 before doing step 3.

## Template

This templated was created for this step. At the moment of writing it has ID 4452.

```
{
    "query": "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> CONSTRUCT { <@@@entity_uri@@@> rdfs:comment ?comment } WHERE { <@@@entity_uri@@@> rdfs:comment ?comment .}",
    "endpoint": "http://dbpedia.org/sparql/",
    "label": "Semantic Book Comments",
    "description": "This template is used in step of the creation of the Semantic Book.",
    "endpointType": "sparql",
    "visibility": "public"
}
```