FROM debian:buster
RUN apt-get update
RUN apt-get install -y mc && apt-get -y autoclean
RUN apt-get install -y apache2 && apt-get -y autoclean

RUN a2enmod proxy
RUN a2enmod proxy_html
RUN a2enmod proxy_http
RUN a2enmod proxy_ajp
RUN a2enmod rewrite
RUN a2enmod deflate
RUN a2enmod headers
RUN a2enmod proxy_balancer
RUN a2enmod proxy_connect
RUN a2enmod lbmethod_byrequests
RUN a2enmod ssl

RUN mkdir /home/cert

COPY certificate.pem /home/cert/
COPY private.pem /home/cert/

RUN rm /etc/apache2/sites-enabled/000-default.conf
COPY ./load_balancer/apache/vhost_uniquanda.conf /etc/apache2/sites-enabled/vhost_uniquanda.conf
COPY ./load_balancer/apache/ports.conf /etc/apache2/ports.conf
CMD /usr/sbin/apache2ctl -D FOREGROUND