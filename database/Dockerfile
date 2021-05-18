# Groupe L1-5 Magnes Simon - Namurois Thomas - Temmerman François

FROM ubuntu:18.04

RUN apt update 
RUN apt upgrade -y 
RUN apt install -y mysql-server nano

RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password password xxx'"]
RUN ["/bin/bash", "-c", "debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password xxx'"]

RUN mkdir /var/run/mysqld \
 && chown -R mysql:mysql /var/run/mysqld

COPY config/database.sql /tmp
COPY config/setup /tmp

RUN chmod u+x /tmp/setup
RUN /tmp/setup

COPY config/mysqld.cnf /etc/mysql/mysql.conf.d/

EXPOSE 3306

CMD mysqld_safe
