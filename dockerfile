FROM php:8.0-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git mysql*
RUN git clone https://github.com/umme-habiba328/docker-webproject.git /var/www/html/