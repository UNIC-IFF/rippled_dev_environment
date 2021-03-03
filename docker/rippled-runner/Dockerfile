FROM debian:buster-slim

COPY ./exec_rippled /rippled
WORKDIR /rippled
RUN mkdir -p /ripple_backup/db_path &&\
	mkdir -p /ripple_backup/debug_log &&\
	mkdir -p /ripple_backup/node_db_path 

VOLUME /etc/opt/ripple/
RUN apt-get update && apt-get install -y python3 python3-pip && \
			pip3 install configparser==5.0.0 prometheus-client==0.8.0 python-ripple-lib
#CMD ./rippled --conf config/rippled.cfg
CMD ./rippled
