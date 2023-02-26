# Makefile for the v6 mv.c with the warning:
#
#   values of β will give rise to dom!
#
# Fixed to compile and work by @xexyl Cody Boone Ferguson on 25 February 2023
# just for fun and to let people to enjoy even if that's likely nobody else.

CC= cc
MAKE= make

all: mv-v6-beta.c mv-v6-compiles.c
	${MAKE} mv
	${MAKE} mv-v6

# this should always show the warning properly. Note that it compiles to mv for
# simpler use.
mv: mv-v6-beta.c
	${CC} -o mv mv-v6-beta.c

# this will compile but will NOT show the warning properly in most systems! Note
# that this compiles to mv-v6 even though there's a mv-v6.c which is not what's
# compiled. This is because the mv-v6.c cannot be compiled in modern systems.
mv-v6: mv-v6-compiles.c
	${CC} -o mv-v6 mv-v6-compiles.c


install:
	@echo installing this will give rise to dom!

clean:
	rm -f mv mv-v6
