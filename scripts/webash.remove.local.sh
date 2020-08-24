#!/bin/bash

app="njs-deploy-travis"
release="webash"
docker_image="registry.heroku.com"

docker rmi -f "${docker_image}/${app}/${release}"