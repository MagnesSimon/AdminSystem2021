FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive

#installation des outils pour le container docker
RUN apt-get update
RUN apt-get install -y mailutils #installation des outils mailutils pour l'utilisation des mails et l'affichage mailq
RUN apt-get install -y telnet #installation de telnet pour se connecter au port nécessaire
RUN apt-get install -y nano #pour la modification des fichiers de configuration en cas de besoin (pour le certificat par exemple)

#installation postfix
RUN apt-get install -y postfix

#installation dovecot
RUN apt-get install -y dovecot-imapd
RUN apt-get install -y dovecot-pop3d

#copy des configurations postfix adapté
COPY ./postfix/main.cf /etc/postfix/
COPY ./postfix/master.cf /etc/postfix/
COPY ./postfix/virtual /etc/postfix/

#copy des configurations dovecot adapté
COPY ./dovecot/dovecot.conf /etc/dovecot/
COPY ./dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/

EXPOSE 25

CMD /bin/bash
