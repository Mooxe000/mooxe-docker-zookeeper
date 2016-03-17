#!/usr/bin/env bash

cwd="$(cd -P -- "$(dirname -- "$0")" && pwd -P)"

set -e

curl -OL https://raw.githubusercontent.com/jplock/docker-zookeeper/master/Dockerfile

sed -ie 's/java:openjdk-8-jre-alpine/mooxe\/java8/g' \
  ${cwd}/Dockerfile

rm -rf ${cwd}/Dockerfilee
