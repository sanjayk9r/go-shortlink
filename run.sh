#!/bin/bash
docker run --name go-shortlink-svc -p 127.0.0.1:80:8080 -d go-shortlink-img:latest \
	&& echo "Started" \
	|| echo "Failed to start"

# END
