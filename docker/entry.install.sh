#!/bin/ash

apk add git
apk add libstdc++

nvm install --lts
nvm install --latest-npm
git clone https://github.com/bernardopadua/njs-deploy-travis.git
cd njs-deploy-travis
git fetch --all
git checkout master
git pull

npm install