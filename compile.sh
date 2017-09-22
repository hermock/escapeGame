#!/bin/bash
PROJECT_BASE_DIR=$(readlink -f $(dirname $BASH_SOURCE))
find ${PROJECT_BASE_DIR} -name "*.o" | xargs rm
gcc  -I/local/mfourtic/DEV/EscapeGame/short/include -I/local/mfourtic/DEV/EscapeGame/short/crypto/include  -g -c  ${PROJECT_BASE_DIR}/crypto/md5/*.c ${PROJECT_BASE_DIR}/crypto/* ${PROJECT_BASE_DIR}/main.c
gcc  -I/local/mfourtic/DEV/EscapeGame/short/include -I/local/mfourtic/DEV/EscapeGame/short/crypto/include  -g -o encrypt *.o
