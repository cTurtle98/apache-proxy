# Dockerfile for apache-proxy server docker for cturtle98.com

FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

#input WEBPY ZM EMBY
EXPOSE 80 8088 8005 8096

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y apache2
 
RUN a2enmod proxy proxy_http proxy_html rewrite &&\
    service apache2 restart

RUN a2dissite 000-default.conf
ADD cturtle98.com.conf /etc/apache2/sites-available/cturtle98.com.conf
RUN a2ensite cturtle98.com.conf

CMD apachectl -D FOREGROUND
