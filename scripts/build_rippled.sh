#/bin/bash
source scripts/common_vars.sh

# Launch source-builder-container
. scripts/launch_container.sh
# build rippled
docker exec -it ${DOCKER_CONTAINER_NAME} cmake --build .

#cmake --build .


