FROM alpine:latest

WORKDIR /app

ARG DOMAIN

ENV KEY_NAME="domain.key"
ENV CRT_NAME="signed.crt"

RUN apk update && \
  apk add openssl

COPY ./docker/certs/crt.sh /shell/

RUN chmod 777 -R /shell/

CMD /shell/crt.sh