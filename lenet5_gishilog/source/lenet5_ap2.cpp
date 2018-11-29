// mnist_nn.cpp
// 2017/06/01 by marsee
//

#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

void fc_batch_norm(int lay_num, int ROW);
void conv_batch_norm(int lay_num, int CHANNEL, int COL, int ROW);

void lenet5_ap2(int index){

	unsigned char weight;

	double max;

	//conv1
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int channel=0; channel<20; channel++){
			for(int col=0; col<24; col++){
				for(int row=0; row<24; row++){
					conv_dot[1][data_num][channel][col][row] = 0;
					for(int fil_col=0; fil_col<5; fil_col++){
						for(int fil_row=0; fil_row<5; fil_row++){
							for(int sample=0; sample<1; sample++){
								conv_dot[1][data_num][channel][col][row] +=
										conv_weight[1][channel][sample][fil_row][fil_col][0]
										*(in[col+fil_col][row+fil_row][data_num+index] << conv_weight[1][channel][sample][fil_row][fil_col][1]);

							}
						}
					}
				}
			}
		}
	}

	//conv_bn1
	conv_batch_norm(1, 20, 24, 24);

	//relu
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int channel=0; channel<20; channel++){
			for(int col=0; col<24; col++){
				for(int row=0; row<24; row++){
					if(conv_dot[1][data_num][channel][col][row] < 0){
						conv_dot[1][data_num][channel][col][row] = 0;
					}
				}
			}
		}
	}


	//pool1
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int channel=0; channel<20; channel++){
			for(int col=0; col<12; col++){
				for(int row=0; row<12; row++){
					max = conv_dot[1][data_num][channel][col*2][row*2];
					for(int fil_col=0; fil_col<2; fil_col++){
						for(int fil_row=0; fil_row<2; fil_row++){
							if(max < conv_dot[1][data_num][channel][col*2+fil_col][row*2+fil_row]){
								max = conv_dot[1][data_num][channel][col*2+fil_col][row*2+fil_row];
							}
						}
					}
					pool_dot[1][data_num][channel][col][row] = max;
					//printf("pool_dot[1][%d][%d][%d]:%lf\n", i, j, k, pool_dot[2][i][j][k]);
				}
			}
		}
	}

	//conv2
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int channel=0; channel<50; channel++){
			for(int col=0; col<8; col++){
				for(int row=0; row<8; row++){
					conv_dot[2][data_num][channel][col][row] = 0;
					for(int fil_col=0; fil_col<5; fil_col++){
						for(int fil_row=0; fil_row<5; fil_row++){
							for(int sample=0; sample<20; sample++){
								conv_dot[2][data_num][channel][col][row] +=
								conv_weight[2][channel][sample][fil_row][fil_col][0]
								*(pool_dot[1][data_num][sample][col+fil_col][row+fil_row] << conv_weight[2][channel][sample][fil_row][fil_col][1]);

							}
						}
					}
				}
			}
		}
	}

	//conv_bn2
	conv_batch_norm(2, 50, 8, 8);

	//relu
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int channel=0; channel<50; channel++){
			for(int col=0; col<8; col++){
				for(int row=0; row<8; row++){
					if(conv_dot[2][data_num][channel][col][row] < 0){
						conv_dot[2][data_num][channel][col][row] = 0;
					}
				}
			}
		}
	}


	//pool2
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int i=0; i<50; i++){
			for(int j=0; j<4; j++){
				for(int k=0; k<4; k++){
					max = conv_dot[2][data_num][i][j*2][k*2];
					for(int l=0; l<2; l++){
						for(int m=0; m<2; m++){
							if(max < conv_dot[2][data_num][i][j*2+l][k*2+m]){
								max = conv_dot[2][data_num][i][j*2+l][k*2+m];
							}
						}
					}
					pool_dot[2][data_num][i][j][k] = max;

				}
			}
		}
	}

	//pool→fc
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int i=0; i<50; i++){
			for(int j=0; j<4; j++){
				for(int k=0; k<4; k++){
					fc_in[data_num][i*16 + j*4 + k] = pool_dot[2][data_num][i][j][k];
				}
			}
		}
	}

	//fc1 + relu
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int col=0; col<500; col++){
			fc_dot[1][data_num][col] = 0;
			for(int row=0; row<800; row++){
				fc_dot[1][data_num][col] +=
				fc_weight[1][row][col][0]*(fc_in[data_num][row] << fc_weight[1][row][col][1]);
			}
		}
	}

	//fc_bn1
	fc_batch_norm(1, 500);

	//relu
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int col=0; col<500; col++){
			if(fc_dot[1][data_num][col] < 0){
				fc_dot[1][data_num][col] = 0;
			}
		}
	}

	//fc2
	for(int data_num=0; data_num<NUM_ITERATION_PER_EPOCH; data_num++){
		for(int col=0; col<10; col++){
			fc_dot[2][data_num][col] = 0;
			for(int row=0; row<500; row++){
				fc_dot[2][data_num][col] += fc_weight[2][row][col][0]*(fc_dot[1][data_num][row] << fc_weight[2][row][col][1]);
			}
			fc_dot[2][data_num][col] += fc_bias[2][col];

			if(col == 0){
				max_value[data_num] = fc_dot[2][data_num][col];
				max_index[data_num] = 0;
			}
			else if(fc_dot[2][data_num][col] > max_value[data_num]){
				max_value[data_num] = fc_dot[2][data_num][col];
				max_index[data_num] = col;
			}
			//printf("%d: %lf\n", col, float(fc_dot[2][data_num][col]));
		}

	}
}
