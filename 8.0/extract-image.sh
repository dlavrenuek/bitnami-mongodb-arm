#!/bin/bash

# extract image archive from trixie-build
CONTAINER=$(docker create trixie-build)
docker cp $CONTAINER:/app/export.tar - > ./trixie-export.tar
docker rm -v $CONTAINER
tar -xvf ./trixie-export.tar

# import to local docker registry
ID=$(docker load -i ./export.tar | awk '{print $4}')
docker tag "$ID" "bitnami/minideb:trixie"

# clean u temporary files
rm ./trixie-export.tar
rm ./export.tar

echo "successfully built and tagged bitnami/minideb:trixie"
