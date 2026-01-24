#!/bin/sh
########################################################
##
## Copyright (C) 2026 Detlef Groth
##
## Synopsis:    fuscript <FU-File> [ARGS ...]
## Authors:     Detlef Groth, University of Potsdam, Germany
##
########################################################

if [ -z $1 ]; then
    echo "Usage: $0 FU-FILE [ARGUMENTS ...]"
else
    BN=`basename $1 .fu`
    fut $1 -o ${BN}.py 
    shift
    python3 ${BN}.py "$@"
fi
