AC=nasm
FLAGS=-f elf64

FILES=./routine.asm

OUTPUT=./routine.o
BUILD=./routine

build:
	$(AC) $(FLAGS) $(FILES) -o $(OUTPUT)
	ld -o $(BUILD) $(OUTPUT)

clean:
	rm $(OUTPUT) $(BUILD)
