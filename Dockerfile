FROM php:7.1.1-fpm-alpine
RUN docker-php-ext-install -j8 iconv mcrypt gd mysqli exif mcrypt mbstring sockets
