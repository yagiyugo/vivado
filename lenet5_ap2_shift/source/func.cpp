#include <stdio.h>
#include <ap_fixed.h>
#include "hls_math.h"
#include "extern.h"
#include "define.h"
#include <math.h>
#include <time.h>

int pow_num[] = {1<<0, 1<<2, 1<<3, 1<<4, 1<<5, 1<<6, 1<<7, 1<<8, 1<<9, 1<<10,
				 1<<11, 1<<12, 1<<13, 1<<14, 1<<15, 1<<16};

void print_time(char *name, struct timespec start_time, struct timespec end_time){
	if (end_time.tv_nsec < start_time.tv_nsec) {
	    printf("%s:%5ld.%09ld\n", name,
	    end_time.tv_sec - start_time.tv_sec - 1,
		end_time.tv_nsec + 1000000000 - start_time.tv_nsec);
	}
	else {
	    printf("%s:%5ld.%09ld\n", name,
	    end_time.tv_sec - start_time.tv_sec,
		end_time.tv_nsec - start_time.tv_nsec);
	}
}

