FROM alpine:edge
RUN apk add zip aws-cli --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted
