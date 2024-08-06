PREFIX = /usr/local

g++:	qpress.cpp aio.cpp quicklz.c utilities.cpp
	g++ -O3 -o qpress -x c quicklz.c -x c++ qpress.cpp aio.cpp utilities.cpp -lpthread -Wall -Wextra -Werror

install: qpress
	install -m 0755 qpress $(PREFIX)/bin

clean:
	rm -f qpress

.PHONY: clean install g++
