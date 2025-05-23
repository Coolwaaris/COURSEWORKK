FROM php:8.1-apache

RUN a2enmod rewrite

WORKDIR /var/www/html

COPY ./ecommerce /var/www/html

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

COPY ./docker/vhost.conf /etc/apache2/sites-available/000-default.conf
