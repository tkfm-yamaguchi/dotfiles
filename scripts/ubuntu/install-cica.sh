#!/bin/bash

# Install Cica font to Ubuntu
#
# * Cica Font: https://github.com/miiton/Cica

set -ex

VERSION='v2.1.0'
WORKDIR='/tmp/fonts'

mkdir -p ${WORKDIR}
cd ${WORKDIR}

wget https://github.com/miiton/Cica/releases/download/${VERSION}/Cica_${VERSION}.zip
unar Cica_${VERSION}.zip

[ ! -d ~/.fonts ] && mkdir ~/.fonts
cp Cica_${VERSION}/*.ttf ~/.fonts

fc-cache -f -v
