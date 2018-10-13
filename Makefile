.PHONY: all

all: standard.ps bitslice.ps bitslice1.ps bitslice2.ps bitslice03.ps \
 bitslice04.ps bitslice05.ps vbp01.ps

%.ps: %.dot
	neato -n $< -Tps > $@
