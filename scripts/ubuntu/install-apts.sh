#!/bin/bash
source ../helper.sh

sudo apt-get install -y $(cat ${REPOSITORY_ROOT}/Aptfile | tr -d '\r')
