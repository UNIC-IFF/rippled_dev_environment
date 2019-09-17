#!/bin/bash

source scripts/common_vars.sh
echo "Building rippled DEB package builder image..."
docker build -t ${DOCKER_DEB_PKG_BUILDER_IMAGE} -f ${SOURCE_DIR}/Builds/containers/ubuntu-builder/Dockerfile


echo "Building rippled source builder image..."
docker build -t $DOCKER_SRC_BUILDER_CONTAINER_IMAGE -f docker/rippled-source-builder/Dockerfile

echo "Building rippled unittests runner image..."
docker build -t $DOCKER_RUNNER_CONTAINER_IMAGE -f docker/rippled-unittests-runner/Dockerfile

echo "DONE"
