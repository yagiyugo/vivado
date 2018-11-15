// mnist_nn.cpp
// 2017/06/01 by marsee
//

#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

int simple_convnet(int index){

	double max_value;
	int max_index;

	//conv1 + relu
	for(int channel=0; channel<6; channel++){
		for(int col=0; col<28; col++){
			for(int row=0; row<28; row++){
				conv_dot[1][channel][col][row] = 0;
				for(int fil_col=0; fil_col<5; fil_col++){
					for(int fil_row=0; fil_row<5; fil_row++){
						for(int sample=0; sample<1; sample++){
							conv_dot[1][channel][col][row] += in[col+fil_col][row+fil_row][index] * conv_weight[1][channel][sample][fil_col][fil_row];
						}
					}
				}
				conv_dot[1][channel][col][row] += conv_bias[1][channel];
				//relu
				if(conv_dot[1][channel][col][row] < 0){
					conv_dot[1][channel][col][row] = 0;
				}
			}
		}
	}

	//pool1
	for(int channel=0; channel<6; channel++){
		for(int col=0; col<14; col++){
			for(int row=0; row<14; row++){
				max_value = conv_dot[1][channel][col*2][row*2];
				for(int fil_col=0; fil_col<2; fil_col++){
					for(int fil_row=0; fil_row<2; fil_row++){
						if(max_value < conv_dot[1][channel][col*2+fil_col][row*2+fil_row]){
							max_value = conv_dot[1][channel][col*2+fil_col][row*2+fil_row];
						}
					}
				}
				pool_dot[1][channel][col][row] = max_value;
				//printf("pool_dot[1][%d][%d][%d]:%lf\n", i, j, k, pool_dot[2][i][j][k]);
			}
		}
	}

	//pool→fc
	for(int i=0; i<6; i++){
		for(int j=0; j<14; j++){
			for(int k=0; k<14; k++){
				fc_in[i*14*14 + j*14 + k] = pool_dot[1][i][j][k];
			}
		}
	}

	//fc1 + relu
	for(int col=0; col<100; col++){
		fc_dot[1][col] = 0;
		for(int row=0; row<1176; row++){
			fc_dot[1][col] += fc_in[row] * fc_weight[1][row][col];
		}
		fc_dot[1][col] += fc_bias[1][col];
		//relu
		if(fc_dot[1][col] < 0){
			fc_dot[1][col] = 0;
		}
	}

	//fc2
	for(int i=0; i<10; i++){
		fc_dot[2][i] = 0;
		for(int j=0; j<100; j++){
			fc_dot[2][i] += fc_dot[1][j] * fc_weight[2][j][i];
		}
		fc_dot[2][i] += fc_bias[2][i];
		if(i == 0){
			max_value = fc_dot[2][i];
			max_index = 0;
		}
		else if(fc_dot[2][i] > max_value){
			max_value = fc_dot[2][i];
			max_index = i;
		}
		printf("%d: %lf\n", i, fc_dot[2][i]);
	}
	return max_index;

}
