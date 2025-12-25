# Official PHP image with Apache
FROM php:8.2-apache

# Copy the application files to the Apache document root
COPY . /var/www/html/

# Make sure the necessary PHP extensions are installed
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80 for browser access
EXPOSE 80
