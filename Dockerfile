FROM phusion/passenger-customizable:0.9.17
MAINTAINER Graham Gilbert <graham@grahamgilbert.com>

RUN mkdir -p /etc/my_init.d
ADD run.sh /etc/my_init.d/run.sh
CMD ["/sbin/my_init"]

RUN rm -f /etc/service/nginx/down
RUN rm -f /etc/nginx/sites-enabled/default
ADD munki.conf /etc/nginx/sites-enabled/munki.conf
VOLUME ["/var/log/nginx", "/usr/local/nginx/html"]
EXPOSE 80
