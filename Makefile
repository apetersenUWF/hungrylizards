# Project 3
# Ayden Petersen, Jackson Puls
# make - creates lizard and lizarduni executables
# make lizard - creates only the lizard executable
# make lizarduni - creates only the lizarduni executable
# make clean - cleans up executables and objects


CXX = g++
CXXFLAGS = -std=c++11 -Wall -g -pthread

# Object file names
DRIVER = lizard.o
DRIVER_UNI = lizardUni.o

# Executable file names
EXEC = lizard
EXEC_UNI = lizarduni

all: $(EXEC) $(EXEC_UNI)
 
$(EXEC): lizard.cpp
	$(CXX) $(CXXFLAGS) lizard.cpp -o $(EXEC)
 
$(EXEC_UNI): lizardUni.cpp
	$(CXX) $(CXXFLAGS) lizardUni.cpp -o $(EXEC_UNI)
 
clean:
	rm -f $(EXEC) $(EXEC_UNI) *.o