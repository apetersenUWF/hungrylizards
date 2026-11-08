# Hungry Lizards Project COP4634
### By Jackson Puls and Ayden Petersen

A program that creates an example of a shared resource that is syncronized between multiple threads, represented as lizards crossing a driveway between where they sleep and where they eat, the sago palm and the monkey grass on each side, respectively, as 2 cats periodically check to see if there are too many lizards crossing the driveway at one time. Each step in the cats' and lizards' life cycles in the program take a random amount of time (except for the crossing time) to represent random access to a shared resource. There are 20 lizards, 2 cats, and only a maximum of 4 lizards can be on the driveway at once before the cats notice them, and the program will run for 3 minutes by default (all of these values including the times of each step can be modified in the source). There are also 2 versions of this program, one with bidirectional travel (lizard.cpp) and one with unidirectional travel (lizardUni.cpp). In the bidirectional version, the lizards can travel freely in either direction as long as no more than 4 cross the driveway. In the unidirectional version, the lizards will schedule when to swap the direction of travel.

## Build
Bidirectional:
```
make clean
make lizard
```

Unidirectional:
```
make clean
make lizarduni
```

Both:
```
make clean
make
```

## Run
Bidirectional:
```
./lizard [-d]
```

Unidirectional
```
./lizarduni [-d]
```

`-d` is an optional argument that outputs to stdout each step each thread is in when the program is running.

## Notes
We did have to modify some of the original code, all we added was checks when the program is stopped as without them the main thread would sit waiting for the other threads to finish their whole life cycle, and deadlocks would also occur in the unidirectional version of the program as the locks were left locked when some of the threads would exit. Other than that the original code is left just as it was.