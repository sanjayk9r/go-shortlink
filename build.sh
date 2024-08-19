#!/bin/bash

# build
docker container rm go-shortlink-svc && echo "container removed"
docker build -t go-shortlink-svc:latest . \
	&& echo "build successfull" \
	|| echo "build failed"
