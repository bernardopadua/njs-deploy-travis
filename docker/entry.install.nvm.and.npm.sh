#!/bin/ash

set -e

#Heroku ephemeral filesystem workaround
mkdir ./njs-deploy-travis/.nvm

#TODO find way to install node inside .nvm folder

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | NVM_DIR=./njs-deploy-travis/.nvm bash
echo 'source $HOME/.profile' >> $HOME/.bashrc
echo 'export NVM_NODEJS_ORG_MIRROR=https://unofficial-builds.nodejs.org/download/release' >> $HOME/.profile
echo 'export NVM_IOJS_ORG_MIRROR=http://no.iojs.download.com' >> $HOME/.profile
echo 'nvm_get_arch() { nvm_echo "x64-musl"; }' >> $HOME/.profile
source ./njs-deploy-travis/.nvm/nvm.sh 
source $HOME/.profile

nvm install --lts
nvm install --latest-npm

cd njs-deploy-travis

npm install