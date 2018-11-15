#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

FILE *fp;

char fname[256];
char data_dir[] = "/home/yagiyugo/vivado/simple_convnet/mnist_test_data/";
char param_dir[] = "/home/yagiyugo/vivado/simple_convnet/param_txt/";

double f_in;

void load_test_data(){
	for(int i=1; i<=5; i++){
		sprintf(fname, "%s%s%d%s", data_dir, "data", i, ".txt");
		if ((fp = fopen(fname, "r")) == NULL) {
			fprintf(stderr, "%s is not open.\n", fname);
		    exit(1);
		}
		for(int j=0; j<2000; j++){
			for(int k=0; k<32; k++){
				for(int l=0; l<32; l++){
					if(k<2 || l<2 || k>29 || l>29){
						in[k][l][(i-1)*2000+j]=0;
					}
					else{
						fscanf(fp,"%lf", &f_in);
						in[k][l][(i-1)*2000+j]=f_in;
					}
				}
			}
		}
		fclose(fp);
		sprintf(fname, "%s%s%d%s", data_dir, "tag", i, ".txt");
		if ((fp = fopen(fname, "r")) == NULL) {
			fprintf(stderr, "%s is not open.\n", fname);
			exit(1);
		}
		for(int j=0; j<2000; j++){
			fscanf(fp,"%lf", &f_in);
			tag[(i-1)*2000+j]=int(f_in);
		}
		fclose(fp);
	}
}

void load_fc_weight(int num, int row, int column){
	sprintf(fname, "%s%s%d%s", param_dir, "fc", num, "_weight.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		for(int j=0; j<column; j++){
			fscanf(fp, "%lf", &f_in);
			fc_weight[num][i][j]=f_in;
		}
	}
	fclose(fp);
}

void load_conv_weight(int lay_num, int channel, int sample, int row, int column){
	sprintf(fname, "%s%s%d%s", param_dir, "conv", lay_num, "_weight.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<channel; i++){
		for(int j=0; j<sample; j++){
			for(int k=0; k<row; k++){
				for(int l=0; l<column; l++){
					fscanf(fp, "%lf", &f_in);
					conv_weight[lay_num][i][j][k][l]=f_in;
				}
			}
		}
	}
	fclose(fp);
}

void load_fc_bias(int lay_num, int row){
	sprintf(fname, "%s%s%d%s", param_dir, "fc", lay_num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		fc_bias[lay_num][i]=f_in;
	}
	fclose(fp);
}

void load_conv_bias(int lay_num, int row){
	sprintf(fname, "%s%s%d%s", param_dir, "conv", lay_num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		conv_bias[lay_num][i]=f_in;
	}
	fclose(fp);
}

void init(){

	load_test_data();

	load_conv_weight(1, 6, 1, 5, 5);
	load_conv_bias(1, 6);

	load_fc_weight(1, 1176, 100);
	load_fc_bias(1, 100);
	load_fc_weight(2, 100, 10);
	load_fc_bias(2, 10);

}
