#!/bin/bash -e

# for the Postfix's myhostname  bug
if [ -n "$POSTFIX_MYHOSTNAME" ]
then
    echo "myhostname = $POSTFIX_MYHOSTNAME" >> /etc/postfix/main.cf
fi

service rsyslog start
service postfix start

function stop_svc {
    service postfix stop
    service rsyslog stop
    exit
}

trap 'stop_svc' SIGTERM

while true
do
    sleep 1
done
