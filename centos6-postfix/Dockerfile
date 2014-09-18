FROM centos:centos6
MAINTAINER Yuu Yamanaka <yuu@relx.jp>

RUN yum update -y && yum install -y rsyslog postfix

ONBUILD ADD postfix/ /etc/postfix/
ADD start.sh /start.sh

EXPOSE 25
VOLUME ["/var/log","/var/spool/postfix"]

CMD ["/start.sh"]
