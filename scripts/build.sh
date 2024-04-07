#!/usr/bin/env bash

# Packages buildpack, creates builder, and publishes images to container image registry

if [ "$1" = "local" ]
then
  PREFIX="localhost:5000"
  DOCKER_HOST="${PREFIX}"
else
  PREFIX="cftoolsuite"
  DOCKER_HOST="docker.io"
  docker login docker.io -u cftoolsuite
fi

echo "Build, tag, and push buildpack to $DOCKER_HOST"

pack buildpack package java-buildpack:latest --config ./package.toml --format image
docker tag java-buildpack:latest java-buildpack:12.1.0-cftoolsuite
docker tag java-buildpack:latest ${PREFIX}/java-buildpack:latest
docker tag java-buildpack:12.1.0-cftoolsuite ${PREFIX}/java-buildpack:12.1.0-cftoolsuite
docker push ${PREFIX}/java-buildpack:latest
docker push ${PREFIX}/java-buildpack:12.1.0-cftoolsuite
