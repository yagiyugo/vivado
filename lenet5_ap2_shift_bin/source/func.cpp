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

void bin_to_int(unsigned char in, int out[]){
	if((in & 0b10000000) == (1<<7)){
		out[0] = 1;
	}
	else{
		out[0] = 0;
	}
	if((in & 0b01000000) == (1<<6)){
		out[1] = -(in & 0b00111111);
	}
	else{
		out[1] = in & 0b00111111;
	}
}

unsigned char extract_sign(unsigned char in){
	if((in & 0b10000000) == (1<<7))
		return -1;
	else
		return 1;
}

char extract_shift_amount(unsigned char in){
	if((in & 0b01000000) == (1<<6))
		return -(in & 0b00111111);
	else
		return (in & 0b00111111);
}
