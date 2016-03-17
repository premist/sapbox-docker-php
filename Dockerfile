FROM php:5.6-fpm
RUN apt-get update && apt-get install -y \
        php5-mysql \
    && docker-php-ext-install -j$(nproc) mysql mysqli