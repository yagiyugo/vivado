// mnist_nn.cpp
// 2017/06/01 by marsee
//

#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

unsigned char extract_sign(unsigned char in);
char extract_signs(unsigned char in);
unsigned char extract_direction(unsigned char in);
unsigned char extract_shift_amount(unsigned char in);
char extract_shift_amounts(unsigned char in);

int lenet5_ap2(int index){

	double max_value;
	int max_index;
	unsigned char weight;

	//conv1 + relu
	for(int channel=0; channel<6; channel++){
		for(int col=0; col<28; col++){
			for(int row=0; row<28; row++){
				conv_dot[1][channel][col][row] = 0;
				for(int fil_col=0; fil_col<5; fil_col++){
					for(int fil_row=0; fil_row<5; fil_row++){
						for(int sample=0; sample<1; sample++){
							/*if(conv_weight[1][channel][sample][fil_row][fil_col][0] == 0){
								if(conv_weight[1][channel][sample][fil_row][fil_col][1] == 0){
									conv_dot[1][channel][col][row] += (in[col+fil_col][row+fil_row][index] << int(conv_weight[1][channel][sample][fil_row][fil_col][2]));
								}
								else{
									conv_dot[1][channel][col][row] += (in[col+fil_col][row+fil_row][index] >> int(conv_weight[1][channel][sample][fil_row][fil_col][2]));
								}
							}
							else{
								if(conv_weight[1][channel][sample][fil_row][fil_col][1] == 0){
									conv_dot[1][channel][col][row] -= (in[col+fil_col][row+fil_row][index] << int(conv_weight[1][channel][sample][fil_row][fil_col][2]));
								}
								else{
									conv_dot[1][channel][col][row] -= (in[col+fil_col][row+fil_row][index] >> int(conv_weight[1][channel][sample][fil_row][fil_col][2]));
								}
							}*/
							/*weight = conv_weight[1][channel][sample][fil_row][fil_col];
							if(extract_sign(weight) == 1){
								if(extract_direction(weight) == 1){
									conv_dot[1][channel][col][row] +=
											(in[col+fil_col][row+fil_row][index] << extract_shift_amount(weight));
								}
								else{
									conv_dot[1][channel][col][row] +=
											(in[col+fil_col][row+fil_row][index] >> extract_shift_amount(weight));
								}
							}
							else{
								if(extract_direction(weight) == 1){
									conv_dot[1][channel][col][row] -=
											(in[col+fil_col][row+fil_row][index] << extract_shift_amount(weight));
								}
								else{
									conv_dot[1][channel][col][row] -=
											(in[col+fil_col][row+fil_row][index] >> extract_shift_amount(weight));
								}
							}
							*/
							//weight = conv_weight[1][channel][sample][fil_row][fil_col];
							conv_dot[1][channel][col][row] +=
									conv_weight[1][channel][sample][fil_row][fil_col][0]*(in[col+fil_col][row+fil_row][index] << conv_weight[1][channel][sample][fil_row][fil_col][1]);

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

	//conv2 + relu
	for(int channel=0; channel<16; channel++){
		for(int col=0; col<10; col++){
			for(int row=0; row<10; row++){
				conv_dot[2][channel][col][row] = 0;
				for(int fil_col=0; fil_col<5; fil_col++){
					for(int fil_row=0; fil_row<5; fil_row++){
						for(int sample=0; sample<6; sample++){
							/*if(conv_weight[2][channel][sample][fil_row][fil_col][0] == 0){
								if(conv_weight[2][channel][sample][fil_row][fil_col][1] == 0){
									conv_dot[2][channel][col][row] += (pool_dot[1][sample][col+fil_col][row+fil_row] << int(conv_weight[2][channel][sample][fil_row][fil_col][2]));
								}
								else{
									conv_dot[2][channel][col][row] += (pool_dot[1][sample][col+fil_col][row+fil_row] >> int(conv_weight[2][channel][sample][fil_row][fil_col][2]));
								}
							}
							else{
								if(conv_weight[2][channel][sample][fil_row][fil_col][1] == 0){
									conv_dot[2][channel][col][row] -= (pool_dot[1][sample][col+fil_col][row+fil_row] << int(conv_weight[2][channel][sample][fil_row][fil_col][2]));
								}
								else{
									conv_dot[2][channel][col][row] -= (pool_dot[1][sample][col+fil_col][row+fil_row] >> int(conv_weight[2][channel][sample][fil_row][fil_col][2]));
								}
							}*/
							/*weight = conv_weight[2][channel][sample][fil_row][fil_col];
							if(extract_sign(weight) == 1){
								if(extract_direction(weight) == 1){
									conv_dot[2][channel][col][row] +=
											(pool_dot[1][sample][col+fil_col][row+fil_row] << extract_shift_amount(weight));
								}
								else{
									conv_dot[2][channel][col][row] +=
											(pool_dot[1][sample][col+fil_col][row+fil_row] >> extract_shift_amount(weight));
								}
							}
							else{
								if(extract_direction(weight) == 1){
									conv_dot[2][channel][col][row] -=
											(pool_dot[1][sample][col+fil_col][row+fil_row] << extract_shift_amount(weight));
								}
								else{
									conv_dot[2][channel][col][row] -=
											(pool_dot[1][sample][col+fil_col][row+fil_row] >> extract_shift_amount(weight));
								}
							}
							*/
							//weight = conv_weight[2][channel][sample][fil_row][fil_col];
							conv_dot[2][channel][col][row] +=
									conv_weight[2][channel][sample][fil_row][fil_col][0]*(pool_dot[1][sample][col+fil_col][row+fil_row] << conv_weight[2][channel][sample][fil_row][fil_col][1]);

						}
					}
				}
				conv_dot[2][channel][col][row] += conv_bias[2][channel];
				//relu
				if(conv_dot[2][channel][col][row] < 0){
					conv_dot[2][channel][col][row] = 0;
				}
			}
		}
	}

	//pool2
	for(int i=0; i<16; i++){
		for(int j=0; j<5; j++){
			for(int k=0; k<5; k++){
				max_value = conv_dot[2][i][j*2][k*2];
				for(int l=0; l<2; l++){
					for(int m=0; m<2; m++){
						if(max_value < conv_dot[2][i][j*2+l][k*2+m]){
							max_value = conv_dot[2][i][j*2+l][k*2+m];
						}
					}
				}
				pool_dot[2][i][j][k] = max_value;

			}
		}
	}

	//pool→fc
	for(int i=0; i<16; i++){
		for(int j=0; j<5; j++){
			for(int k=0; k<5; k++){
				fc_in[i*25 + j*5 + k] = pool_dot[2][i][j][k];
			}
		}
	}

	//fc1 + relu
	for(int col=0; col<120; col++){
		fc_dot[1][col] = 0;
		for(int row=0; row<400; row++){
			/*if(fc_weight[1][row][col][0] == 0){
				if(fc_weight[1][row][col][1] == 0){
					fc_dot[1][col] += (fc_in[row] << int(fc_weight[1][row][col][2]));
				}
				else{
					fc_dot[1][col] += (fc_in[row] >> int(fc_weight[1][row][col][2]));
				}
			}
			else{
				if(fc_weight[1][row][col][0] == 0){
					fc_dot[1][col] -= (fc_in[row] << int(fc_weight[1][row][col][2]));
				}
				else{
					fc_dot[1][col] -= (fc_in[row] >> int(fc_weight[1][row][col][2]));
				}
			}*/
			/*weight = fc_weight[1][row][col];
			if(extract_sign(weight) == 1){
				if(extract_direction(weight) == 1){
					fc_dot[1][col] +=
							(fc_in[row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[1][col] +=
							(fc_in[row] >> extract_shift_amount(weight));
				}
			}
			else{
				if(extract_direction(weight) == 1){
					fc_dot[1][col] -=
							(fc_in[row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[1][col] -=
							(fc_in[row] >> extract_shift_amount(weight));
				}
			}
			weight = fc_weight[1][row][col];
			*/
			fc_dot[1][col] +=
					fc_weight[1][row][col][0]*(fc_in[row] << fc_weight[1][row][col][1]);

		}
		fc_dot[1][col] += fc_bias[1][col];
		//relu
		if(fc_dot[1][col] < 0){
			fc_dot[1][col] = 0;
		}
	}

	//fc2 + relu
	for(int col=0; col<84; col++){
		fc_dot[2][col] = 0;
		for(int row=0; row<120; row++){
			/*if(fc_weight[2][row][col][0] == 0){
				if(fc_weight[2][row][col][1] == 0){
					fc_dot[2][col] += (fc_dot[1][row] << int(fc_weight[2][row][col][2]));
				}
				else{
					fc_dot[2][col] += (fc_dot[1][row] >> int(fc_weight[2][row][col][2]));
				}
			}
			else{
				if(fc_weight[2][row][col][1] == 0){
					fc_dot[2][col] -= (fc_dot[1][row] << int(fc_weight[2][row][col][2]));
				}
				else{
					fc_dot[2][col] -= (fc_dot[1][row] >> int(fc_weight[2][row][col][2]));
				}
			}*/
			/*
			weight = fc_weight[2][row][col];
			if(extract_sign(weight) == 1){
				if(extract_direction(weight) == 1){
					fc_dot[2][col] +=
							(fc_dot[1][row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[2][col] +=
							(fc_dot[1][row] >> extract_shift_amount(weight));
				}
			}
			else{
				if(extract_direction(weight) == 1){
					fc_dot[2][col] -=
							(fc_dot[1][row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[2][col] -=
							(fc_dot[1][row] >> extract_shift_amount(weight));
				}
			}

			weight = fc_weight[2][row][col];
			*/
			fc_dot[2][col] +=
					fc_weight[2][row][col][0]*(fc_dot[1][row] << fc_weight[2][row][col][1]);

		}
		fc_dot[2][col] += fc_bias[2][col];
		//relu
		if(fc_dot[2][col] < 0){
			fc_dot[2][col] = 0;
		}
	}

	//fc3
	for(int col=0; col<10; col++){
		fc_dot[3][col] = 0;
		for(int row=0; row<84; row++){
			/*if(fc_weight[3][row][col][0] == 0){
				if(fc_weight[3][row][col][1] == 0){
					fc_dot[3][col] += (fc_dot[2][row] << int(fc_weight[3][row][col][2]));
				}
				else{
					fc_dot[3][col] += (fc_dot[2][row] >> int(fc_weight[3][row][col][2]));
				}
			}
			else{
				if(fc_weight[3][row][col][1] == 0){
					fc_dot[3][col] -= (fc_dot[2][row] << int(fc_weight[3][row][col][2]));
				}
				else{
					fc_dot[3][col] -= (fc_dot[2][row] >> int(fc_weight[3][row][col][2]));
				}
			}*/
			/*
			weight = fc_weight[3][row][col];
			if(extract_sign(weight) == 1){
				if(extract_direction(weight) == 1){
					fc_dot[3][col] +=
							(fc_dot[2][row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[3][col] +=
							(fc_dot[2][row] >> extract_shift_amount(weight));
				}
			}
			else{
				if(extract_direction(weight) == 1){
					fc_dot[3][col] -=
							(fc_dot[2][row] << extract_shift_amount(weight));
				}
				else{
					fc_dot[3][col] -=
							(fc_dot[2][row] >> extract_shift_amount(weight));
				}
			}
			weight = fc_weight[3][row][col];
			*/
			fc_dot[3][col] +=
					fc_weight[3][row][col][0]*(fc_dot[2][row] << fc_weight[3][row][col][1]);

		}
		fc_dot[3][col] += fc_bias[3][col];
		if(col == 0){
			max_value = fc_dot[3][col];
			max_index = 0;
		}
		else if(fc_dot[3][col] > max_value){
			max_value = fc_dot[3][col];
			max_index = col;
		}
		//printf("%d: %lf\n", i, float(fc_dot[3][i]));
	}
	return max_index;

}
