FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install bind9 bind9utils -y 
RUN apt-get install iputils-ping

WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf
COPY db.woodytoys.intranet /etc/bind/master/


CMD ["named", "-c", "/etc/bind/named.conf", "-g"]

