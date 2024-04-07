#!/usr/bin/env bash


# Teardown everyhting used for inner-loop iteraction
# Beware! Destroys all container images, volumes and networks
year=$(date +%Y)

docker image prune --all -f
docker volume prune --all -f
docker network prune -f

rm -Rf /tmp/${year}*
