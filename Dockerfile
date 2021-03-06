FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
EXPOSE 80
copy login.html /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
