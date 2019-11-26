#!/bin/bash

#
# brew installation list for OSX
#

set -ex


## update brew

brew update
brew upgrade
brew cleanup



## add repositories

brew tap sanemat/font
brew tap caskroom/fonts



## brew softwares

brew install \
	R \
	awscli \
	ccat \
	circleci \
	colordiff \
	ctags \
	curl \
	ffmpeg \
	ghostscript \
	gibo \
	git \
	git-archive-all \
	git-lfs \
	htop-osx \
	hub \
	imagemagick \
	jo \
	jq \
	macvim \
	nkf \
	nvm \
	oniguruma \
	openblas \
	pandoc \
	peco \
	pigz \
	pt \
	rbenv ruby-build \
	reattach-to-user-namespace \
	ripgrep \
	roswell \
	shellcheck \
	thefuck \
	tig \
	tldr \
	tmux \
	tree \
	watch \
	wget \
	zsh

#brew install gcc    # consuming resources a lot


## cask softwares

brew install caskroom/cask/brew-cask

brew cask install \
	alfred \
	bettertouchtool \
	firefox \
	font-cica \
	font-hack-nerd-font \
	gimp \
	inkscape \
	iterm2 \
	owasp-zap \
  the-unarchiver

