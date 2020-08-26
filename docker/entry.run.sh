#!/bin/ash

node_lts=/.local/.nvm/versions/node/$(ls -1 /.local/.nvm/versions/node | tail -n1)/bin

PATH=${node_lts}:$PATH node server.js