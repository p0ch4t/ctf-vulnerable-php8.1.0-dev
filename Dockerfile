FROM vulhub/php:8.1-backdoor

WORKDIR /var/www/html

RUN echo "deb http://ftp.debian.org/debian stable main contrib non-free" >> /etc/sources.list
RUN echo "deb http://deb.debian.org/debian/ buster-updates main non-free contrib" >> /etc/sources.list
RUN echo "deb http://security.debian.org/ buster/updates main non-free contrib" >> /etc/sources.list

RUN echo "h4ck3d22_{Y0u4r3r00t}" > /root/.flag.txt

COPY ./pages/ /var/www/html

RUN chmod +x /var/www/html/script.sh

RUN bash /var/www/html/script.sh
