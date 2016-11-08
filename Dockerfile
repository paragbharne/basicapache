FROM ubuntu:14.04

MAINTAINER Parag Bharne <parag.bharne@bizruntime.com>

RUN apt-get update && apt-get install -y apache2

ADD /css /var/www/html/css

ADD /images /var/www/html/images

ADD index.html /var/www/html/

EXPOSE 80

ENTRYPOINT ["apachectl"]

CMD ["-D" , "FOREGROUND"]
