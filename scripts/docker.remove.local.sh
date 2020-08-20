#!/bin/bash

app="njs-deploy-travis"
release="web"
docker_image="registry.heroku.com"

docker rmi -f "${docker_image}/${app}/${release}"