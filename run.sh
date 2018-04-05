#!/bin/sh

docker run --name 1c-postgrespro --restart always \
  --net host \
  --detach \
  --volume 1c-postgrespro-data:/data \
  --volume /etc/localtime:/etc/localtime:ro \
  --env POSTGRES_PASSWORD=123 \
  --env LC_MESSAGES = "ru_RU.UTF-8" \
bosenok/1c-postgrespro
