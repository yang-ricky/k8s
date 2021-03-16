FROM nginx:1.15-alpine

RUN apk --update-cache add sed perl bash

COPY html/ /usr/share/nginx/html/
