#!/bin/ash

node_lts=./.nvm/versions/node/$(ls -1 ./.nvm/versions/node | tail -n1)/bin/node

${node_lts} server.js