// mnist_nn_tb.cpp
// 2017/06/01 by marsee
//

#include <stdio.h>
#include <ap_fixed.h>
#include <time.h>
#include "define.h"

ap_fixed<32,10> in[32][32][10000];
int tag[10000];
int result;
char fc_weight[4][400][400][2];  //[層][縦][横][データの種類]
ap_fixed<32,10> fc_bias[4][120];
char conv_weight[3][16][6][5][5][2];  //[層][チャネル][サンプル][縦][横][データの種類]
ap_fixed<32,10> conv_bias[3][16];
ap_fixed<32,10> fc_dot[3][120];
ap_fixed<32,10> conv_dot[3][16][28][28]; //[層][チャネル][サンプル][縦][横]
ap_fixed<32,10> pool_dot[3][16][14][14]; //[層][チャネル][サンプル][縦][横]
ap_fixed<32,10> fc_in[400];

char char_init_time[] = "init_time";
char char_nn_time[] = "nn_time";
char char_all_time[] = "all_time";


int lenet5_ap2(int index);

void init();
void print_time(char *name, struct timespec start_time, struct timespec end_time);

int main(){

	struct timespec init_start, init_end, nn_start, nn_end, all_start, all_end;

	clock_t start, end;

	double init_time, nn_time, all_time;

	start = clock();

	clock_gettime(CLOCK_REALTIME, &all_start);
	clock_gettime(CLOCK_REALTIME, &init_start);
	printf("Initializing...\n");
	init();
	printf("Initialize Finished!\n");
	clock_gettime(CLOCK_REALTIME, &init_end);

	int hw_err_count = 0;

	clock_gettime(CLOCK_REALTIME, &nn_start);
	for(int i=0; i<NUM_ITERATIONS/NUM_ITERATION_PER_EPOCH; i++){
		printf("----------Epoch%d----------\n", i+1);
		for(int j=0; j<NUM_ITERATION_PER_EPOCH; j++){
			result = lenet5_ap2(j+i*NUM_ITERATION_PER_EPOCH);
    		//printf("%3d result:%d, answer:%d\n", j, result, tag[j+i*NUM_ITERATION_PER_EPOCH]);
    		if(result != tag[j+i*NUM_ITERATION_PER_EPOCH]){
    			hw_err_count++;
    		}
    	}
    	printf("accuracy:%d/%d\n", (i+1)*NUM_ITERATION_PER_EPOCH-hw_err_count, (i+1)*NUM_ITERATION_PER_EPOCH);
    }
    clock_gettime(CLOCK_REALTIME, &nn_end);
    clock_gettime(CLOCK_REALTIME, &all_end);

    end = clock();

    printf("clock time = %f\n", (double)(end-start)/CLOCKS_PER_SEC);

    /*
    printf("init_start = %f, init_end = %f\n", (double)init_start.tv_sec, (double)init_end.tv_sec);
    printf("nn_start = %f, nn_end = %f\n", (double)nn_start.tv_sec, (double)nn_end.tv_sec);
    printf("all_start = %f, all_end = %f\n", (double)all_start.tv_sec, (double)all_end.tv_sec);
    */
    //printf("init_time = %f\nnn_time = %f\nall_time=%f\n", (double)(init_end.tv_sec-init_start.tv_sec), (double)(nn_end.tv_sec-nn_start.tv_sec), (double)(all_end.tv_sec-all_start.tv_sec));
    print_time(char_init_time, init_start, init_end);
    print_time(char_nn_time, nn_start, nn_end);
    print_time(char_all_time, all_start, all_end);

    return 0;
}
