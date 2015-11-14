#!/usr/bin/env bash

set -e

docker run \
  --name zookeeper_2 \
  --rm \
  -ti \
  -e MYID=2 \
  -v $(pwd):/root/zookeeper \
  -v $(pwd)/zoo.cfg:/opt/zookeeper/conf/zoo.cfg:ro \
  -p 2182:2181 \
  -p 2888:2888 \
  -p 3888:3888 \
  mooxe/zookeeper \
  /bin/bash

  # -e SERVERS=192.168.99.100,192.168.99.100,192.168.99.100 \
# zkServer.sh start-foreground
