CC = g++
CFLAGS = -Wall -g

SRCS := $(wildcard *.cpp)
OBJS := $(SRCS:.cpp=.o)
EXECUTABLE = simple-redis

$(EXECUTABLE): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXECUTABLE)

.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(EXECUTABLE)