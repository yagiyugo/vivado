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


int ave(int lay_num, int data_num){
	int average = 0;
	for(int i=0; i<NUM_ITERATION_PER_EPOCH; i++){
		average += dot[lay_num][data_num][i];
	}
	return (average/NUM_ITERATION_PER_EPOCH);
}

int var(int lay_num, int data_num, int ave){
	int varience=0;
	int x;
	for(int i=0; i<NUM_ITERATION_PER_EPOCH; i++){
		x = dot[lay_num][data_num][i] - ave;
		for(int j=POW_NUM; j>0; j--){
			if(x > pow_num[j]){
			varience += (dot[lay_num][data_num][i] - ave) << pow_num[j];
			x -= pow_num[j];
			}
		}
	}
	return (varience/NUM_ITERATION_PER_EPOCH);
}

double d_var(int lay_num, int data_num, int ave){
	double varience=0;
	int x;
	for(int i=0; i<NUM_ITERATION_PER_EPOCH; i++){
		x = dot[lay_num][data_num][i] - ave;
		varience += (double)(x)*(double)(x);
	}
	return varience/(double)NUM_ITERATION_PER_EPOCH;
}

void batch_norm(int lay_num, int data_num){
	int average;
	double varience;
	double rt_var;
	double dot_f;
	int x;
	/*for(int i=0; i<data_num;i++){
		average = ave(lay_num, i);
		varience = var(lay_num, i, average);
		rt_var = hls::sqrt(varience);
		for(int j=0; j<NUM_ITERATION_PER_EPOCH; j++){
			dot[lay_num][i][j] -= average;
			dot[lay_num][i][j] = int(float(dot[lay_num][i][j])/rt_var);
			x = float(dot[lay_num][i][j])*bn_weight[lay_num][i];
			x += bn_bias[lay_num][i];
			dot[lay_num][i][j] = int(x);
		}
	}
	*/

	for(int i=0; i<data_num;i++){
		average = ave(lay_num, i);
		varience= d_var(lay_num, i, average);
		for(int j=0; j<NUM_ITERATION_PER_EPOCH; j++){
			dot[lay_num][i][j] -= average;
			x = varience;
			/*for(int k=POW_NUM/2; k>=0; k--){
				if(x > (pow_num[k] << k)){
					dot[lay_num][i][j] = dot[lay_num][i][j] >> k;
					x -= (pow_num[k] << k);
				}
			}*/
			rt_var = sqrt(varience);
			dot_f = (double)(dot[lay_num][i][j])/rt_var;
			dot_f = dot_f * bn_weight[lay_num][i];
			dot_f += bn_bias[lay_num][i];

			if(lay_num == 3){
				f_dot[lay_num][i][j] = dot_f;
			}
			else{
				if(dot_f > 0.0){
					dot[lay_num][i][j] = 1;
				}
				else if(dot_f < 0.0){
					dot[lay_num][i][j] = -1;
				}
				else
					dot[lay_num][i][j] = 0;
			}
			//dot[lay_num][i][j] = int(rt_var);

		}
	}

}
