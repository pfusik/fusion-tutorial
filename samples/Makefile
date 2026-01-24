##-*- makefile -*-############################################################
#
# Copyright (C) 2026 MicroEmacs User.
#
# All rights reserved.
#
# Synopsis:    
# Authors:     MicroEmacs User
#
##############################################################################

CURRENT_MAKEFILE := $(lastword $(MAKEFILE_LIST))

## argument delegation
ARGS=

## default: list existing tasks 
.PHONY: tasks
tasks:  ## list all tasks
	@grep -Eo '^[a-z0-9]+:.+' $(CURRENT_MAKEFILE) | sed -E 's/:\s+##/\t- /g'

tutorial:
	 tmdoc tutorial.Rmd - --toc true | mndoc - tutorial.html --css tmdoc.css

stringutils:
	fut -D CPP StringUtils.fu -o StringUtils.cpp
	g++ StringUtils.cpp -o out/StringUtils-cpp
	./out/StringUtils-cpp
	fut -D D StringUtils.fu -o StringUtils.d
	dmd StringUtils.d -of=out/StringUtils-d
	./out/StringUtils-d
	fut -D PY StringUtils.fu -o StringUtils.py
	python3 StringUtils.py
