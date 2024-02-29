
FROM php:8.3-fpm-alpine

# Install bash (for nicer interactive termninals). 
# "sh" exists natively. 
RUN apk add --no-cache bash

# Install PDO & MySQL Driver. 
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Use the recommended production php.ini file. 
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Copy our custom ini config. 
COPY "./php.ini" "$PHP_INI_DIR/conf.d/custom.ini"
