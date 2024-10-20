# запуск
run1: out1.exe
	./out1.exe

run2: out2.exe
	./out2.exe

run3: out3.exe
	./out3.exe

# сборка
out1.exe: main1.cpp
	g++ -m80387 -masm=intel -g -O0 -std=c++17 -Wall -o out1.exe main1.cpp

out2.exe: main2.cpp
	g++ -masm=intel -g -O0 -std=c++17 -Wall -o out2.exe main2.cpp

out3.exe: main3.cpp
	g++ -masm=intel -g -O0 -std=c++17 -Wall -o out3.exe main3.cpp

# посмотреть ассемблер
asm1: main1.cpp
	g++ -S -fverbose-asm -mno-sse -m80387 -masm=intel -g -O0 -std=c++17 -Wall -o asm1.s main1.cpp

asm1_cpp: main1_only_cpp.cpp
	g++ -S -fverbose-asm -mno-sse -m80387 -masm=intel -g -O0 -std=c++17 -Wall -o asm1_cpp.s main1_only_cpp.cpp

# очистка
clean:
	rm *.exe *.s