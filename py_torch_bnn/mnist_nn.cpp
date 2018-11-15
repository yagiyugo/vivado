// mnist_nn.cpp
// 2017/06/01 by marsee
//

#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

void batch_norm(int lay_num, int data_num);

void mnist_nn(int start_index){

	double max_value;
	int max_index;

	//fc1
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			dot[1][col][n] = 0;
			for(int row=0; row<784; row++){
				dot[1][col][n] += in[row][n+start_index]*af_weight[1][row][col];
			}
		}
	}

	batch_norm(1, 4096);

	// htan
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			if(dot[1][col][n] > 0)
				dot[1][col][n] = 1;
			else if(dot[1][col][n] < 0)
				dot[1][col][n] = -1;
		}
	}


	//fc2
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			dot[2][col][n] = 4096;
			for(int row=0; row<4096; row++){
				dot[2][col][n] -= dot[1][row][n]^af_weight[2][row][col];
			}
		}
	}

	batch_norm(2, 4096);

	// htan
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			if(dot[2][col][n] > 0)
				dot[2][col][n] = 1;
			else if(dot[2][col][n] < 0)
				dot[2][col][n] = -1;
		}
	}


	//fc3
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			dot[3][col][n] = 4096;
			for(int row=0; row<4096; row++){
				dot[3][col][n] -= dot[2][row][n]^af_weight[3][row][col];
			}
		}
	}

	batch_norm(3, 4096);

	// htan
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		for(int col=0; col<4096; col++){
			if(f_dot[3][col][n] > 1.0)
				f_dot[3][col][n] = 1.0;
			else if(f_dot[3][col][n] < -1.0)
				f_dot[3][col][n] = -1.0;
		}
	}

	//fc4
	for(int n=0; n<NUM_ITERATION_PER_EPOCH; n++){
		max_value = 0.0;
		max_index=0;

		for(int col=0; col<10; col++){
			f_dot[4][col][n] = 0.0;
			for(int row=0; row<4096; row++){
				f_dot[4][col][n] += f_dot[3][row][n]*af_last_weight[row][col];
			}
			f_dot[4][col][n] += af_last_bias[col];
			if(col == 0){
				max_value = f_dot[4][col][n];
			}
			if(f_dot[4][col][n] > max_value){
				max_value = f_dot[4][col][n];
				max_index = col;
			}
		}
		result[n] = max_index;
	}

}
