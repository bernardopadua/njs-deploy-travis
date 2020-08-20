#!/bin/ash

export NVM_DIR=./.nvm
source ./.nvm/nvm.sh

nvm use --lts

node server.js