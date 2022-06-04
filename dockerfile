#FROM php:7.2-apache
#RUN apt-get update && apt-get install -y wget gnupg2 lsb-release
#RUN apt-get install libapache2-mod-php php-gd php-mysql php7.2-mysql
#RUN wget -q -O- https://packages.sury.org/php/apt.gpg | apt-key add -
#RUN echo 'deb http://deb.debian.org/debian/ oldstable main contrib non-free \n deb http://deb.debian.org/debian/ oldstable-updates main contrib non-free \n deb http://deb.debian.org/debian-security oldstable/updates main \n deb http://ftp.debian.org/debian stretch-backports main \n deb https://packages.sury.org/php/ stretch main' >> /etc/apt/sources.list
#RUN echo 'deb https://packages.sury.org/php/ buster main' >> /etc/sources.list
#RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php7.list
#RUN apt-get update
#RUN apt-get install lsb-release ca-certificates apt-transport-https software-properties-common -y 
#RUN add-apt-repository -y ppa:ondrej/php
#RUN apt-get update 
#RUN apt-get install php-mysql
#RUN lsb_release -a
#RUN apt search php-mysql
#RUN apt-get install php-mysql
#RUN ls /etc/aps/sources.list.d/
#RUN cat /etc/apt/sources.list

FROM ubuntu:latest
ENV TZ=Asia/Tehran
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y wget gnupg2 lsb-release apt-utils
RUN apt-get install -y apache2 libapache2-mod-php8.1 php8.1 php8.1 php8.1 php8.1-mysql 
RUN apt-get install -y php8.1-gd php8.1-curl php8.1-mbstring php8.1-intl 
RUN php -v
RUN php -m
COPY src/ /var/www/html
ENV MYSQL_PASS="]l~BtDsf>}q8h4Zr"
ENV MYSQL_USER="parsa"
ENV MYSQL_HOST="34.121.152.190"
ENV MYSQL_DBNAME="php_guestbook"
EXPOSE 80
#CMD apachectl -D FOREGROUND
RUN rm /var/www/html/index.html
RUN php -m
RUN chown -R www-data:www-data /var/www/
#CMD /usr/sbin/apache2ctl -D FOREGROUND
