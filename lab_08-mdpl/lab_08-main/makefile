_MAKE_OUT_DIR_ := $(shell mkdir -p out)
_MAKE_ASM_DIR_ := $(shell mkdir -p assembly)
_MAKE_DISASM_DIR_ := $(shell mkdir -p disassembly)
 
all: math cmp_sin

math_sse: arith_main.cpp
	g++ arith_main.cpp -mno-80387 -DSSE -O0 -o math_sse.exe
	
math_fpu: arith_main.cpp
	g++ arith_main.cpp -mno-sse2 -m80387 -DFLOAT_80 -O0 -o math_fpu.exe

math_asm: arith_main.cpp
	g++ arith_main.cpp -masm=intel -DASM -O0 -o math_asm.exe

math: math_sse math_fpu math_asm

cmp_sin: sin_main.cpp
	g++ sin_main.cpp -mfpmath=387 -mhard-float -o cmp_sin.exe

root: root_main.cpp
	g++ root_main.cpp -masm=intel -O0 -o root_main.exe

run_math_sse: math_sse
	./math_sse.exe
	@echo
	@echo

run_math_fpu: math_fpu
	./math_fpu.exe
	@echo
	@echo

run_math_asm: math_asm
	./math_asm.exe
	@echo
	@echo

run_sin: cmp_sin
	./cmp_sin.exe
	@echo
	@echo

run_root: root
	./root_main.exe
	@echo
	@echo

run_math: run_math_sse run_math_fpu run_math_asm

run: run_math run_sin run_root


# Посмотреть ассемблерный код можно двумя способами:

assembly: arith_main.cpp sin_main.cpp
	g++ -S arith_main.cpp -mno-80387 -DSSE -O0 -o assembly/math_sse.s
	g++ -S arith_main.cpp -m80387 -mno-sse -DFLOAT_80 -O0 -o assembly/math_fpu.s
	g++ -S arith_main.cpp -masm=intel -DASM -O0 -o assembly/math_asm.s
	g++ -S sin_main.cpp -masm=intel -o assembly/sin_main.s
	g++ -S root_main.cpp -masm=intel -o assembly/root_main.s

disassembly: arith_main.cpp sin_main.cpp
	g++ -c arith_main.cpp -masm=intel -mno-80387 -DSSE -O0 -o out/math_sse.o
	g++ -c arith_main.cpp -masm=intel -m80387 -mno-sse -DFLOAT_80 -O0 -o out/math_fpu.o
	g++ -c arith_main.cpp -masm=intel -DASM -O0 -o out/math_asm.o
	g++ -c sin_main.cpp -masm=intel -o out/sin_main.o
	g++ -c root_main.cpp -masm=intel -o out/root_main.o
	objdump -M intel-mnemonic -d out/math_sse.o  > disassembly/math_sse.txt
	objdump -M intel-mnemonic -d out/math_fpu.o  > disassembly/math_fpu.txt
	objdump -M intel-mnemonic -d out/math_asm.o  > disassembly/math_asm.txt
	objdump -M intel-mnemonic -d out/sin_main.o  > disassembly/sin_main.txt
	objdump -M intel-mnemonic -d out/root_main.o  > disassembly/root_main.txt


re: clean all

clean:
	rm -rf ./out ./assembly ./disassembly *.exe

.PHONY: run_math_sse run_math_fpu run_math_asm run_math run_sin run assembly disassembly
