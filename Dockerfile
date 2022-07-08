FROM almalinux:latest
RUN yum update -y
RUN yum install httpd -y
ADD . /var/www/html/
COPY ./index.html /var/www/html/
EXPOSE 80
ENTRYPOINT httpd -D FOREGROUND
