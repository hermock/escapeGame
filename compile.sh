#!/bin/bash
set -e
PROJECT_BASE_DIR=$(readlink -f $(dirname $BASH_SOURCE))
cd ${PROJECT_BASE_DIR}
find ${PROJECT_BASE_DIR} -name "*.o" | xargs rm -f
OPTIONS="-v"
INCLUDES="-I${PROJECT_BASE_DIR}/include -I${PROJECT_BASE_DIR}/crypto/include"
GCC="gcc"
$GCC $OPTIONS ${INCLUDES} -g -c  ${PROJECT_BASE_DIR}/crypto/md5/*.c ${PROJECT_BASE_DIR}/crypto/* ${PROJECT_BASE_DIR}/main.c
$GCC $OPTIONS ${INCLUDES}  -g -o encrypt *.o
