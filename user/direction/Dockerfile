FROM ubuntu:latest

RUN apt-get update && apt-get install -y 
RUN apt-get install dnsutils net-tools iputils-ping -y
RUN apt-get install nano -y
RUN apt-get install curl elinks -y

RUN useradd -ms /bin/bash direction

COPY resolv.conf /etc/resolv.conf

CMD tail -f /dev/null
