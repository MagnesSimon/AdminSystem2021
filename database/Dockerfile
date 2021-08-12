# Groupe L1-5 Magnes Simon - Namurois Thomas

#MYSQL_ROOT_PASSWORD=secret

From mysql:latest

RUN apt update && apt-get upgrade -y
RUN apt-get install nano -y

WORKDIR /etc/

COPY ./config/ /docker-entrypoint-initdb.d/
