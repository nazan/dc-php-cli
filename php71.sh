#!/bin/sh

CONTAINER_NAME='php71-cli-exec-inst0'

CID=$(docker ps -q -f status=running -f name=^/${CONTAINER_NAME}$)
if [ ! "${CID}" ]; then
  docker run --rm -i -d --network=host -v "$HOME":"$HOME":ro -u $(id -u) -w "$PWD" --name=php71-cli-exec-inst0 php71-cli-exec
fi
unset CID

docker exec -u $(id -u) -w "$PWD" php71-cli-exec-inst0 php "$@"