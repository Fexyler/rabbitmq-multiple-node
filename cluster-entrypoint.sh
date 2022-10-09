#!/bin/bash
set -e
/usr/local/bin/docker-entrypoint.sh rabbitmq-server -detached
# this is kinda mandatory, it should wait until master finishes starting process
sleep 30s
rabbitmqctl stop_app
rabbitmqctl reset
rabbitmqctl join_cluster rabbit@rabbitmq-master
rabbitmqctl stop
# to wait until it is finished properly
sleep 3s
rabbitmq-server