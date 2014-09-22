#!/bin/bash -e

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
