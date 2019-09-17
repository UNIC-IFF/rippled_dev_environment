#! /bin/bash

. common_vars.sh

# TODO check if container is already running

# when it doesn't, lauch it

docker run -d -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} -v ${SOURCE_DIR}:${DOCKER_SOURCE_DIR} --entrypoint /bin/bash ${DOCKER_SRC_BUILDER_CONTAINER_IMAGE}
#docker run -d -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${SOURCE_DIR}:${DOCKER_SOURCE_DIR} -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} --entrypoint /bin/bash ${DOCKER_CONTAINER_IMAGE}


# check if it's running now

echo "Source builder container is running.  DOCKER_IMAGE = ${DOCKER_SOURCE_BUILDER_IMAGE}  CONTAINER_NAME= ${DOCKER_CONTAINER_NAME}"
echo "You can now invoke command on it."


