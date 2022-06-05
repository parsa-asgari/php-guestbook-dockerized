
FROM ubuntu:22.04
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y wget gnupg2 lsb-release apt-utils
RUN apt-get install -y apache2 libapache2-mod-php8.1 php8.1 php8.1 php8.1 php8.1-mysql 
RUN apt-get install -y php8.1-gd php8.1-curl php8.1-mbstring php8.1-intl 
#RUN php -v
#RUN php -m
#RUN ls
#RUN ls
COPY src/ /var/www/html
COPY 000-default.conf /etc/apache2/sites-enabled/
COPY environment /etc/
COPY secrets /var/www/html/settings.php
RUN cat /var/www/html/settings.php
RUN echo ". /etc/environment" >> /etc/apache2/envvars
EXPOSE 80
RUN rm /var/www/html/index.html
#RUN php -m
RUN chown -R www-data:www-data /var/www/
CMD /usr/sbin/apache2ctl -D FOREGROUND
