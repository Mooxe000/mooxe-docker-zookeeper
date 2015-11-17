#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
imgName="zookeeper"
MYID="3"

set -e

docker run \
  --name ${imgName}_${MYID} \
  --rm \
  -ti \
  --net=host \
  -e MYID=${MYID} \
  -v ${cwd}/..:/root/${imgName} \
  -v ${cwd}/zoo.cfg:/opt/${imgName}/conf/zoo.cfg:ro \
  mooxe/${imgName} \
  /bin/bash

  # -p 2182:2181 \
  # -p 2889:2888 \
  # -p 3889:3888 \
  # -e SERVERS=192.168.99.100,192.168.99.100,192.168.99.100 \
