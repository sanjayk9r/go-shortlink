#!/bin/bash
#
docker container stop go-shortlink-svc  \
	&& echo "stopped" \
	|| echo "failed to stop"

docker container rm go-shortlink-svc && echo "container removed" || echo "failed to remove container"
