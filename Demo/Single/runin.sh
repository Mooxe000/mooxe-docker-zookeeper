#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
imgName="zookeeper"

set -e

docker run \
  --name ${imgName}_${MYID} \
  --rm \
  -ti \
  -e MYID=${MYID} \
  -v ${cwd}/..:/root/${imgName} \
  -v ${cwd}/zoo.cfg:/opt/${imgName}/conf/zoo.cfg:ro \
  mooxe/${imgName} \
  /bin/bash

  # -p 2181:2180 \
  # -p 2888:2888 \
  # -p 3888:3888 \
  # -e SERVERS=192.168.99.100,192.168.99.100,192.168.99.100 \
