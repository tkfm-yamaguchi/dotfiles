#!/bin/bash

set -e

source ../helper.sh

mkdir -p "$HOME/local/bin"


# Install packages
sudo apt-get install -y $(cat ${REPOSITORY_ROOT}/Aptfile | tr -d '\r')


# Install Go libs
MYGOLIBS=$(cat ${REPOSITORY_ROOT}/Gofile | tr -d '\r')
for MYGOLIB in ${MYGOLIBS[@]}; do
    go get ${MYGOLIB}
done


# Install repos via ghq
GHQLIBS=$(cat ${REPOSITORY_ROOT}/GHQfile | tr -d '\r')
for GHQLIB in ${GHQLIBS[@]}; do
    ghq get ${GHQLIB}
done


# bootstrap dotfiles
cd $GHQ_ROOT/github.com/zeroyonichihachi/dotfiles
    rake bootstrap
cd -
