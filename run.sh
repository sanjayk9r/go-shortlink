#!/bin/bash
docker run --name shortlink-service -p 127.0.0.1:80:8080 -d shortlink-service:latest \
	&& echo "Started" \
	|| echo "Failed to start"

# END
