
ARG DOCKER_DEB_PKG_BUILDER_IMAGE=rippled-ubuntu-builder

FROM ${DOCKER_DEB_PKG_BUILDER_IMAGE}

COPY ./run_rippled.sh /myscripts/run_rippled.sh
RUN chmod +x /myscripts/run_rippled.sh

ENV UNITTESTS="ByzantineFailureSim_test.consensus.rippled"

WORKDIR /opt/rippled_bld/pkg/out

CMD /myscripts/run_rippled.sh
