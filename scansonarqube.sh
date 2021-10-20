#!/bin/bash
# Realiza el SCAN con SonarQube

cd /home/demos/demos
git clone https://github.com/digininja/DVWA
cd DVWA


curl --include --request POST --header "Content-Type: application/x-www-form-urlencoded" -u 9e91158a7868cc5fd3be284c8f4726b010c4a273: -d 'project=demos&organization=demos&name=demos' 'http://localhost:9000/api/projects/create'


/home/demos/Descargas/sonar-scanner-cli-4.6.2.2472-linux/sonar-scanner-4.6.2.2472-linux/bin/sonar-scanner \
  -Dsonar.projectKey=demos \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.login=9e91158a7868cc5fd3be284c8f4726b010c4a273

sleep 10

PROYECTO=`curl -X 'GET' 'http://localhost:8082/api/v2/products/' -H 'accept: application/json' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' -s | jq '.results[] | select(.name=="demos") | .id'`


ENGA=`curl -X 'GET' http://localhost:8082/api/v2/engagements/?product=${PROYECTO} -H 'accept: application/json' -H 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' -s | jq '.results[] | select(.name=="demosEng") | .id'`

sleep 30

curl --location --request POST 'http://localhost:8082/api/v2/import-scan/' \
--header 'Authorization: Token 9010a9fe648b30b59bdb72a156edaf0285c90a8e' \
--form 'engagement="'"$ENGA"'"' \
--form 'verified=true' \
--form 'active=true' \
--form 'scan_type=SonarQube API Import'
