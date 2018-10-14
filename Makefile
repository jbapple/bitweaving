.PHONY: ps png all

all: ps png

ps: $(patsubst %.dot,%.ps,*.dot)

png: $(patsubst %.dot,%.png,*.dot)

# none: standard.ps bitslice.ps bitslice1.ps bitslice2.ps bitslice03.ps \
#  bitslice04.ps bitslice05.ps vbp01.ps vbp02.ps vbp03.ps vbp04.ps vbp05.ps \
#  bitslice06.ps bwv01.ps bitslice07.ps bitslice08.ps vbp06.ps padded.ps \
#  padded02.ps bitpack01.ps hbp01.ps

%.png: %.dot Makefile
	neato -n2 -v $< -Tpng -Gdpi=600 -G'bgcolor=black' -N'fontcolor=white' -N'color=white' -E'color=white' -E'fontcolor=white' -o $@

%.ps: %.dot Makefile
	neato -n2 -v $< -Tps -o $@
