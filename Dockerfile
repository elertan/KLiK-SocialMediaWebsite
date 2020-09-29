FROM php:7.0-apache
WORKDIR /var/www/html
RUN apt-get update && apt-get install -y mysql-client
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli

COPY ./src/ /var/www/html
