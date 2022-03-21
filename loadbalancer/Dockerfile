FROM debian:buster
RUN apt-get update
RUN apt-get install -y apache2 && apt-get -y autoclean
RUN rm /etc/apache2/sites-enabled/000-default.conf
COPY ./apache/vhost_quanda.conf /etc/apache2/sites-enabled/vhost_quanda.conf
COPY ./apache/ports.conf /etc/apache2/ports.conf
CMD /usr/sbin/apache2ctl -D FOREGROUND