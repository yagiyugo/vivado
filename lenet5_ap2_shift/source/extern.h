extern ap_fixed<30,10> in[32][32][10000];
extern int tag[10000];
extern int result;
extern int fc_weight[4][400][400][2];  //[層][縦][横][データの種類]
extern ap_fixed<30,10> fc_bias[4][120];
extern int conv_weight[3][16][6][5][5][2];  //[層][チャネル][サンプル][縦][横][データの種類]
extern ap_fixed<30,10> conv_bias[3][16];
extern ap_fixed<30,10> fc_dot[3][120];
extern ap_fixed<30,10> conv_dot[3][16][28][28]; //[層][チャネル][サンプル][縦][横]
extern ap_fixed<30,10> pool_dot[3][16][14][14]; //[層][チャネル][サンプル][縦][横]
extern ap_fixed<30,10> fc_in[400];
