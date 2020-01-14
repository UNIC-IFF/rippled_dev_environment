#/bin/bash
source scripts/common_vars.sh

# Launch source-builder-container
. scripts/launch_container.sh
# build rippled
#docker exec -it ${DOCKER_CONTAINER_NAME} cmake --build .

num_procs=$(lscpu -p | grep -v '^#' | sort -u -t, -k 2,4 | wc -l) # number of physical cores
mem_size=$(free -m | grep '^Mem:' | awk '{print $2}')
mem_thresh_per_core=3700

num_jobs=$(expr $mem_size / $mem_thresh_per_core )

afforted_jobs=$( if [ $num_jobs -lt 1 ]; then echo 1; else echo $( if [ $num_procs -lt $num_jobs ]; then echo $num_procs; else echo $num_jobs; fi ); fi )

echo "Building rippled using ${afforted_jobs} jobs"

docker exec -it ${DOCKER_CONTAINER_NAME} cmake  --build . -j ${afforted_jobs}

#cmake --build .


