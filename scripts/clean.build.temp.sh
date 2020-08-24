#!/bin/bash

set -e

rm -rf ./node_modules
rm -rf ./.nvm
rm -f nvm_arch_override.sh

unset NVM_IOJS_ORG_MIRROR
unset NVM_DIR
unset NVM_NODEJS_ORG_MIRROR