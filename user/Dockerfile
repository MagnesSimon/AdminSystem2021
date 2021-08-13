FROM ubuntu:latest

RUN apt-get update && apt-get install -y 
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl elinks
RUN apt-get install vim -y
RUN apt-get install net-tools -y

RUN useradd -ms /bin/bash direction

USER direction

CMD tail -f /dev/null
