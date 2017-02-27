FROM php:5.6.30-fpm-alpine
RUN apk upgrade --update && apk add \
  coreutils libmcrypt-dev libjpeg-turbo libjpeg-turbo-dev libpng-dev freetype-dev musl-dev \
  && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install -j8 mcrypt gd mysql mysqli exif mcrypt mbstring sockets

EXPOSE 9000
CMD ["php-fpm"]
