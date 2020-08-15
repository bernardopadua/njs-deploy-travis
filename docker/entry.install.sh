#!/bin/ash

apk add git

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | ash
nvm install --lts && nvm install --latest-npm
git clone https://github.com/bernardopadua/njs-deploy-travis.git
cd njs-deploy-travis
git fetch --all
git checkout master
git pull

npm install