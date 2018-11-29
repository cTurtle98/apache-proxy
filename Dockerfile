# Dockerfile for apache-proxy server docker for cturtle98.com

FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

RUN apt-get update
RUN apt-get upgrade -y

# RUN apt-get install software-properties-common &&\
#    add-apt-repository ppa:certbot/certbot &&\
#    apt-get update &&\
#    apt-get install python-certbot-apache

RUN apt-get install -y apache2
 
RUN a2enmod proxy rewrite &&\
    echo "ServerName cturtle98.com" >> /etc/apache2/apache2.conf &&\
    service apache2 restart

#RUN certbot --apache

#ADD cturtle98.com.conf /etc/apache2/sites-available/cturtle98.com.conf
#RUN a2dissite 000-default.conf
#RUN a2ensite cturtle98.com.conf


EXPOSE 80
