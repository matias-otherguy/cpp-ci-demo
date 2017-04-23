CC = g++
LFLAGS = -Wall -std=c++14
CFLAGS = $(LFLAGS) -c
OBJS = main.o member.o
TEST_OBJS = test_main.o test_member.o member.o

main.exe: $(OBJS)
	$(CC) $(LFLAGS) $(OBJS) -o main.exe
test.exe: $(TEST_OBJS)
	$(CC) $(LFLAGS) $(TEST_OBJS) -o test.exe

test_main.o: test_main.cpp lib/catch.hpp
	$(CC) $(CFLAGS) test_main.cpp lib/catch.hpp
test_member.o: test_member.cpp member.hpp
	$(CC) $(CFLAGS) test_member.cpp member.hpp
main.o: main.cpp member.hpp
	$(CC) $(CFLAGS) main.cpp
member.o: member.cpp member.hpp
	$(CC) $(CFLAGS) member.cpp

test: test.exe
	./test.exe -s


