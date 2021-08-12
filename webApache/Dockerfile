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
COPY /www/b2b/index.php /var/www/html/index.php
COPY /www/b2b/index.php /var/www/html/b2b.l1-5.ephec-ti.be/index.php
COPY /config/ /etc/apache2/sites-available/


#COPY ./apache2.conf /etc/apache2/apache2.conf
