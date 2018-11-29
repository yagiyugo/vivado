#include <stdio.h>
#include <ap_fixed.h>
#include "hls_math.h"
#include "extern.h"
#include "define.h"
#include <math.h>
#include <time.h>
#include <cmath>

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

void bin_to_int(unsigned char in, char out[]){
	if((in & 0b10000000) == (1<<7)){
		out[0] = -1;
	}
	else{
		out[0] = 1;
	}
	if((in & 0b01000000) == (1<<6)){
		out[1] = -(in & 0b00111111);
	}
	else{
		out[1] = (in & 0b00111111);
	}
}

unsigned char extract_sign(unsigned char in){
	if((in & 0b10000000) == (1<<7))
		return -1;
	else
		return 1;
}

char extract_signs(unsigned char in){
	if((in & 0b10000000) == (1<<7))
		return -1;
	else
		return 1;
}

unsigned char extract_direction(unsigned char in){
	if((in & 0b01000000) == (1<<6))
		return -1;
	else
		return 1;
}

unsigned char extract_shift_amount(unsigned char in){
	return in & 0b00111111;
}

char extract_shift_amounts(unsigned char in){
	if((in & 0b01000000) == (1<<6))
		return -(in & 0b00111111);
	else
		return (in & 0b00111111);
}

void fc_batch_norm(int lay_num, int ROW){
	ap_fixed<32,10> mean;
	ap_fixed<32,10> var;
	ap_fixed<32,10> rt_var;
	ap_fixed<32,10> dot_f;
	int x;
	for(int row=0; row<ROW; row++){
		mean = fc_bn_mean[lay_num][row];;
		var = fc_bn_var[lay_num][row];
		//rt_var = (ap_fixed<32,10>)(hls::sqrt(var));
		//printf("mean:%f, var:%f\n", (float)mean, (float)var);
		for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
			fc_dot[lay_num][data_num][row] = fc_dot[lay_num][data_num][row] - mean;
			fc_dot[lay_num][data_num][row] = fc_dot[lay_num][data_num][row] / var;
			fc_dot[lay_num][data_num][row] = fc_bn_weight[lay_num][row][0]*(fc_dot[lay_num][data_num][row] << fc_bn_weight[lay_num][row][1]);
			fc_dot[lay_num][data_num][row] = fc_dot[lay_num][data_num][row] + fc_bn_bias[1][row];
		}
	}
}

void conv_batch_norm(int lay_num, int CHANNEL, int COL, int ROW){
	ap_fixed<32,10> mean;
	ap_fixed<32,10> var;
	ap_fixed<32,10> rt_var;

	for(int channel=0; channel<CHANNEL; channel++){
		mean = conv_bn_mean[lay_num][channel];
		var = conv_bn_var[lay_num][channel];
		//rt_var = (ap_fixed<32,10>)(hls::sqrt(var));
		//printf("mean:%f, var:%f\n", (float)mean, (float)var);
		for(int col=0; col<COL; col++){
			for(int row=0; row<ROW; row++){
				for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
					conv_dot[lay_num][data_num][channel][col][row] = conv_dot[lay_num][data_num][channel][col][row] - mean;
					conv_dot[lay_num][data_num][channel][col][row] = conv_dot[lay_num][data_num][channel][col][row] / var;
					conv_dot[lay_num][data_num][channel][col][row] = conv_bn_weight[lay_num][row][0]*(conv_dot[lay_num][data_num][channel][col][row] << conv_bn_weight[lay_num][row][1]);
					conv_dot[lay_num][data_num][channel][col][row] = conv_dot[lay_num][data_num][channel][col][row] + conv_bn_bias[1][row];
				}
			}
		}
	}
}
