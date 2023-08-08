FROM ubuntu:trusty
LABEL maintainer address "umagoud"
RUN apt update && apt install apache2 -y
COPY ./ /var/www/html
CMD ["apachectl", "-D","FOREGROUND"]
EXPOSE 80
