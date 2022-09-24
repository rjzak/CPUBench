ALL=cpubench

cpubench: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench cpubench.c md5.c -lgmp -fopenmp

cpubench_dbg: cpubench.c md5.c md5.h
	gcc -ggdb -g -Wall -o cpubench_dbg cpubench.c md5.c -lgmp -fopenmp

.phony: clean

clean:
	rm cpubench cpubench_dbg
