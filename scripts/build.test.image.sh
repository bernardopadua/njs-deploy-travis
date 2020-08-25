#!/bin/bash

app="njs-deploy-travis"
release="webtest"
docker_image="registry.heroku.com"

echo "Building image..."
docker build -t "${docker_image}/${app}/${release}" -f ./docker/Dockerfile.webash . &> /dev/null
result_build=$?

if [ "${result_build}" -ne "0" ]; then

    echo "Error building image..."
    exit 130

fi

echo "Testing image..."
docker run --env NDT_WORD_TEST=ERROR "${docker_image}/${app}/${release}" ./docker/run.tests.sh 1> /dev/null 2> /dev/null
result_test=$?

if [ "${result_test}" -ne "0" ]; then

    echo "Error while testing image..."
    exit 130

fi

echo "!Test [OK]!"