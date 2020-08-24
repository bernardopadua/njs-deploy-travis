#!/bin/ash

set -e

echo "HOME PATH!!! >>> $HOME"

#Heroku ephemeral filesystem workaround
mkdir -p $HOME/njs-deploy-travis/.nvm
mkdir -p $HOME/njs-deploy-travis/.nvm/.cache
mkdir -p $HOME/njs-deploy-travis/.nvm/versions
mkdir -p $HOME/njs-deploy-travis/.nvm/versions/node

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | NVM_DIR=$HOME/njs-deploy-travis/.nvm bash

echo 'nvm_get_arch() { nvm_echo "x64-musl"; }' >> $HOME/njs-deploy-travis/nvm_arch_override.sh

export NVM_DIR=$HOME/njs-deploy-travis/.nvm
export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release
export NVM_IOJS_ORG_MIRROR=http://no.iojs.download.com

source $HOME/njs-deploy-travis/.nvm/nvm.sh 
source $HOME/njs-deploy-travis/nvm_arch_override.sh

nvm install --lts
nvm install --latest-npm

cd njs-deploy-travis

npm install