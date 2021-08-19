FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install vim -y

WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf

COPY ./zone/ /etc/bind/master/

<<<<<<< HEAD
# Activation de IPv4
RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# On copie les fichier de configuration
COPY configs/db.woodytoys.local.be /etc/bind/master/
COPY configs/0.17.172.in-addr.arpa /etc/bind/master/
COPY configs/named.conf /etc/bind/
COPY configs/named.conf.local /etc/bind/
COPY configs/named.conf.options /etc/bind/

# Ouverture du port 53
EXPOSE 53

CMD named -g
=======
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
>>>>>>> 96b695a23a70b93e247912b09403ccb832390843
