DESTDIR ?=
PREFIX ?= /usr/local
CXX ?= g++
CXXFLAGS ?= -O3
CXXFLAGS += -Wall -Wextra -Werror
LDFLAGS ?=

all: qpress

qpress:	qpress.cpp aio.cpp quicklz.c utilities.cpp
	$(CXX) $(CXXFLAGS) -o qpress -x c quicklz.c -x c++ qpress.cpp aio.cpp utilities.cpp -lpthread $(LDFLAGS)

install: qpress
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 qpress $(DESTDIR)$(PREFIX)/bin

clean:
	rm -f qpress

g++: qpress

.PHONY: all clean install g++
