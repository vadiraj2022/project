FROM almalinux:latest
RUN yum update -y
RUN yum install httpd -y
ADD . /var/www/html/
RUN echo "hello all" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT httpd -D FOREGROUND
