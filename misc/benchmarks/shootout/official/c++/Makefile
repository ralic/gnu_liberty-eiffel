DIR=$(shell for f in $$(ls); do if [ -d $$f ] ; then echo $$f ; fi ; done)
LANGUAGE=C++
COMPILER=g++
EXTENSION=cpp

include ../../tools/compile.makefile
include ../../tools/run.makefile
include ../../tools/check.makefile
include ../../tools/bench.makefile
include ../../tools/race.makefile
include ../../tools/clean.makefile
