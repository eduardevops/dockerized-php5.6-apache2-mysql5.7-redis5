FROM php:5.6-apache

RUN mkdir /var/www/html/website
VOLUME web:/var/www/html/website

COPY ./conf/website.conf /etc/apache2/sites-available/website.conf
COPY ./conf/php.ini /usr/local/etc/php/
COPY web /var/www/html/website

# Setting ServerName to avoid "Could not reliably determine the server's fully qualified domain name, using 127.0.1.1 for ServerName" warning
RUN echo "ServerName localhost" | tee /etc/apache2/conf-available/servername.conf
RUN a2enconf servername

# Copying webapp/website and configuration files to their respective folders. Configuring Apache
RUN chown -R www-data:www-data /var/www/html/website \
    && a2dissite 000-default.conf \
    && a2ensite website.conf \
    && a2enmod rewrite \
    && service apache2 restart

# Installing PHP, extensions and other necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends libpng-dev libjpeg-dev libjpeg62-turbo libmcrypt4 libmcrypt-dev libcurl3-dev libxml2-dev libxslt-dev libicu-dev  && rm -rf /var/lib/apt/lists/*

RUN apt-get update  \
    && apt-get install -y zlib1g-dev \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/lib \
    && docker-php-ext-install gd \
    && docker-php-ext-install zip \
    && docker-php-ext-install mysql \
    && docker-php-ext-install exif \
    && apt-get purge --auto-remove -y libjpeg-dev libmcrypt-dev libcurl3-dev libxml2-dev libicu-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && apt-get autoremove

# Exposing web ports
EXPOSE 80 443

CMD apachectl -D FOREGROUND
