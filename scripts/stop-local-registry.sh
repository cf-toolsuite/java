#!//usr/bin/env bash

# Stops local container image registry
# All images published here while iterating on e.g., buildpack, builder, or extension development will be lost

docker stop registry
