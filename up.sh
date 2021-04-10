#!/bin/bash
set -euo pipefail
cd `dirname $0`
docker pull yassine/soxy-driver
docker run --rm -d -v '/var/run/docker.sock':'/var/run/docker.sock' -v '/run/docker/plugins':'/run/docker/plugins' --net host --name soxy-driver --privileged yassine/soxy-driver
docker-compose up
