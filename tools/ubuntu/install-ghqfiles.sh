#!/bin/bash
source ../helper.sh

GHQLIBS=$(cat ${REPOSITORY_ROOT}/GHQfile | tr -d '\r')

for GHQLIB in ${GHQLIBS[@]}; do
    ghq get ${GHQLIB}
done
