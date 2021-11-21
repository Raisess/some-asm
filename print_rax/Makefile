CC=nasm
FLAGS=-f elf64

FILES=./print_rax.asm

OUTPUT=./print_rax.o
BUILD=./print_rax

O_FILES=$(OUTPUT) \
				$(BUILD)

build:
	$(CC) $(FLAGS) $(FILES) -o $(OUTPUT)
	ld -o $(BUILD) $(OUTPUT)
	chmod +x $(BUILD)

clean:
	rm $(O_FILES)
