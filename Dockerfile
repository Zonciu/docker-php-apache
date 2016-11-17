FROM php:apache
MAINTAINER Zonciu Liang <zonciu@zonciu.com>  
RUN docker-php-source extract \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-source delete
COPY php.ini /usr/local/etc/php/
VOLUME ["/var/www/html"]