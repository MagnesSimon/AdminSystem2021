FROM php:7.2-apache

# Ajout de différents packages.
#RUN apt-get update && apt-get install -y 
#RUN apt-get update && apt-get install -y bind9
#RUN apt-get install -y dnsutils net-tools iputils-ping
#RUN apt-get install -y curl 
#RUN apt-get install vim -y
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copie des fichiers à implémenter dans le container docker "web".
#COPY /www/index.html /var/www/html/index.html
#COPY /www/b2b/index.php /var/www/html/index.php
#COPY /www/b2b/index.php /var/www/html/b2b.l1-5.ephec-ti.be/index.php
#COPY /config/ /etc/apache2/sites-available/


#COPY ./apache2.conf /etc/apache2/apache2.conf


COPY config/l1-5.ephec-ti.be.conf /etc/apache2/sites-available
COPY config/b2b.l1-5.ephec-ti.be.conf /etc/apache2/sites-available
COPY config/intranet.l1-5.ephec-ti.be.conf /etc/apache2/sites-available

RUN ln -s /etc/apache2/sites-available/l1-5.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.l1-5.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/intranet.l1-5.ephec-ti.be.conf /etc/apache2/sites-enabled


RUN mkdir /var/www/b2b.l1-5.ephec-ti.be
RUN mkdir /var/www/l1-5.ephec-ti.be
RUN mkdir /var/www/intranet.l1-5.ephec-ti.be


COPY /www/index.html /var/www/html/index.html
COPY /www/b2b/index.php /var/www/html/b2b.l1-5.ephec-ti.be/index.php
#COPY /configs/www/b2b/process.php /var/www/html/b2b.l1-5.ephec-ti.be/process.php
COPY /www/interne/index.html /var/www/html/intranet.l1-5.ephec-ti.be/index.html

