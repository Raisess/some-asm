NC=nasm
FLAGS=-f elf64

FILES=calc.asm

OUTPUT=calc.o
BUILD=calc

O_FILES=$(OUTPUT) \
				$(BUILD)

build:
	$(NC) $(FLAGS) $(FILES) -o $(OUTPUT)
	ld -o $(BUILD) $(OUTPUT)

clean:
	rm -r $(O_FILES)
