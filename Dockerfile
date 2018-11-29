FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

RUN apt update
RUN apt upgrade -y
RUN apt install -y apache2
RUN a2enmod proxy &\
    service apache2 restart


EXPOSE 80
