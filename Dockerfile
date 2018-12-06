# Dockerfile for apache-proxy server docker for cturtle98.com

FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

RUN apt-get update
RUN apt-get upgrade -y

# RUN apt-get install software-properties-common &&\
#    add-apt-repository ppa:certbot/certbot &&\
#    apt-get update &&\
#    apt-get install python-certbot-apache

RUN apt-get install -y apache2
 
#RUN a2enmod proxy proxy_http rewrite &&\
#    service apache2 restart

#RUN certbot --apache

#ADD cturtle98.com.conf /etc/apache2/sites-available/cturtle98.com.conf
#RUN a2dissite 000-default.conf
#RUN a2ensite cturtle98.com.conf


EXPOSE 80
