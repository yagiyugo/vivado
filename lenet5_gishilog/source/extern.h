extern ap_fixed<32,10> in[28][28][10000];
extern int tag[10000];
extern int result;
extern char fc_weight[3][800][500][2];  //[層][縦][横][データの種類]
extern ap_fixed<32,10> fc_bias[3][10];
extern char fc_bn_weight[3][500][2];
extern ap_fixed<32,10> fc_bn_bias[3][500];
extern ap_fixed<32,10> fc_bn_mean[2][500];
extern ap_fixed<32,10> fc_bn_var[2][500];
extern char conv_weight[3][50][20][5][5][2];  //[層][チャネル][サンプル][縦][横][データの種類]
extern char conv_bn_weight[3][50][2];
extern ap_fixed<32,10> conv_bn_bias[3][50];
extern ap_fixed<32,10> conv_bn_mean[3][50];
extern ap_fixed<32,10> conv_bn_var[3][50];
extern ap_fixed<32,10> fc_dot[3][100][500];
extern ap_fixed<32,10> conv_dot[3][100][50][24][24]; //[層][チャネル][サンプル][縦][横]
extern ap_fixed<32,10> pool_dot[3][100][50][12][12]; //[層][チャネル][サンプル][縦][横]
extern ap_fixed<32,10> fc_in[100][800];
extern double max_value[100];
extern int max_index[100];

