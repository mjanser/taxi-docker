#!/bin/bash

TKSRC=$HOME/.tksrc
CONFIGDIR=$HOME/.taxi
DATADIR=$(eval echo $(grep "^file = " $TKSRC | cut -d" " -f3 | cut -d% -f1))

docker run \
    --rm \
    -i \
    -t \
    -v $TKSRC:/root/.tksrc \
    -v $CONFIGDIR:/root/.taxi \
    -v $DATADIR:$DATADIR \
    taxi-tmp \
    $@
