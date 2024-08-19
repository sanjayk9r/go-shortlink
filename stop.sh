#!/bin/bash
#
docker container stop go-shortlink-svc  \
	&& echo "stopped" \
	|| echo "failed to stop"

