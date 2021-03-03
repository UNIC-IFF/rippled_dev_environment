export DOCKER_DEB_PKG_BUILDER_IMAGE=rippled-ubuntu-builder
export DOCKER_CONTAINER_NAME=xrp-builder
export DOCKER_SRC_BUILDER_CONTAINER_IMAGE=rippled-src-builder
export DOCKER_RUNNER_CONTAINER_IMAGE=rippled-unittest-runner

export DOCKER_SOURCE_DIR=/opt/rippled_bld/pkg/rippled
export DOCKER_KEYSTOOL_SOURCE_DIR=/opt/rippled_bld/pkg/validator-keys-tool
export DOCKER_BUILD_DIR=/opt/rippled_bld/pkg/out
export DOCKER_KEYSTOOL_BUILD_DIR=/opt/rippled_bld/pkg/validator-keys-tool-out

export SOURCE_DIR=$(pwd)/rippled
export KEYSTOOL_SOURCE_DIR=$(pwd)/rippled-tools/validator-keys-tool
export KEYSTOOL_BUILD_DIR=$(pwd)/build_validator_keys_tool
export BUILD_DIR=$(pwd)/build_rippled

export UNITTESTS="ripple.consensus.ByzantineSensitivitySim"
