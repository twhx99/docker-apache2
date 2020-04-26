FROM ubuntu:latest

MAINTAINER Tobias Wiese

ADD *.sh /
RUN ["chmod", "+x", "*.sh"]
RUN /setup.sh

ENV TZ=Europe/Berlin

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

EXPOSE 80

CMD ["./run.sh"]
