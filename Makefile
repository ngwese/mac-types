#
# ___ Makefile _____________________________________________________
#
# Trivial makefile for building a bundle.
#
# $URL: https://mm1.local/svn/private/trunk/lib/lisp/mac-types/Makefile $
# $Id: Makefile 13 2005-02-21 20:34:10Z greg $
#

CC     = cc
CFLAGS = -D__DEBUG__ -D__LOG__
FILE   = mac-types-support
FWORKS = -framework Carbon
LIBS   =

$(FILE).bundle: $(FILE).c
	$(CC) $(CFLAGS) $(FWORKS) $(LIBS) -bundle -o $(FILE).bundle $(FILE).c


