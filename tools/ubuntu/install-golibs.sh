#!/bin/bash
source ../helper.sh

MYGOLIBS=$(cat ${REPOSITORY_ROOT}/Gofile | tr -d '\r')

for MYGOLIB in ${MYGOLIBS[@]}; do
    go get ${MYGOLIB}
done
