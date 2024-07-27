#!/bin/bash
#
docker container stop shortlink-service \
	&& echo "stopped" \
	|| echo "failed to stop"

