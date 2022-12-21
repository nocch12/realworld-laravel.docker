#!/bin/sh

if [ -e ${KEY_NAME} ] && [ -e ${CRT_NAME} ]; then
  echo "ファイルが存在するためスキップします";
else
  openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -nodes \
    -keyout ${KEY_NAME} \
    -out ${CRT_NAME} \
    -subj "/CN=${DOMAIN}" \
    -addext "subjectAltName=DNS:${DOMAIN}" \
    -addext "extendedKeyUsage=serverAuth"
fi