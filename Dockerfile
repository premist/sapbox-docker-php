FROM php:5.6.30-fpm-alpine
RUN apk upgrade --update && apk add \
  coreutils libmcrypt-dev libjpeg-turbo-dev libpng-dev freetype-dev musl-dev \
  && docker-php-ext-install -j8 mcrypt gd mysqli exif mcrypt mbstring sockets

EXPOSE 9000
CMD ["php-fpm"]
