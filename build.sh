#!/bin/bash

# build
docker container rm shortlink-service && echo "container removed"
docker build -t shortlink-service:latest . \
	&& echo "build successfull" \
	|| echo "build failed"
