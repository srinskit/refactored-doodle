#!/bin/bash
set -e 

vertx_sd --zoos zookeeper --hazelcast &
prometheus --config.file=prometheus.yml --storage.tsdb.path /prom-data &

wait -n 