#!/bin/bash
PROJECT_BASE_DIR=$(readlink -f $(dirname $BASH_SOURCE))
pushd ${PROJECT_BASE_DIR}
find ${PROJECT_BASE_DIR} -name "*.o" | xargs rm
OPTIONS="-v"
gcc $OPTIONS -I/local/mfourtic/DEV/EscapeGame/short/include -I/local/mfourtic/DEV/EscapeGame/short/crypto/include  -g -c  ${PROJECT_BASE_DIR}/crypto/md5/*.c ${PROJECT_BASE_DIR}/crypto/* ${PROJECT_BASE_DIR}/main.c
gcc $OPTIONS -I/local/mfourtic/DEV/EscapeGame/short/include -I/local/mfourtic/DEV/EscapeGame/short/crypto/include  -g -o encrypt *.o
popd
