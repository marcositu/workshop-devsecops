#!/bin/bash
curl -s -X 'POST' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' \
  'http://localhost:8082/api/v2/products/' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "name": "demos",
  "external_audience": true,
  "prod_type": "1",
  "description": "prueba producto"
}'
