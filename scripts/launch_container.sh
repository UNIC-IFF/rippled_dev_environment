#! /bin/bash

. scripts/common_vars.sh

# TODO check if container is already running
isrunning=$(docker container ls --filter=name=${DOCKER_CONTAINER_NAME} -q)
# when it doesn't, lauch it
if [ -z $isrunning ]; then
	docker run -d -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} -v ${SOURCE_DIR}:${DOCKER_SOURCE_DIR} --entrypoint /bin/bash ${DOCKER_SRC_BUILDER_CONTAINER_IMAGE}
	#docker run -d -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${SOURCE_DIR}:${DOCKER_SOURCE_DIR} -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} --entrypoint /bin/bash ${DOCKER_CONTAINER_IMAGE}
else
	echo "It's running already."
fi;

# check if it's running now

isrunning=$(docker container ls --filter=name=${DOCKER_CONTAINER_NAME} -q)
if [ -n $isrunning ]; then
	echo "Source builder container is running. CONTAINER_ID = ${isrunning} DOCKER_IMAGE = ${DOCKER_SOURCE_BUILDER_IMAGE}  CONTAINER_NAME= ${DOCKER_CONTAINER_NAME}"
	echo "You can now invoke command on it."
fi;


