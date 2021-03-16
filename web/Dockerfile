# Groupe 1 - Simon Magnes & François Temmerman & Thomas Namurois

#A partir d'une image ubuntu
FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
#Installe le serveur apache sur notre image

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive 



RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get install -y php php-mysql


#Copie l'html de notre dossier dans le container docker

COPY etc/wtl1-5.ephec-ti.be.conf /etc/apache2/sites-available
COPY etc/b2b.wtl1-5.ephec-ti.be.conf /etc/apache2/sites-available
COPY etc/intranet.wtl1-5.ephec-ti.be.conf /etc/apache2/sites-available

RUN ln -s /etc/apache2/sites-available/wtl1-5.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/b2b.wtl1-5.ephec-ti.be.conf /etc/apache2/sites-enabled
RUN ln -s /etc/apache2/sites-available/intranet.wtl1-5.ephec-ti.be.conf /etc/apache2/sites-enabled


RUN mkdir /var/www/b2b.wtl1-5.ephec-ti.be
RUN mkdir /var/www/wtl1-5.ephec-ti.be
RUN mkdir /var/www/intranet.wtl1-5.ephec-ti.be


COPY /etc/www/public/index.html /var/www/html/index.html
COPY /etc/www/b2b/index.html /var/www/html/b2b.wtl1-5.ephec-ti.be/index.html
COPY /etc/www/interne/index.html /var/www/html/intranet.wtl1-5.ephec-ti.be/index.html

#Spécifie sur quel numéro de port le container doit faire tourner le processus
EXPOSE 80



#précise qu'on veut que le serveur http run en background
CMD apachectl -DFOREGROUND
