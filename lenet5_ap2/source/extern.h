extern double in[32][32][10000];
extern int tag[10000];
extern int result;
extern double fc_weight[4][400][120];  //[層][縦][横]
extern double fc_bias[4][120];
extern double conv_weight[3][16][6][5][5];  //[層][チャネル][サンプル][縦][横]
extern double conv_bias[3][16];
extern double fc_dot[3][120];
extern double conv_dot[3][16][28][28];
extern double pool_dot[3][16][14][14]; //[層][チャネル][縦][横]
extern double fc_in[400];
