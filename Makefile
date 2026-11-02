CXX = g++
CXXFLAGS = -std=c++11 -Wall -g -pthread

# Object file names
DRIVER = lizard.o

# Executable file names
EXEC = lizard

# Main targets
run: $(INCLUDE) $(DRIVER)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(DRIVER)

clean:
	rm -f $(EXEC) $(DRIVER)

# Object Targets
lizard.o:
	$(CXX) $(CXXFLAGS) -c lizard.cpp -o lizard.o