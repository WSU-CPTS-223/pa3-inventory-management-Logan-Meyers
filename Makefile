SOURCE = $(wildcard src/*.cpp)
OUTFILE = main

all: run

clean:
	rm -f $(OUTFILE)

build: clean
	clear && g++ -std=c++11 -lstdc++ -Wall -Wextra -Wpedantic -g $(SOURCE) -o $(OUTFILE) 

run: build
	clear && ./$(OUTFILE)
