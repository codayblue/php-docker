FROM php:7.2-fpm

RUN apt-get -y update && apt-get -y install nginx supervisor &&  apt-get -y clean

COPY supervisord-config /etc/supervisor/conf.d/

WORKDIR /var/www/html

VOLUME /var/www/html

EXPOSE 80 443

CMD ["supervisord","-n","-c","/etc/supervisor/supervisord.conf"]
