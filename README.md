# Tarea de Programación en Ensamblador IA-32

## Requisitos
- NASM (Netwide Assembler)
- GCC con soporte multilib (32-bit)
- Make

## Instrucciones

1. Clona este repositorio
2. Implementa las funciones en `src/io.asm`
3. Prueba localmente:
```bash
make test
./run_tests.sh
```

## Estructura
- `src/`: Código fuente a implementar
- `tests/`: Pruebas unitarias

## Evaluación
El sistema verificará:
- Correcta compilación
- Salida de las funciones
- Comportamiento con casos límite
