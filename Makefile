all:main
main: ./build/main.o ./build/board.o ./build/board_print_plain.o
	gcc -o ./bin/main ./build/main.o ./build/board.o ./build/board_print_plain.o -Wall -Werror

./build/main.o: ./src/main.c
	gcc -o ./build/main.o -c ./src/main.c -Wall -Werror

./build/board_print_plain.o: ./src/board_print_plain.c
	gcc -o ./build/board_print_plain.o -c ./src/board_print_plain.c -Wall -Werror

./build/board.o: ./src/board.c
	gcc -o ./build/board.o -c ./src/board.c -Wall -Werror

.PHONY: clean

run:
	./bin/main

clean:
	rm -rf build/*o ./bin/main
