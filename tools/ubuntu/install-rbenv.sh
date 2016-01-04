#!/bin/bash

RB_VERSION=2.2.3

if [ 'which rbenv' ]; then
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    source ~/.bashrc
fi

which rbenv
rbenv install ${RB_VERSION}
rbenv global ${RB_VERSION}
gem install bundler
