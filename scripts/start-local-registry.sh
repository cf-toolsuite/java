#!//usr/bin/env bash

# Starts up a local container image registry for inner-loop testing purposes
# Typically used while iterating on buildpack, builder, or extension development
# Facilitates local hosting of image refs before publishing such images to hosted public container image registry

docker run --rm -d -p 5000:5000 --name registry registry:2
