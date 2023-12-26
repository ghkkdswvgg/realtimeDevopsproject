
FROM alpine:latest

RUN apk update \
    && apk add --no-cache \
       httpd \
       unzip \
       wget \
    && rm -rf /var/cache/apk/*

WORKDIR /var/www/html/

ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip .

RUN unzip photogenic.zip \
    && cp -rvf photogenic/* . \
    && rm -rf photogenic photogenic.zip

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
