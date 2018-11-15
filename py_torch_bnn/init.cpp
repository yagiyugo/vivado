#include <stdio.h>
#include <ap_fixed.h>
#include "extern.h"
#include "define.h"

FILE *fp;

char fname[256];
char data_dir[] = "/home/yagiyugo/vivado/py_torch_bnn/mnist_test_data/";
char param_dir[] = "/home/yagiyugo/vivado/py_torch_bnn/header_txt/";

double f_in;

void load_test_data(){
	for(int i=1; i<=5; i++){
		sprintf(fname, "%s%s%d%s", data_dir, "data", i, ".txt");
		if ((fp = fopen(fname, "r")) == NULL) {
			fprintf(stderr, "%s is not open.\n", fname);
		    exit(1);
		}
		for(int j=0; j<2000; j++){
			for(int k=0; k<784; k++){
				fscanf(fp,"%lf", &f_in);
				in[k][(i-1)*2000+j]=int(f_in);
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

void load_weight(int num, int row, int column){
	sprintf(fname, "%s%s%d%s", param_dir, "af", num, "_weight.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		for(int j=0; j<column; j++){
			fscanf(fp, "%lf", &f_in);
			if(num!=4)
				af_weight[num][i][j]=int(f_in);
			else
				af_last_weight[i][j]=f_in;
		}
	}
	fclose(fp);
}

void load_bias(int num, int row){
	sprintf(fname, "%s%s%d%s", param_dir, "af", num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		af_last_bias[i]=f_in;
	}
	fclose(fp);
}

void load_bn_weight(int num, int row){
	sprintf(fname, "%s%s%d%s", param_dir, "bn", num, "_weight.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		bn_weight[num][i]=f_in;
	}
	fclose(fp);
}

void load_bn_bias(int num, int row){
	sprintf(fname, "%s%s%d%s", param_dir, "bn", num, "_bias.txt");
	if ((fp = fopen(fname, "r")) == NULL) {
		fprintf(stderr, "%s is not open.\n", fname);
	    exit(1);
	}
	for(int i=0; i<row; i++){
		fscanf(fp, "%lf", &f_in);
		bn_bias[num][i]=f_in;
	}
	fclose(fp);
}

void init(){

	load_test_data();

	load_weight(1, 784,  4096);
	load_weight(2, 4096, 4096);
	load_weight(3, 4096, 4096);
	load_weight(4, 4096, 10);
	load_bias(4, 10);
	load_bn_weight(1, 4096);
	load_bn_weight(2, 4096);
	load_bn_weight(3, 4096);
	load_bn_bias(1, 4096);
	load_bn_bias(2, 4096);
	load_bn_bias(3, 4096);

}
