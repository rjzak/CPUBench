ALL=cpubench

SOURCES=cpubench.c md5.c

cpubench: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench ${SOURCES} -lgmp -fopenmp -DENABLE_OPENMP

cpubench_macos: cpubench.c md5.c md5.h
	/opt/homebrew/bin/gcc-12 -O3 -Wall -o cpubench ${SOURCES} /opt/homebrew/lib/libgmp.a -fopenmp -DENABLE_OPENMP -I /opt/homebrew/include

cpubench_static: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench_static ${SOURCES} -l:libgmp.a -fopenmp -DENABLE_OPENMP

cpubench_dbg: cpubench.c md5.c md5.h
	gcc -ggdb -g -Wall -o cpubench_dbg ${SOURCES} -lgmp -fopenmp -DENABLE_OPENMP

cpubench_single: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench_single_static ${SOURCES} -l:libgmp.a

cpubench_single_macos: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench_single_static ${SOURCES} /opt/homebrew/lib/libgmp.a -I /opt/homebrew/include

.phony: clean

clean:
	rm -f cpubench cpubench_dbg cpubench_single cpubench_single_static cpubench_single_macos
