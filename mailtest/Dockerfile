FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive

#installation des outils pour le container docker
RUN apt-get update
RUN apt-get install -y mailutils 
#installation des outils mailutils pour l'utilisation des mails et l'affichage mailq
RUN apt-get install -y telnet 
#installation de telnet pour se connecter au port nécessaire
RUN apt-get install -y nano 
#pour la modification des fichiers de configuration en cas de besoin (pour le certificat par exemple)
RUN apt-get install net-tools -y

RUN apt-get install -y postfix

EXPOSE 25 110 143

CMD /bin/bash
