# docker build . -t my-php-app:1.0.0

FROM php:7.2-fpm
WORKDIR /var/www/html/
RUN mkdir /app
COPY /pipeline-deployment/project/. /app