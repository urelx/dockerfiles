# rsyslog-server
#
# VERSION               0.0.1

FROM centos
MAINTAINER Yuu Yamanaka <yuu@relx.jp>

RUN yum install -y rsyslog vim

ADD etc/rsyslog.d/server.conf /etc/rsyslog.d/server.conf

EXPOSE 514/tcp 514/udp

#CMD ["smtp-sink", "-u", "postfix", "0.0.0.0:25", "100"]
