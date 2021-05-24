FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive
RUN apt update
#installation postfix
RUN apt-get install -y postfix
Run apt update
RUN apt-get install -y mailutils

#RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get -y -q &&install postfix mailutils  -y&& apt-get -y install nano

#copie des fichiers
COPY ./postfix/main.cf /etc/postfix/
#COPY ./postfix/hosts /etc/
#COPY ./postfix/hostname /etc/

EXPOSE 25


CMD /etc/init.d/postfix start && /bin/bash
