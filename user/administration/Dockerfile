FROM ubuntu:latest

#installation des outils nécessaires
RUN apt-get update && apt-get install -y 
RUN apt-get install dnsutils net-tools iputils-ping -y
RUN apt-get install lynx -y
RUN apt-get install nano -y
RUN apt-get install mailutils -y
RUN apt-get update && apt-get install mutt -y

#Permet l'ajout du nameserver correspondant au dns
COPY resolv.conf /etc/resolv.conf

#Création d'un utilisateur
RUN useradd -ms /bin/bash administration


CMD tail -F /dev/null
