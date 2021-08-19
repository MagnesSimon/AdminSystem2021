FROM ubuntu:latest

#installation des outils nécessaires
RUN apt-get update && apt-get install -y
RUN apt-get install dnsutils net-tools iputils-ping -y
RUN apt-get install lynx -y
RUN apt-get install nano -y
RUN apt-get install mailutils -y
RUN apt-get update && apt-get install mutt -y

#ajout du nameserver vers le dns int
COPY resolv.conf /etc/resolv.conf

#Création d'un utilisateur
RUN useradd -ms /bin/bash commerciaux


CMD tail -F /dev/null
