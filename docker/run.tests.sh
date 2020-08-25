#!/bin/ash

versions_node=/.local/.nvm/versions/node

npm_lts=${versions_node}/$(ls -1 ${versions_node} | tail -n1)/bin/npm
node_lts=${versions_node}/$(ls -1 ${versions_node} | tail -n1)/bin

echo "Using node from path ${node_lts}"

PATH=${node_lts}:$PATH ${npm_lts} run test