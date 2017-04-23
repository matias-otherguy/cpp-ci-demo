CC = g++
LFLAGS = -Wall -std=c++14
CFLAGS = $(LFLAGS) -c
OBJS = main.o member.o

main.exe: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o main.exe

main.o: main.cpp member.hpp
	$(CC) $(CFLAGS) main.cpp
member.o: member.cpp member.hpp
	$(CC) $(CFLAGS) member.cpp


