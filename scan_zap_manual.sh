#!/bin/bash
TARGET_URL=$1
REPORTE=$2

docker run --rm --name scan_zap -v /home/demos/demos/:/zap/wrk/:rw -t owasp/zap2docker-stable zap-full-scan.py -t ${TARGET_URL} -T 3 -m 1 -x ${REPORTE}.xml -r ${REPORTE}.html

PROYECTO=`curl -X 'GET' 'http://localhost:8082/api/v2/products/' -H 'accept: application/json' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' -s | jq '.results[] | select(.name=="demos") | .id'`

ENGA=`curl -X 'GET' http://localhost:8082/api/v2/engagements/?product=${PROYECTO} -H 'accept: application/json' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' -s | jq '.results[] | select(.name=="demosEng") | .id'`

cd "/home/demos/demos/"

curl --location --request POST 'http://localhost:8082/api/v2/import-scan/' \
--header 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' \
--form 'engagement="'"$ENGA"'"' \
--form 'verified=true' \
--form 'active=true' \
--form 'scan_type=ZAP Scan' \
--form 'file=@"'"$REPORTE.xml"'"'
