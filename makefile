CXX = g++
CXXFLAGS = -std=c++11 -Wall

all: program

program: main.o HashTable.o
	$(CXX) $(CXXFLAGS) $^ -o $@

main.o: main.cpp HashTable.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

HashTable.o: HashTable.cpp HashTable.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f *.o program