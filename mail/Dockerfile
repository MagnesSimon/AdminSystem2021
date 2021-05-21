FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive

#installation postfix
RUN apt-get install -y postfix
RUN apt-get install -y mailutils

COPY ./postfix/main.cf /etc/postfix/
COPY ./postfix/hosts /etc/
COPY ./postfix/hostname /etc/

EXPOSE 25


CMD /etc/init.d/postfix start && /bin/bash
