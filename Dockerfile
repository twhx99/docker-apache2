FROM ubuntu:20.04

LABEL maintainer="Tobias Wiese [hello@twhx.de]"

ADD . /
RUN ["chmod", "+x", "/setup.sh"]
RUN /setup.sh

ENV TZ=Europe/Berlin

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/www/html

EXPOSE 80

CMD ["./run.sh"]
