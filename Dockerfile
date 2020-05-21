FROM ubuntu:16.04
RUN apt-get update && apt-get -y install apache2                                                                       
ADD index.html /var/www/html/index.html
EXPOSE 9090:80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
