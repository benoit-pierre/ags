
export CC = ccache gcc
export CXX = ccache g++

.PHONY: all clean re
.NOTPARALLEL: re

all clean:
	$(MAKE) -C Engine $@

re: clean all

%:
	$(MAKE) -C Engine $@

