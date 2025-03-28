# Makefile para programa en ensamblador IA-32
# Usa nasm para ensamblar y ld para enlazar

# Configuración
ASM = nasm
LINKER = ld
ASMFLAGS = -f elf32 -Wall
LDFLAGS = -m elf_i386
TARGET = programa
SOURCES = main.asm io.asm
OBJECTS = $(SOURCES:.asm=.o)

# Reglas principales
all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(LINKER) $(LDFLAGS) -o $@ $^

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

# Reglas adicionales
clean:
	rm -f $(OBJECTS) $(TARGET)

test: $(TARGET)
	./$(TARGET)

.PHONY: all clean test
