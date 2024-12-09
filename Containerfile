From fedora:latest
RUN dnf upgrade -yqq
RUN dnf -y update && dnf -y install httpd 
RUN dnf -y update && dnf -y install vim 
RUN dnf -y update && dnf -y install tuxpaint
COPY myinfo.html /var/www/html/myinfo.html
Expose 80/tcp
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND