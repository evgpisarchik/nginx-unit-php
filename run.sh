#!/bin/sh
docker run --name unitd -d -v $(pwd):/www -p 8009:8000 -p 8300:8300 netroby/nginx-unit-php
docker exec unitd \
	curl -s -XPUT http://localhost:8000 -d @/www/php.json

