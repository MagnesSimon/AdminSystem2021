FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive

#installation postfix
RUN apt-get install -y postfix
RUN apt-get install -y mailutils

#installation dovecot
RUN apt-get install -y dovecot-imapd 
RUN apt-get install -y dovecot-pop3d

#copie des fichiers
COPY ./postfix/main.cf /etc/postfix/
COPY ./dovecot/dovecot.conf /etc/dovecot/
COPY ./dovecot/10-mail.conf /etc/dovecot/conf.d/  

#Création contact
RUN useradd contact
RUN useradd magnes.simon
RUN useradd namurois.thomas

EXPOSE 25


CMD /etc/init.d/postfix start && /bin/bash
