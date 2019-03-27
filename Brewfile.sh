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
	ccat \
	colordiff \
	ctags \
       	curl \
	ffmpeg \
	ghostscript \
	gibo \
	git \
	git-archive-all \
	htop-osx \
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
	shellcheck \
	thefuck \
	tmux \
	tree \
	watch \
	wget \
	zsh

#brew install gcc    # consuming resources a lot


## cask softwares

brew install caskroom/cask/brew-cask

brew cask install \
	alfred
	bettertouchtool \
	firefox \
	gimp \
	google-chrome chrome-remote-desktop-host \
	google-japanese-ime \
	inkscape \
	iterm2 \
	karabiner-elements \
	owasp-zap \
	scroll-reverser \
	font-cica \
	font-hack-nerd-font \
	xquartz

