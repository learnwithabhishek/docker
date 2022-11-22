FROM ubuntu

LABEL "Name" = "Abhishek"

LABEL "Project" = "Clean_Work Website Image"

RUN apt update && apt install apache2 -y

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80

WORKDIR /var/www/html

VOLUME /var/log/apache2

ADD clean.tar.gz /var/www/html

