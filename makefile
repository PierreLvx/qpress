g++:	qpress.cpp aio.cpp quicklz.c utilities.cpp
	g++ -O3 -o qpress -x c quicklz.c -x c++ qpress.cpp aio.cpp utilities.cpp -lpthread