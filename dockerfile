FROM ubuntu:24.04

RUN apt update && apt upgrade -y
RUN apt install apache2
RUN systemctl enable apache2
RUN rm -rf /var/www/html/index.html

ADD ./index.html /var/www/html

RUN systemctl restart apache2
EXPOSE 80
EXPOSE 443