FROM php:8.2-apache
COPY ./demo.apache.conf /etc/apache2/sites-available/html.conf
RUN a2ensite html && \
    a2enmod rewrite && \
    service apache2 restart && \
    curl -sS https://getcomposer.org/installer | php && \
    chmod +x composer.phar && mv composer.phar /usr/local/bin/composer
