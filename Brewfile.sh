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
brew tap homebrew/dupes
brew tap peco/peco



## brew softwares

brew install curl
brew install gcc
brew install git
brew install go
brew install imagemagick
brew install rbenv ruby-build
brew install tmux
brew install reattach-to-user-namespace
brew install wget
brew install zsh
brew install mysql
brew install htop-osx
brew install peco
brew install nkf



## cask softwares

brew install caskroom/cask/brew-cask

brew cask install alfred
brew cask install bettertouchtool
brew cask install firefox
brew cask install gimp
brew cask install google-chrome chrome-remote-desktop-host
brew cask install inkscape
brew cask install iterm2
brew cask install java
brew cask install skype
brew cask install virtualbox
brew cask install xtrafinder
brew cask install google-japanese-ime
brew cask install xquartz
brew cask install karabiner



# ricty installation depends on 'xquartz'
brew install --vim-powerline ricty



# wrap up
brew linkapps
