CC = g++
AS = nasm
CFLAGS = -std=c++17 -Wall -masm=intel -m64 -g
ASFLAGS = -f win64

all: ConsoleApplication1

ConsoleApplication1: ConsoleApplication1.o# copystr.obj
	$(CC) -o $@ $^

ConsoleApplication1.o: ConsoleApplication1.cpp
	$(CC) $(CFLAGS) -c $< -o $@

copystr.obj: copystr.asm
	$(AS) $(ASFLAGS) -o $@ $<

clean:
	rm -f ConsoleApplication1 ConsoleApplication1.o copystr.obj
