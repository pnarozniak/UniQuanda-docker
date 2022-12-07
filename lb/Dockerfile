FROM nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY ./lb/nginx.conf /etc/nginx/conf.d/default.conf
RUN mkdir /home/certs
COPY ./certificate.pem /home/certs/certificate.pem
COPY ./private.pem /home/certs/private.pem
