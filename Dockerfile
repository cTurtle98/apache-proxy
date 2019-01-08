# Dockerfile for apache-proxy server docker for cturtle98.com

FROM ubuntu:latest
MAINTAINER Ciaran admin@cturtle98.com

#input WEBPY ZM EMBY
EXPOSE 80 8088 8005 8096

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y apache2 libapache2-mod-gnutls
 
RUN a2enmod proxy &&\
    a2enmod proxy_http &&\
    a2enmod proxy_html &&\
    a2enmod rewrite &&\
    # a2enmod ssl &&\
    service apache2 restart

RUN echo - * 80 &&\
    ls /etc/apache2/sites-available/ &&\
    echo - * 80

RUN a2dissite 000-default.conf
ADD cturtle98.com.conf /etc/apache2/sites-available/cturtle98.com.conf
RUN a2ensite cturtle98.com.conf

CMD apachectl -D FOREGROUND
