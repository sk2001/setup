FROM nginx:stable-alpine

ARG UID
ARG GID

ENV UID=${UID}
ENV GID=${GID}

ADD ./config/nginx/default.conf /etc/nginx/conf.d/

RUN mkdir -p /var/www/html