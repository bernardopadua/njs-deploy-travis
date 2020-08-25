#!/bin/bash

app="njs-deploy-travis"
release="webtest"
docker_image="registry.heroku.com"

echo "Building image..."
docker build -t "${docker_image}/${app}/${release}" -f ./docker/Dockerfile.webash .
result_build=$?

if [ "${result_build}" -ne "0" ]; then

    echo "Error building image..."
    exit 130

fi

echo "List local files..."
ls -a

echo "-------------------"
ls -a ~

echo "echoing NVM DIRRR >>>>"
echo $NVM_DIR
ls -a $NVM_DIR

echo "----------------------"

echo "Futher test... Node version find..."
docker run -v `~/.nvm`:`./.nvm` "${docker_image}/${app}/${release}" ls -a

echo "Testing image..."
docker run -v `~/.nvm`:`./.nvm` "${docker_image}/${app}/${release}" ./docker/run.tests.sh
result_test=$?

if [ "${result_test}" -ne "0" ]; then

    echo "Error while testing image..."
    exit 130

fi

echo "!Test [OK]!"