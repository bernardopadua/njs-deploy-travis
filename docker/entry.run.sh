#!/bin/ash

node_lts=$HOME/.local/.nvm/versions/node/$(ls -1 ./.nvm/versions/node | tail -n1)/bin

PATH=${node_lts}:$PATH node server.js