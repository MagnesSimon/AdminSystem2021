FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive
RUN apt update
#installation postfix
RUN apt-get install -y postfix
Run apt update
RUN apt-get install -y mailutils

<<<<<<< HEAD
#RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get -y -q &&install postfix mailutils  -y&& apt-get -y install nano

#copie des fichiers
COPY ./postfix/main.cf /etc/postfix/
#COPY ./postfix/hosts /etc/
#COPY ./postfix/hostname /etc/
=======
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
>>>>>>> e1d0c1927a84b1ca363ea49717f468b04b064407

EXPOSE 25


CMD /etc/init.d/postfix start && /bin/bash
