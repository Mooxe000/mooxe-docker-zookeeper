#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"
imgName="zookeeper"
MYID="1"

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
  /usr/bin/env bash -lc " \
    echo ${MYID:-1} > /tmp/zookeeper/myid && \
    /usr/bin/env bash
  "

  # -p 2180:2181 \
  # -p 2887:2888 \
  # -p 3887:3888 \
  # -e SERVERS=192.168.99.100,192.168.99.100,192.168.99.100 \
