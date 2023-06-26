FROM centos:latest
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/chocolux.zip /Vvar/www/html/
WORKDIR /var/www/html/
RUN unzip Chocolux Free Website Template - Free-CSS.com.zip
RUN cp -rvf chocolux-html/*
RUN rm -rf  Chocolux Free Website Template - Free-CSS.com.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80