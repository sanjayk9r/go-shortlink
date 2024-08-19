#!/bin/bash

# build
docker container rm go-shortlink-svc && echo "container removed" || echo "removal failed"

docker image prune <<EOF
y
EOF

docker build -t go-shortlink-img:latest .  \
	&& echo "build successfull" \
	|| echo "build failed"
