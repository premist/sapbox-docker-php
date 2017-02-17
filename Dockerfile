FROM php:7.1.1-fpm-alpine
RUN apk upgrade --update && apk add \
  coreutils libmcrypt-dev libjpeg-turbo-dev libpng-dev freetype-dev musl-dev \
  && docker-php-ext-install -j8 mcrypt gd mysqli exif mcrypt mbstring sockets
