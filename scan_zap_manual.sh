#!/bin/bash
TARGET_URL=$1
REPORTE=$2

docker run --rm --name scan_zap -v /home/demos/demos/:/zap/wrk/:rw -t owasp/zap2docker-stable zap-full-scan.py -t ${TARGET_URL} -T 3 -m 1 -x ${REPORTE}.xml -r ${REPORTE}.html
