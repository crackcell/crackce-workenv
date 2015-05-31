#!/bin/env bash

export PATH="$ENV_HOME/bin:$ENV_HOME/bin:$PATH"
export LD_LIBRARY_PATH="$ENV_HOME/lib:$LD_LIBRARY_PATH"
export LD_PATH="$ENV_HOME/lib:$LD_PATH"
export LIBPATH="$ENV_HOME/lib:$LIBPATH"

export CFLAGS="-I$ENV_HOME/include"
export CXXFLAGS="-I$ENV_HOME/include"
export LDFLAGS="-L$ENV_HOME/lib"

export PKG_CONFIG_PATH="$ENV_HOME/lib/pkgconfig"

for f in $ENV_HOME/cell/*/init.sh; do
    source $f
done
