for: for.c
	riscv64-unknown-linux-gnu-gcc -S for.c
	riscv64-unknown-linux-gnu-gcc -c for.s
	riscv64-unknown-linux-gnu-objdump -D for.o > for.o.dump

bubble_sort: bubble_sort.c
	riscv64-unknown-linux-gnu-gcc -S bubble_sort.c
	riscv64-unknown-linux-gnu-gcc -c bubble_sort.s
	riscv64-unknown-linux-gnu-objdump -D bubble_sort.o > bubble_sort.o.dump

insertion_sort: insertion_sort.c
	riscv64-unknown-linux-gnu-gcc -S insertion_sort.c
	riscv64-unknown-linux-gnu-gcc -c insertion_sort.s
	riscv64-unknown-linux-gnu-objdump -D insertion_sort.o > insertion_sort.o.dump
	