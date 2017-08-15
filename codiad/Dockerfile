FROM php:7-apache
MAINTAINER Aaron Xiao <xiaoxiangquan@gmail.com>

RUN usermod -u 1000 www-data
RUN usermod -G root www-data

VOLUME /var/www/html/workspace
VOLUME /var/www/html/data
VOLUME /var/www/html/plugins
VOLUME /var/www/html/themes
VOLUME /var/www/html/themes/default

COPY Codiad-v.2.8.4/ /var/www/html/
