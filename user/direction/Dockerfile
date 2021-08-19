FROM ubuntu:latest

RUN apt-get update && apt-get install -y 
<<<<<<< HEAD
RUN apt-get install dnsutils net-tools iputils-ping -y
RUN apt-get install nano -y
RUN apt-get install curl elinks -y
=======
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl elinks
RUN apt-get install vim -y
RUN apt-get install net-tools -y
>>>>>>> 96b695a23a70b93e247912b09403ccb832390843

RUN useradd -ms /bin/bash direction

COPY resolv.conf /etc/resolv.conf

<<<<<<< HEAD
=======


>>>>>>> 96b695a23a70b93e247912b09403ccb832390843
CMD tail -f /dev/null
