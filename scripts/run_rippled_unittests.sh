#!/bin/bash

. scripts/common_vars.sh

docker run -it -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} -e UNITTESTS=${UNITTESTS} ${DOCKER_RUNNER_CONTAINER_IMAGE}
