FROM php:5.6-apache as PHP5.6

RUN apt-get update && apt-get install -y --no-install-recommends libpng-dev libjpeg-dev libjpeg62-turbo libmcrypt4 libmcrypt-dev libcurl3-dev libxml2-dev libxslt-dev libicu-dev  && rm -rf /var/lib/apt/lists/*

RUN apt-get update  \
    && apt-get install -y zlib1g-dev \
    && docker-php-ext-configure gd --with-jpeg-dir=/usr/lib \
    && docker-php-ext-install gd \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install zip \
    && docker-php-ext-install mysql \
    && docker-php-ext-install exif \
    && apt-get purge --auto-remove -y libjpeg-dev libmcrypt-dev libcurl3-dev libxml2-dev libicu-dev \
    #&& docker-php-ext-install mysqli \
    #&& docker-php-ext-install pdo_mysql \
    && apt-get autoremove

RUN mkdir /var/www/html/website
VOLUME web:/var/www/html/website

COPY ./conf/website.conf /etc/apache2/sites-available/website.conf
COPY ./conf/apache2.conf  /etc/apache2/apache2.conf
COPY ./conf/php.ini /etc
#COPY web /var/www/html/website

RUN chown -R www-data:www-data /var/www/html/website \
    && a2dissite 000-default.conf \
    && a2ensite website.conf \
    && a2enmod rewrite \
    && service apache2 restart
