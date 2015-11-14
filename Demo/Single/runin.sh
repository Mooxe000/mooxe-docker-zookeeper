#!/usr/bin/env bash

set -e

docker run \
  --name zookeeper \
  --rm \
  -ti \
  -v $(pwd):/root/zookeeper \
  -v $(pwd)/zoo.cfg:/opt/zookeeper/conf/zoo.cfg:ro \
  -p 2181:2181 \
  -p 2888:2888 \
  -p 3888:3888 \
  mooxe/zookeeper \
  /bin/bash

# zkServer.sh start-foreground
