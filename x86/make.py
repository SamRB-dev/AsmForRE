import sys, os
sys.dont_write_bytecode = True

def main():
    if len(sys.argv) < 2:
        print("Operation Failed!")
    else:
        filename = sys.argv[1]
        basename = filename.split(".asm")[0]
        os.system(f"nasm -f elf {filename}")
        os.system(f"ld -m elf_i386 -s -o {basename} {basename}.o")
        os.system(f"rm {basename}.o")



if __name__ == "__main__":
    main()
