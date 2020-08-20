#!/bin/bash

app="njs-deploy-travis"
release="webash"
docker_image="registry.heroku.com"

docker run --expose 8070 --env PORT=8070 -d "${docker_image}/${app}/${release}"