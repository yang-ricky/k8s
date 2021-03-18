FROM nginx:1.15-alpine

RUN apk --update-cache add sed perl bash

COPY html/ /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/server/nginx.conf
COPY ./init.sh /usr/init.sh

RUN chmod 777 /usr/init.sh
