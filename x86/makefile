program=$(wildcard *.asm)
output=$(basename ${program})
make:
	nasm -f elf ${program}
	ld -m elf_i386 -s -o ${output} $(wildcard *.o)
clean:
	rm $(wildcard *.o)
