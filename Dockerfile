FROM 7.4.16-apache-buster
RUN pecl install redis-5.1.1 \
    && pecl install xdebug-2.8.1 \
    && docker-php-ext-enable redis xdebug
COPY . /var/www/html/
WORKDIR /var/www/html/
CMD [ "php", "./your-script.php" ]