# запуск
run_cpp: out_cpp.exe
	./out_cpp.exe

run_asm: out_asm.exe
	./out_asm.exe

# сборка
out_cpp.exe: main.cpp
	g++ -masm=intel -g -O0 -std=c++17 -Wall -DCPP -o out_cpp.exe main.cpp
	cp out_cpp.exe build/Debug/outDebug

out_asm.exe: main.cpp
	g++ -masm=intel -g -O0 -std=c++17 -Wall -o out_asm.exe main.cpp
	cp out_asm.exe build/Debug/outDebug

# посмотреть ассемблер
asm.s: main.cpp
	g++ -S -fverbose-asm -masm=intel -g -O0 -std=c++17 -Wall -o asm.s main.cpp

test_cpp: out_cpp.exe in_01.txt in_02.txt
	./out_cpp.exe < ./in_01.txt
	./out_cpp.exe < ./in_02.txt

test_asm: out_asm.exe in_01.txt in_02.txt
	./out_asm.exe < ./in_01.txt
	./out_asm.exe < ./in_02.txt

# очистка
clean:
	rm *.exe *.s build/Debug/*