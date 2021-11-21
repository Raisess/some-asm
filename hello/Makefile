CC=nasm
FLAGS=-f elf64

FILES=./hello.asm

OUTPUT=./hello.o
BUILD=./hello

O_FILES=$(OUTPUT) \
				$(BUILD)

build:
	$(CC) $(FLAGS) $(FILES) -o $(OUTPUT)
	ld -o $(BUILD) $(OUTPUT)
	chmod +x $(BUILD)

clean:
	rm $(O_FILES)
