#!/bin/ash

r_path_nvm=$(realpath ./.nvm)

npm_lts=$HOME/.local/.nvm/versions/node/$(ls -1 ./.nvm/versions/node | tail -n1)/bin/npm
node_lts=$HOME/.local/.nvm/versions/node/$(ls -1 ./.nvm/versions/node | tail -n1)/bin

echo "Using node from path ${node_lts}"

PATH=${node_lts}:$PATH ${npm_lts} run test