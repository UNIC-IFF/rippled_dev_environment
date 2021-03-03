#!/bin/bash
source scripts/common_vars.sh

# Launch source-builder-container
. scripts/launch_container.sh
# build validator-keys-tool
docker exec -it --workdir ${DOCKER_KEYSTOOL_BUILD_DIR} ${DOCKER_CONTAINER_NAME}  cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=${DOCKER_BUILD_DIR} ${DOCKER_KEYSTOOL_SOURCE_DIR}

docker exec -it --workdir ${DOCKER_KEYSTOOL_BUILD_DIR} ${DOCKER_CONTAINER_NAME}  cmake --build .
 

