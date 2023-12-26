FROM alpine:latest

COPY photogenic.zip /var/www/html/

RUN apk --no-cache add \
    apache2 \
    unzip \
    && unzip /var/www/html/photogenic.zip -d /var/www/html/ \
    && rm /var/www/html/photogenic.zip \
    && rm -rf /var/cache/apk/*

WORKDIR /var/www/html/

CMD ["httpd", "-D", "FOREGROUND"]
EXPOSE 80
