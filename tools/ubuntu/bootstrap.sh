#!/bin/bash

set -e

source ../helper.sh

mkdir $HOME/local

./install-apts.sh
./install-golibs.sh
./install-ghqfiles.sh
./install-rbenv.sh

cd $GHQ_ROOT/github.com/zeroyonichihachi/dotfiles
    rake bootstrap
cd -
