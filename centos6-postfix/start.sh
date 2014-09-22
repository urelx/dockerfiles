#!/bin/bash -e

service rsyslog start
service postfix start

function stop_svc {
    service postfix stop
    service rsyslog stop
}

trap 'stop_svc' EXIT

while true
do
    sleep 1
done
