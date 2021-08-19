FROM ubuntu:latest

#installation des outils nécessaires
RUN apt-get update && apt-get install -y 
RUN apt-get install dnsutils net-tools iputils-ping -y
RUN apt-get install lynx -y
RUN apt-get install nano -y
RUN apt-get install mailutils -y
RUN apt-get update && apt-get install mutt -y


COPY resolv.conf /etc/resolv.conf

#RUN mkdir /var/spool/mail/$USER

#Création d'un utilisateur
RUN useradd -ms /bin/bash administration

#Connection à l'utilisateur créé
#USER administration

CMD tail -F /dev/null
