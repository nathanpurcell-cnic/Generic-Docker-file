FROM nginx:stable-alpine

ARG NGINXGROUP
ARG NGINXUSER

ENV NGINXGROUP=${NGINXGROUP}
ENV NGINXUSER=${NGINXUSER}

# Replace "user www-data" with "user ${NGINXUSER}" in the default nginx config file. 
RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

RUN mkdir -p /var/www/html

RUN addgroup --system ${NGINXGROUP}; exit 0
RUN adduser --system -G ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}; exit 0
