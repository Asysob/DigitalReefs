CC = g++
CFLAGS = -g -Wall

INCLUDES = -I/usr/local/include
LFLAGS=
LIBS = -lzmq

SRCS = dr_util.cpp dr_reef.cpp

OBJS = $(SRCS:.cpp=.o)

.PHONY: depend clean

all: dr_reef

dr_reef: dr_reef.o dr_util.o 
	$(CC) $(CFLAGS) $(INCLUDES) -o dr_reef $(OBJS) $(LFLAGS) $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $<  -o $@

clean:
	$(RM) *.o *~ $(MAIN)

depend: $(SRCS)
	makedepend $(INCLUDES) $^
