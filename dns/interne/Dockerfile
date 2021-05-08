FROM ubuntu:18.04


ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive 
RUN apt update

# Installation de bind9
RUN apt-get install -y bind9
RUN apt-get install -y dnsutils
RUN apt-get install -y bind9utils
RUN apt-get install -y bind9-doc
RUN apt-get install -y iputils-ping

# Activation de IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# On copie les fichier de configuration

COPY configs/db.l1-5.ephec-ti.be /etc/bind/

#COPY etc/db.l1-5.ephec-ti.be /etc/bind/internal/

COPY configs/named.conf /etc/bind/
COPY configs/named.conf.local /etc/bind/
COPY configs/named.conf.options /etc/bind/
#COPY etc/named.conf.default-zones /etc/bind

# Run eternal loop
#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]

EXPOSE 5353

CMD named -g
