

#---------------------------------------------------------------------------
FROM ubuntu:16.04

RUN apt-get -y update
#RUN apt-get -y install apache2
RUN apt install -y nginx
RUN echo 'Hello! Maksim' > /var/www/html/index.nginx-debian.html


#CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
#CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80  443

CMD ["nginx","-g","daemon off;"]
