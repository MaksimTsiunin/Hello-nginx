
#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on Ubuntu
#
# Made by Denis Astahov ADV-IT  13-March-2019
#---------------------------------------------------------------------------

FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install apache2
RUN apt install nginx
RUN echo 'Hello! Maksim' > /var/www/html/index.html


CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80