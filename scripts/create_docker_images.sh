#!/bin/bash

source scripts/common_vars.sh
echo "Building rippled DEB package builder image..."
docker build -t ${DOCKER_DEB_PKG_BUILDER_IMAGE} --build-arg DIST_TAG=18.04 -f ${SOURCE_DIR}/Builds/containers/ubuntu-builder/Dockerfile ${SOURCE_DIR}/Builds/containers


echo "Building rippled source builder image..."
docker build -t $DOCKER_SRC_BUILDER_CONTAINER_IMAGE --build-arg DIST_TAG=18.04 -f docker/rippled-source-builder/Dockerfile .

echo "Building rippled unittests runner image..."
docker build -t $DOCKER_RUNNER_CONTAINER_IMAGE -f docker/rippled-unittests-runner/Dockerfile docker/rippled-unittests-runner

echo "DONE"
