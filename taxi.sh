#!/bin/bash

TKSRC=$HOME/.tksrc
CONFIGDIR=$HOME/.taxi
DATADIR=$(eval echo $(grep "^file = " $TKSRC | cut -d" " -f3 | cut -d% -f1))

if [ $(command -v selinuxenabled >/dev/null 2>&1) -a $(selinuxenabled) ]; then
    chcon -Rt svirt_sandbox_file_t $TKSRC $CONFIGDIR $DATADIR
fi

docker run \
    --rm \
    -i \
    -t \
    -v $TKSRC:/root/.tksrc \
    -v $CONFIGDIR:/root/.taxi \
    -v $DATADIR:$DATADIR \
    mjanser/taxi \
    $@
