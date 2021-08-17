FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install vim -y

WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf

COPY ./zone/ /etc/bind/master/

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
