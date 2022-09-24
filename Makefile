ALL=cpubench

cpubench: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench cpubench.c md5.c -lgmp -fopenmp -DENABLE_OPENMP

cpubench_static: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench_static cpubench.c md5.c -l:libgmp.a -fopenmp -DENABLE_OPENMP

cpubench_dbg: cpubench.c md5.c md5.h
	gcc -ggdb -g -Wall -o cpubench_dbg cpubench.c md5.c -lgmp -fopenmp -DENABLE_OPENMP

cpubench_single: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench_single_static cpubench.c md5.c -l:libgmp.a

.phony: clean

clean:
	rm -f cpubench cpubench_dbg cpubench_single cpubench_single_static
