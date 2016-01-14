#!/bin/bash


rake bootstrap

mkdir $HOME/local

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install golang

export GOPATH=$HOME/local
export PATH="${GOPATH}/bin:${PATH}"

go get github.com/motemen/ghq
go get github.com/peco/peco/cmd/peco
go get github.com/svent/sift

#ghq get git@github.com:zeroyonichihachi/dotfiles.git
ghq get https://github.com/zeroyonichihachi/dotfiles.git
rake clean

cd ${GOPATH}/src/github.com/zeroyonichihachi/dotfiles
rake bootstrap
