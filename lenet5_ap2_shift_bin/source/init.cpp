#include <stdio.h>
#include <ap_fixed.h>
#include <string.h>
#include "extern.h"
#include "define.h"

FILE *fp;

char fname[256];
char data_dir[] = "/home/yagiyugo/vivado/lenet5_ap2_shift_bin/mnist_test_data/";
char param_dir[] = "/home/yagiyugo/vivado/lenet5_ap2_shift_bin/param_txt/";
char fix[16];
unsigned char c_in;
int shift_amount;

double f_in;
int i_in0, i_in1;

void bin_to_int(unsigned char in, int out[]);

void load_test_data(){
	for(int i=1; i<=5; i++){
		sprintf(fname, "%s%s%d%s", data_dir, "data", i, ".txt");
		if ((fp = fopen(fname, "r")) == NULL) {
			fprintf(stderr, "%s is not open.\n", fname);
		    _exit(1);
		}
		for(int j=0; j<2000; j++){
			for(int k=0; k<32; k++){
				for(int l=0; l<32; l++){
					if(k<2 || l<2 || k>29 || l>29){
						in[k][l][(i-1)*2000+j]=0;
					}
					else{
						fscanf(fp,"%lf", &f_in);
						in[k][l][(i-1)*2000+j]=ap_fixed<32,10>(f_in);
					}
				}
			}
		}
		fclose(fp);
		sprintf(fname, "%s%s%d%s", data_dir, "tag", i, ".txt");
		if ((fp = fopen(fname, "r")) == NULL) {
			fprintf(stderr, "%s is not open.\n", fname);
			_exit(1);
		}
		for(int j=0; j<2000; j++){
			fscanf(fp,"%lf", &f_in);
			tag[(i-1)*2000+j]=int(f_in);
		}
		fclose(fp);
	}
}

void load_fc_weight(int num, int row, int column){
	sprintf(fname, "%s%s%s%d%s", param_dir, fix, "fc", num, "_weight.bin");
	if ((fp = fopen(fname, "rb")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    _exit(1);
	}
	for(int i=0; i<row; i++){
		for(int j=0; j<column; j++){
			fread(&c_in, sizeof(char), 1, fp);
			bin_to_int(c_in, fc_weight[num][i][j]);
		}
	}
	fclose(fp);
}


void load_conv_weight(int lay_num, int channel, int sample, int row, int column){
	sprintf(fname, "%s%s%s%d%s", param_dir, fix, "conv", lay_num, "_weight.bin");
	if ((fp = fopen(fname, "rb")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    _exit(1);
	}
	for(int i=0; i<channel; i++){
		for(int j=0; j<sample; j++){
			for(int k=0; k<row; k++){
				for(int l=0; l<column; l++){
					fread(&c_in, sizeof(char), 1, fp);
					bin_to_int(c_in, conv_weight[lay_num][i][j][k][l]);
				}
			}
		}
	}
	fclose(fp);
}

void load_fc_bias(int lay_num, int row){
	sprintf(fname, "%s%s%s%d%s", param_dir, "fixed_", "fc", lay_num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    _exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		fc_bias[lay_num][i]=(ap_fixed<32,10>)(f_in);
	}
	fclose(fp);
}

void load_conv_bias(int lay_num, int row){
	sprintf(fname, "%s%s%s%d%s", param_dir, "fixed_", "conv", lay_num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    _exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		conv_bias[lay_num][i]=(ap_fixed<32,10>)(f_in);
	}
	fclose(fp);
}

void init(){

	if(FIX_MODE==1)
		strcpy(fix, "shift_");
	else
		strcpy(fix,"");

	load_test_data();

	load_conv_weight(1, 6, 1, 5, 5);
	load_conv_bias(1, 6);
	load_conv_weight(2, 16, 6, 5, 5);
	load_conv_bias(2, 16);

	load_fc_weight(1, 400, 120);
	load_fc_bias(1, 120);
	load_fc_weight(2, 120, 84);
	load_fc_bias(2, 84);
	load_fc_weight(3, 84, 10);
	load_fc_bias(3, 10);

}
