  
FROM php:7.2-apache

# Ajout de différents packages.
RUN apt update -y && apt upgrade -y
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copie des fichiers à implémenter dans le container docker "web".
COPY config/portail.woodytoys.intranet.conf /etc/apache2/sites-available

# lien entre sites-available et sitesenabled
RUN ln -s /etc/apache2/sites-available/portail.woodytoys.intranet.conf /etc/apache2/sites-enabled

# Création des répertoire dans le container
RUN mkdir /var/www/portail.woodytoys.intranet

# copier des fichier à affihcer contenant les pages web
COPY /www/index.php /var/www/portail.woodytoys.intranet/index.php



