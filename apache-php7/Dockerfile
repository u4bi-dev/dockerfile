FROM u4bi/ubuntu:16.04

RUN apt-get -y install apache2 php7.0 php7.0-mysql libapache2-mod-php7.0 lynx-cur

RUN a2enmod php7.0
RUN a2enmod rewrite

RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/7.0/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php/7.0/apache2/php.ini

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
ADD site/index.php /var/www/site/index.php

RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf