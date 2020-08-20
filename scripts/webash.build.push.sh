#!/bin/bash

set -e

app="njs-deploy-travis"
release="webash"
docker_image="registry.heroku.com"

docker login --username=$HEROKU_LOGIN --password=$HEROKU_PASS registry.heroku.com

docker build -t "${docker_image}/${app}/${release}" -f ./docker/Dockerfile.webash .
docker push "${docker_image}/${app}/${release}"