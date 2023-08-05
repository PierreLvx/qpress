DESTDIR ?=
PREFIX ?= /usr/local
CXX ?= g++
CXXFLAGS ?= -O3
CXXFLAGS += -Wall -Wextra -Werror
LDFLAGS ?=

qpress:	qpress.cpp aio.cpp quicklz.c utilities.cpp
	$(CXX) $(CXXFLAGS) -o qpress -x c quicklz.c -x c++ qpress.cpp aio.cpp utilities.cpp -lpthread $(LDFLAGS)

install: qpress
	install -D -p -m 0755 -t $(DESTDIR)$(PREFIX)/bin qpress

clean:
	rm -f qpress

all: qpress

g++: qpress

.PHONY: clean install
