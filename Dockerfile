# Dockerfile for apache-proxy server docker for cturtle98.com

FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

RUN apt update &\
    apt upgrade -y

# RUN apt-get install software-properties-common &\
#    add-apt-repository ppa:certbot/certbot &\
#    apt-get update &\
#    apt-get install python-certbot-apache

RUN apt install -y apache2
 
RUN a2enmod proxy rewrite &\
    service apache2 restart

RUN certbot --apache

EXPOSE 80
