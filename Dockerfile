FROM php:8.2-apache
COPY ./demo.apache.conf /etc/apache2/sites-available/html.conf
RUN a2ensite html
RUN a2enmod rewrite
RUN service apache2 restart