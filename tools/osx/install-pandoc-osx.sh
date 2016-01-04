#!/bin/bash

#
# Install pandoc (PDF generation available) on OSX
#
# - Prerequisite
#    * Homebrew and brew cask is available
#
# - Note
#    * Keeping up the latest pandoc, use cabal to install pandoc
#    * To be enable the PDF convertion, install Tex environment.
#
# - Example
#    ```
#    $ pandoc input.md -o output.pdf -V documentclass=jarticle \
#          --latex-engine=lualatex
#    ```
#
# - Ref
#    * [OSX - MarkdownからWordやPDF生成ができるようにする (またはPandoc環境の構築方法) (2014/09版) - Qiita](http://qiita.com/k1LoW/items/4c4ecf4afc1e753038f8)
#

brew cask install haskell-platform

cabal update
cabal install cabal-install
cabal install pandoc        # it takes some time...

# ----------
# Untill here, we can use pandoc, but the convertion to PDF is not yet.
# To do so, we should install latex environment.
# Here is installing the BasicTex.
# ----------

# !!! XXX: THIS NOT WORK PROPERTY !!!
# PDF conversion would be failed with these setup.
# I should try another tex environment.

brew install ghostscript
brew install imagemagick
brew cask install basictex

# Install ckj language pack
sudo tlmgr update --self
sudo tlmgr update --all
sudo tlmgr install collection-langcjk \
    collection-latexrecommended \
    collection-fontsrecommended

