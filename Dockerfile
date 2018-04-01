FROM wordpress:latest


RUN apt-get update

RUN touch /var/log/apache2/php_err.log && chown www-data:www-data /var/log/apache2/php_err.log

COPY wp-config/upload.ini /usr/local/etc/php/conf.d/
COPY wp-config/php_error.ini /usr/local/etc/php/conf.d/php_error.ini
COPY wp-config/php.ini /usr/local/etc/php/conf.d/