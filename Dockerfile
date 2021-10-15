FROM centos:latest
MAINTAINER kapil@gmail.com
RUN yum install -y httpd \
    zip \ 
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/pure.zip /var/www/html
WORKDIR /var/www/html
RUN unzip pure.zip
RUN cp -rvf pure/* .
RUN rm -rf __MACOSX pure pure.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
