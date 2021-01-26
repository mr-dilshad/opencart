FROM php:7.4-apache
WORKDIR /
RUN a2enmod rewrite
RUN apt-get update
RUN apt-get install -y vim
RUN docker-php-ext-install mysqli
RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
#COPY src/ /var/www/html
COPY upload/ /var/www/html