From fedora:latest
RUN dnf upgrade -yqq
RUN dnf -y install tuxpaint vim httpd
COPY myinfo.html /var/www/html/myinfo.html
Expose 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND