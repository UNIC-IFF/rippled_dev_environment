#/bin/bash
. scripts/common_vars.sh

# Prepare directories etc

if [[ ! -e $BUILD_DIR ]]; then
	mkdir -p $BUILD_DIR
elif [[ ! -d $BUILD_DIR ]]; then
	rm $BUILD_DIR
	mkdir -p $BUILD_DIR
fi

#######

# Launch source-builder-container
. scripts/launch_container.sh

#docker run -d -it --rm --name ${DOCKER_CONTAINER_NAME} -v ${SOURCE_DIR}:${DOCKER_SOURCE_DIR} -v ${BUILD_DIR}:${DOCKER_BUILD_DIR} --entrypoint /bin/bash ${DOCKER_CONTAINER_IMAGE}

# container working directory is by default in the build directory
#cd $BUILD_DIR

#preconfiguration
docker exec -it ${DOCKER_CONTAINER_NAME} cmake ${DOCKER_SOURCE_DIR}
#cmake $SOURCE_DIR


# build rippled
#docker exec -it ${DOCKER_CONTAINER_NAME} cmake --build .

#cmake --build .


