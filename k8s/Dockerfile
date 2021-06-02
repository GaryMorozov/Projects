FROM alpine
RUN yum -y update; yum -y install httpd; yum -y install php

COPY ./index.php /var/www/html/index.php

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
