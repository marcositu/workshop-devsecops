#!/bin/bash
# Permite crear un engagement dentro de un producto en DefectDojo

PROYECTO=`curl -X 'GET' 'http://localhost:8082/api/v2/products/' -H 'accept: application/json' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' -s | jq '.results[] | select(.name=="demos") | .id'`

curl -X 'POST' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' \
  'http://localhost:8082/api/v2/engagements/' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "demosEng",
  "target_start": "2021-10-15",
  "target_end": "2021-10-31",
  "test_strategy": "",
  "deduplication_on_engagement": "on",
  "lead": "1",
  "product": "'"$PROYECTO"'"
}'
