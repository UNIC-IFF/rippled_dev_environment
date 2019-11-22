#/bin/bash
source scripts/common_vars.sh

# Launch source-builder-container
. scripts/launch_container.sh
# build rippled
#docker exec -it ${DOCKER_CONTAINER_NAME} cmake --build .

num_procs=$(lscpu -p | grep -v '^#' | sort -u -t, -k 2,4 | wc -l) # number of physical cores

docker exec -it ${DOCKER_CONTAINER_NAME} cmake  --build . -j ${num_procs}

#cmake --build .


