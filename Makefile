cpubench: cpubench.c md5.c md5.h
	gcc -O3 -Wall -o cpubench cpubench.c md5.c -lgmp -lssl -lcrypto -fopenmp
