all: strlen_asm.exe sumarr_asm.exe
	./strlen_asm.exe
	./sumarr_asm.exe

run1: strlen_asm.exe
	./strlen_asm.

run2: sumarr_asm.exe
	./sumarr_asm.exe

build1: strlen_asm.exe

build2: sumarr_asm.exe

%.exe: %.c
	clang -o $@ $^

clean:
	rm *.exe *.o