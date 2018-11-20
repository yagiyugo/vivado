; ModuleID = '/home/yagiyugo/vivado/lenet5_ap2_shift/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE.28.180.182.184 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker.27.179.181.183*, %struct._IO_FILE.28.180.182.184*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker.27.179.181.183 = type { %struct._IO_marker.27.179.181.183*, %struct._IO_FILE.28.180.182.184*, i32 }

@pow_num = global [16 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@pool_dot_V = external global [9408 x i30]
@param_dir = constant [50 x i8] c"/home/yagiyugo/vivado/lenet5_ap2_shift/param_txt/\00", align 16
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a7, void ()* @_GLOBAL__I_a52, void ()* @_GLOBAL__I_a11547]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@lenet5_ap2_str = internal unnamed_addr constant [11 x i8] c"lenet5_ap2\00"
@in_V = external global [10240000 x i30]
@i_in1 = global i32 0, align 4
@i_in0 = global i32 0, align 4
@fp = global %struct._IO_FILE.28.180.182.184* null, align 8
@fname = constant [256 x i8] zeroinitializer, align 16
@fix = constant [16 x i8] zeroinitializer, align 16
@fc_weight = external global [1280000 x i32]
@fc_in_V = external global [400 x i30]
@fc_dot_V = external global [3 x [120 x i30]]
@fc_bias_V = external global [480 x i30]
@f_in = global double 0.000000e+00, align 8
@data_dir = constant [56 x i8] c"/home/yagiyugo/vivado/lenet5_ap2_shift/mnist_test_data/\00", align 16
@conv_weight = external global [14400 x i32]
@conv_dot_V = external global [37632 x i30]
@conv_bias_V = external global [48 x i30]

declare i64 @llvm.part.set.i64.i11(i64, i11, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @lenet5_ap2(i32 %index) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %index) nounwind, !map !591
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !597
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @lenet5_ap2_str) nounwind
  %index_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %index) nounwind
  %tmp = trunc i32 %index_read to i25
  br label %.loopexit58

.loopexit58.loopexit:                             ; preds = %.preheader398
  br label %.loopexit58

.loopexit58:                                      ; preds = %.loopexit58.loopexit, %0
  %channel = phi i3 [ 0, %0 ], [ %channel_1, %.loopexit58.loopexit ]
  %exitcond1 = icmp eq i3 %channel, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_1 = add i3 %channel, 1
  br i1 %exitcond1, label %.preheader394.preheader, label %.preheader398.preheader

.preheader394.preheader:                          ; preds = %.loopexit58
  %max_value = alloca double
  br label %.preheader394

.preheader398.preheader:                          ; preds = %.loopexit58
  %tmp_1 = call i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61 2, i3 %channel)
  %conv_bias_V_addr = getelementptr [48 x i30]* @conv_bias_V, i64 0, i64 %tmp_1
  %p_shl3 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel, i5 0)
  %p_shl4 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel, i2 0)
  %tmp_2 = sub i64 %p_shl3, %p_shl4
  %p_shl2 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel, i1 false)
  %tmp_3 = sub i64 %p_shl3, %p_shl2
  %p_Val2_4 = load i30* %conv_bias_V_addr, align 4
  %tmp_5 = trunc i30 %p_Val2_4 to i29
  br label %.preheader398

.preheader398.loopexit:                           ; preds = %.preheader397
  br label %.preheader398

.preheader398:                                    ; preds = %.preheader398.loopexit, %.preheader398.preheader
  %col = phi i5 [ 0, %.preheader398.preheader ], [ %col_1, %.preheader398.loopexit ]
  %exitcond3 = icmp eq i5 %col, -4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %col_1 = add i5 %col, 1
  br i1 %exitcond3, label %.loopexit58.loopexit, label %.preheader397.preheader

.preheader397.preheader:                          ; preds = %.preheader398
  %tmp_4 = zext i5 %col to i64
  %tmp_13 = add i64 %tmp_2, %tmp_4
  %tmp_14 = trunc i64 %tmp_13 to i12
  %p_shl5_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_14, i5 0)
  %tmp_16 = trunc i64 %tmp_13 to i15
  %p_shl6_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_16, i2 0)
  %tmp_19 = sub i17 %p_shl5_cast, %p_shl6_cast
  br label %.preheader397

.preheader397:                                    ; preds = %._crit_edge, %.preheader397.preheader
  %row = phi i5 [ %row_1, %._crit_edge ], [ 0, %.preheader397.preheader ]
  %exitcond6 = icmp eq i5 %row, -4
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %row_1 = add i5 %row, 1
  br i1 %exitcond6, label %.preheader398.loopexit, label %1

; <label>:1                                       ; preds = %.preheader397
  %tmp_cast = zext i5 %row to i17
  %tmp_74 = add i17 %tmp_19, %tmp_cast
  %tmp_172_cast = zext i17 %tmp_74 to i64
  %conv_dot_V_addr = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_172_cast
  store i30 0, i30* %conv_dot_V_addr, align 4
  br label %.loopexit57

.loopexit57.loopexit:                             ; preds = %.preheader396
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %1
  %fil_col = phi i3 [ 0, %1 ], [ %fil_col_1, %.loopexit57.loopexit ]
  %fil_col_cast = zext i3 %fil_col to i5
  %exitcond10 = icmp eq i3 %fil_col, -3
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_1 = add i3 %fil_col, 1
  br i1 %exitcond10, label %._crit_edge, label %.preheader396.preheader

.preheader396.preheader:                          ; preds = %.loopexit57
  %tmp_17 = zext i3 %fil_col to i64
  %tmp_18 = add i5 %fil_col_cast, %col
  br label %.preheader396

.preheader396:                                    ; preds = %.preheader395.preheader_ifconv, %.preheader396.preheader
  %fil_row = phi i3 [ %fil_row_1, %.preheader395.preheader_ifconv ], [ 0, %.preheader396.preheader ]
  %fil_row_cast = zext i3 %fil_row to i5
  %exitcond14 = icmp eq i3 %fil_row, -3
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_1 = add i3 %fil_row, 1
  br i1 %exitcond14, label %.loopexit57.loopexit, label %.preheader395.preheader_ifconv

.preheader395.preheader_ifconv:                   ; preds = %.preheader396
  %tmp_26 = zext i3 %fil_row to i64
  %tmp_169 = add i64 %tmp_26, %tmp_3
  %tmp_170 = shl i64 %tmp_169, 2
  %tmp_171 = add i64 %tmp_170, %tmp_169
  %tmp_172 = add i64 %tmp_17, %tmp_171
  %tmp_173 = trunc i64 %tmp_172 to i14
  %tmp_174 = shl i64 %tmp_172, 1
  %tmp_200_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_173, i1 false)
  %conv_weight_addr = getelementptr [14400 x i32]* @conv_weight, i64 0, i64 %tmp_174
  %tmp_175 = or i15 %tmp_200_cast, 1
  %tmp_201_cast = zext i15 %tmp_175 to i64
  %conv_weight_addr_1 = getelementptr [14400 x i32]* @conv_weight, i64 0, i64 %tmp_201_cast
  %tmp_27 = add i5 %fil_row_cast, %row
  %tmp_176 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_18, i5 %tmp_27)
  %tmp_203_cast = zext i10 %tmp_176 to i25
  %tmp_177 = mul i25 10000, %tmp_203_cast
  %tmp_178 = add i25 %tmp, %tmp_177
  %tmp_205_cast = sext i25 %tmp_178 to i64
  %in_V_addr = getelementptr [10240000 x i30]* @in_V, i64 0, i64 %tmp_205_cast
  %conv_weight_load = load i32* %conv_weight_addr, align 4
  %tmp_62 = icmp eq i32 %conv_weight_load, 0
  %conv_weight_load_1 = load i32* %conv_weight_addr_1, align 4
  %tmp_179 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %conv_weight_load_1, i32 31)
  %tmp_63 = sub nsw i32 0, %conv_weight_load_1
  %sh_assign_s = select i1 %tmp_179, i32 %tmp_63, i32 %conv_weight_load_1
  %in_V_load = load i30* %in_V_addr, align 4
  %tmp_77 = sext i30 %in_V_load to i32
  %tmp_78 = ashr i32 %tmp_77, %sh_assign_s
  %tmp_86 = shl i32 %tmp_77, %sh_assign_s
  %tmp_180 = trunc i32 %tmp_78 to i30
  %tmp_181 = trunc i32 %tmp_86 to i30
  %tmp_182 = select i1 %tmp_179, i30 %tmp_180, i30 %tmp_181
  %conv_dot_V_load_3 = load i30* %conv_dot_V_addr, align 4
  %p_Val2_5 = add i30 %tmp_182, %conv_dot_V_load_3
  %p_Val2_7 = sub i30 %conv_dot_V_load_3, %tmp_182
  %storemerge = select i1 %tmp_62, i30 %p_Val2_5, i30 %p_Val2_7
  store i30 %storemerge, i30* %conv_dot_V_addr, align 4
  br label %.preheader396

._crit_edge:                                      ; preds = %.loopexit57
  %p_Val2_s = load i30* %conv_dot_V_addr, align 4
  %tmp_107 = trunc i30 %p_Val2_s to i29
  %p_Val2_2 = add i30 %p_Val2_s, %p_Val2_4
  %p_Val2_2_cast = add i29 %tmp_5, %tmp_107
  %tmp_118 = call i1 @_ssdm_op_BitSelect.i1.i30.i32(i30 %p_Val2_2, i32 29)
  %p_Val2_2_14 = select i1 %tmp_118, i29 0, i29 %p_Val2_2_cast
  %p_Val2_2_cast_15 = zext i29 %p_Val2_2_14 to i30
  store i30 %p_Val2_2_cast_15, i30* %conv_dot_V_addr, align 4
  br label %.preheader397

.preheader394.loopexit:                           ; preds = %.preheader393
  br label %.preheader394

.preheader394:                                    ; preds = %.preheader394.loopexit, %.preheader394.preheader
  %channel1 = phi i3 [ 0, %.preheader394.preheader ], [ %channel_2, %.preheader394.loopexit ]
  %max_value_load = load double* %max_value
  %exitcond2 = icmp eq i3 %channel1, -2
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_2 = add i3 %channel1, 1
  br i1 %exitcond2, label %.preheader390.preheader, label %.preheader393.preheader

.preheader390.preheader:                          ; preds = %.preheader394
  br label %.preheader390

.preheader393.preheader:                          ; preds = %.preheader394
  %p_shl1 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel1, i5 0)
  %p_shl5 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel1, i2 0)
  %tmp_s = sub i64 %p_shl1, %p_shl5
  %p_shl8 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %channel1, i4 0)
  %p_shl9 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel1, i1 false)
  %tmp_11 = sub i64 %p_shl8, %p_shl9
  br label %.preheader393

.preheader393.loopexit:                           ; preds = %.preheader392
  br label %.preheader393

.preheader393:                                    ; preds = %.preheader393.loopexit, %.preheader393.preheader
  %col2 = phi i4 [ 0, %.preheader393.preheader ], [ %col_2, %.preheader393.loopexit ]
  %exitcond5 = icmp eq i4 %col2, -2
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %col_2 = add i4 %col2, 1
  br i1 %exitcond5, label %.preheader394.loopexit, label %.preheader392.preheader

.preheader392.preheader:                          ; preds = %.preheader393
  %tmp_7 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %col2, i1 false)
  %tmp_8 = zext i5 %tmp_7 to i64
  %tmp_33 = add i64 %tmp_8, %tmp_s
  %tmp_38 = trunc i64 %tmp_33 to i12
  %p_shl14_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_38, i5 0)
  %tmp_42 = trunc i64 %tmp_33 to i15
  %p_shl15_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_42, i2 0)
  %tmp_45 = sub i17 %p_shl14_cast, %p_shl15_cast
  %tmp_9 = zext i4 %col2 to i64
  %tmp_50 = add i64 %tmp_9, %tmp_11
  %tmp_55 = trunc i64 %tmp_50 to i11
  %p_shl12_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_55, i4 0)
  %tmp_68 = trunc i64 %tmp_50 to i14
  %p_shl13_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_68, i1 false)
  %tmp_71 = sub i15 %p_shl12_cast, %p_shl13_cast
  br label %.preheader392

.preheader392:                                    ; preds = %_ifconv11, %.preheader392.preheader
  %row3 = phi i4 [ %row_3, %_ifconv11 ], [ 0, %.preheader392.preheader ]
  %exitcond9 = icmp eq i4 %row3, -2
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %row_3 = add i4 %row3, 1
  br i1 %exitcond9, label %.preheader393.loopexit, label %_ifconv10

_ifconv10:                                        ; preds = %.preheader392
  %tmp_10 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %row3, i1 false)
  %tmp_11_cast = zext i5 %tmp_10 to i17
  %tmp_98 = add i17 %tmp_11_cast, %tmp_45
  %tmp_179_cast = zext i17 %tmp_98 to i64
  %conv_dot_V_addr_1 = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_179_cast
  %conv_dot_V_load = load i30* %conv_dot_V_addr_1, align 4
  %tmp_12 = icmp eq i30 %conv_dot_V_load, 0
  %dp_s = sext i30 %conv_dot_V_load to i32
  %dp_1 = sitofp i32 %dp_s to double
  %res_V_16 = bitcast double %dp_1 to i64
  %exp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_16, i32 52, i32 62)
  %exp_V_15 = add i11 %exp_V, -20
  %p_Result_s = call i64 @llvm.part.set.i64.i11(i64 %res_V_16, i11 %exp_V_15, i32 52, i32 62) nounwind
  %dp = bitcast i64 %p_Result_s to double
  %v_assign_ph = select i1 %tmp_12, double 0.000000e+00, double %dp
  br label %to_double.exit525

to_double.exit525.loopexit:                       ; preds = %.preheader391
  br label %to_double.exit525

to_double.exit525:                                ; preds = %to_double.exit525.loopexit, %_ifconv10
  %v_assign = phi double [ %v_assign_ph, %_ifconv10 ], [ %op1_assign, %to_double.exit525.loopexit ]
  %fil_col4 = phi i2 [ 0, %_ifconv10 ], [ %fil_col_3, %to_double.exit525.loopexit ]
  %fil_col4_cast = zext i2 %fil_col4 to i5
  %exitcond19 = icmp eq i2 %fil_col4, -2
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_col_3 = add i2 %fil_col4, 1
  br i1 %exitcond19, label %_ifconv11, label %.preheader391.preheader

.preheader391.preheader:                          ; preds = %to_double.exit525
  %tmp_47 = add i5 %fil_col4_cast, %tmp_7
  %tmp_48 = zext i5 %tmp_47 to i64
  %tmp_155 = add i64 %tmp_s, %tmp_48
  %tmp_166 = trunc i64 %tmp_155 to i12
  %p_shl16_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_166, i5 0)
  %tmp_167 = trunc i64 %tmp_155 to i15
  %p_shl17_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_167, i2 0)
  %tmp_168 = sub i17 %p_shl16_cast, %p_shl17_cast
  br label %.preheader391

.preheader391:                                    ; preds = %_ifconv, %.preheader391.preheader
  %op1_assign = phi double [ %max_value_5, %_ifconv ], [ %v_assign, %.preheader391.preheader ]
  %fil_row5 = phi i2 [ %fil_row_3, %_ifconv ], [ 0, %.preheader391.preheader ]
  %fil_row5_cast = zext i2 %fil_row5 to i5
  %exitcond25 = icmp eq i2 %fil_row5, -2
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_row_3 = add i2 %fil_row5, 1
  br i1 %exitcond25, label %to_double.exit525.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader391
  %tmp_73 = add i5 %fil_row5_cast, %tmp_10
  %tmp_74_cast = zext i5 %tmp_73 to i17
  %tmp_191 = add i17 %tmp_168, %tmp_74_cast
  %tmp_215_cast = zext i17 %tmp_191 to i64
  %conv_dot_V_addr_4 = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_215_cast
  %conv_dot_V_load_4 = load i30* %conv_dot_V_addr_4, align 4
  %tmp_75 = icmp eq i30 %conv_dot_V_load_4, 0
  %dp_13 = sext i30 %conv_dot_V_load_4 to i32
  %dp_5 = sitofp i32 %dp_13 to double
  %res_V_17 = bitcast double %dp_5 to i64
  %exp_V_4 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_17, i32 52, i32 62)
  %exp_V_16 = add i11 -20, %exp_V_4
  %p_Result_1 = call i64 @llvm.part.set.i64.i11(i64 %res_V_17, i11 %exp_V_16, i32 52, i32 62) nounwind
  %dp_4 = bitcast i64 %p_Result_1 to double
  %p_0_i1 = select i1 %tmp_75, double 0.000000e+00, double %dp_4
  %p_0_i1_to_int = bitcast double %p_0_i1 to i64
  %tmp_94 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i1_to_int, i32 52, i32 62)
  %tmp_192 = trunc i64 %p_0_i1_to_int to i52
  %op1_assign_to_int = bitcast double %op1_assign to i64
  %tmp_102 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %op1_assign_to_int, i32 52, i32 62)
  %tmp_193 = trunc i64 %op1_assign_to_int to i52
  %notlhs = icmp ne i11 %tmp_94, -1
  %notrhs = icmp eq i52 %tmp_192, 0
  %tmp_112 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_102, -1
  %notrhs1 = icmp eq i52 %tmp_193, 0
  %tmp_113 = or i1 %notrhs1, %notlhs1
  %tmp_114 = and i1 %tmp_112, %tmp_113
  %tmp_115 = fcmp ogt double %p_0_i1, %op1_assign
  %tmp_116 = and i1 %tmp_114, %tmp_115
  %tmp_117 = xor i1 %tmp_116, true
  %brmerge1 = or i1 %tmp_75, %tmp_117
  %op1_assign_mux = select i1 %tmp_116, double 0.000000e+00, double %op1_assign
  %max_value_5 = select i1 %brmerge1, double %op1_assign_mux, double %dp_4
  br label %.preheader391

_ifconv11:                                        ; preds = %to_double.exit525
  %tmp_42_cast = zext i4 %row3 to i15
  %tmp_151 = add i15 %tmp_42_cast, %tmp_71
  %tmp_190_cast = zext i15 %tmp_151 to i64
  %pool_dot_V_addr_1 = getelementptr [9408 x i30]* @pool_dot_V, i64 0, i64 %tmp_190_cast
  %ireg_V = bitcast double %v_assign to i64
  %tmp_153 = trunc i64 %ireg_V to i63
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V, i32 63)
  %exp_tmp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V, i32 52, i32 62)
  %tmp_44 = zext i11 %exp_tmp_V to i12
  %tmp_162 = trunc i64 %ireg_V to i52
  %tmp_49 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_162)
  %p_Result_2 = zext i53 %tmp_49 to i54
  %man_V_1 = sub i54 0, %p_Result_2
  %man_V_2 = select i1 %isneg, i54 %man_V_1, i54 %p_Result_2
  %tmp_46 = icmp eq i63 %tmp_153, 0
  %F2 = sub i12 1075, %tmp_44
  %tmp_51 = icmp sgt i12 %F2, 20
  %tmp_52 = add i12 -20, %F2
  %tmp_53 = sub i12 20, %F2
  %sh_amt = select i1 %tmp_51, i12 %tmp_52, i12 %tmp_53
  %sh_amt_cast = sext i12 %sh_amt to i32
  %tmp_54 = icmp eq i12 %F2, 20
  %tmp_163 = trunc i54 %man_V_2 to i30
  %tmp_64 = icmp ult i12 %sh_amt, 54
  %tmp_65 = icmp ult i12 %sh_amt, 30
  %tmp_72 = zext i32 %sh_amt_cast to i54
  %tmp_76 = ashr i54 %man_V_2, %tmp_72
  %tmp_164 = trunc i54 %tmp_76 to i30
  %storemerge1 = select i1 %isneg, i30 -1, i30 0
  %tmp_88 = sext i30 %tmp_163 to i32
  %tmp_89 = shl i32 %tmp_88, %sh_amt_cast
  %tmp_165 = trunc i32 %tmp_89 to i30
  %sel_tmp = xor i1 %tmp_46, true
  %sel_tmp1 = and i1 %tmp_54, %sel_tmp
  %sel_tmp17_demorgan = or i1 %tmp_46, %tmp_54
  %sel_tmp2 = xor i1 %sel_tmp17_demorgan, true
  %sel_tmp3 = and i1 %tmp_51, %sel_tmp2
  %sel_tmp4 = xor i1 %tmp_64, true
  %sel_tmp5 = and i1 %sel_tmp3, %sel_tmp4
  %sel_tmp6 = and i1 %sel_tmp3, %tmp_64
  %sel_tmp32_demorgan = or i1 %sel_tmp17_demorgan, %tmp_51
  %sel_tmp7 = xor i1 %sel_tmp32_demorgan, true
  %sel_tmp8 = and i1 %tmp_65, %sel_tmp7
  %newSel = select i1 %sel_tmp8, i30 %tmp_165, i30 %tmp_164
  %or_cond = or i1 %sel_tmp8, %sel_tmp6
  %newSel1 = select i1 %sel_tmp5, i30 %storemerge1, i30 %tmp_163
  %or_cond1 = or i1 %sel_tmp5, %sel_tmp1
  %newSel2 = select i1 %or_cond, i30 %newSel, i30 %newSel1
  %or_cond2 = or i1 %or_cond, %or_cond1
  %newSel3 = select i1 %or_cond2, i30 %newSel2, i30 0
  store i30 %newSel3, i30* %pool_dot_V_addr_1, align 4
  store double %v_assign, double* %max_value
  br label %.preheader392

.preheader390.loopexit:                           ; preds = %.preheader389
  br label %.preheader390

.preheader390:                                    ; preds = %.preheader390.preheader, %.preheader390.loopexit
  %i = phi i5 [ %i_1, %.preheader390.loopexit ], [ 0, %.preheader390.preheader ]
  %exitcond4 = icmp eq i5 %i, -16
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_1 = add i5 %i, 1
  br i1 %exitcond4, label %.preheader385.preheader, label %.preheader389.preheader

.preheader385.preheader:                          ; preds = %.preheader390
  %max_value_6 = alloca double
  store double %max_value_load, double* %max_value_6
  br label %.preheader385

.preheader389.preheader:                          ; preds = %.preheader390
  %tmp_24 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 1, i5 %i)
  %conv_bias_V_addr_1 = getelementptr [48 x i30]* @conv_bias_V, i64 0, i64 %tmp_24
  %p_shl6 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %i, i5 0)
  %p_shl7 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %i, i2 0)
  %tmp_25 = sub i64 %p_shl6, %p_shl7
  %p_shl10 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56 1, i5 %i, i3 0)
  %p_shl11 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i, i1 false)
  %tmp_28 = sub i64 %p_shl10, %p_shl11
  %p_Val2_20 = load i30* %conv_bias_V_addr_1, align 4
  %tmp_31 = trunc i30 %p_Val2_20 to i29
  br label %.preheader389

.preheader389.loopexit:                           ; preds = %.preheader388
  br label %.preheader389

.preheader389:                                    ; preds = %.preheader389.loopexit, %.preheader389.preheader
  %col6 = phi i4 [ 0, %.preheader389.preheader ], [ %col_3, %.preheader389.loopexit ]
  %exitcond8 = icmp eq i4 %col6, -6
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %col_3 = add i4 %col6, 1
  br i1 %exitcond8, label %.preheader390.loopexit, label %.preheader388.preheader

.preheader388.preheader:                          ; preds = %.preheader389
  %tmp_6 = zext i4 %col6 to i64
  %tmp_91 = add i64 %tmp_25, %tmp_6
  %tmp_92 = trunc i64 %tmp_91 to i12
  %p_shl22_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_92, i5 0)
  %tmp_93 = trunc i64 %tmp_91 to i15
  %p_shl23_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_93, i2 0)
  %tmp_95 = sub i17 %p_shl22_cast, %p_shl23_cast
  br label %.preheader388

.preheader388:                                    ; preds = %._crit_edge404, %.preheader388.preheader
  %row7 = phi i4 [ %row_2, %._crit_edge404 ], [ 0, %.preheader388.preheader ]
  %exitcond13 = icmp eq i4 %row7, -6
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %row_2 = add i4 %row7, 1
  br i1 %exitcond13, label %.preheader389.loopexit, label %2

; <label>:2                                       ; preds = %.preheader388
  %tmp_25_cast = zext i4 %row7 to i17
  %tmp_144 = add i17 %tmp_95, %tmp_25_cast
  %tmp_189_cast = zext i17 %tmp_144 to i64
  %conv_dot_V_addr_2 = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_189_cast
  store i30 0, i30* %conv_dot_V_addr_2, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader387
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %fil_col8 = phi i3 [ 0, %2 ], [ %fil_col_2, %.loopexit.loopexit ]
  %fil_col8_cast = zext i3 %fil_col8 to i4
  %exitcond18 = icmp eq i3 %fil_col8, -3
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_2 = add i3 %fil_col8, 1
  br i1 %exitcond18, label %._crit_edge404, label %.preheader387.preheader

.preheader387.preheader:                          ; preds = %.loopexit
  %tmp_39 = zext i3 %fil_col8 to i64
  %tmp_40 = add i4 %col6, %fil_col8_cast
  %tmp_41 = zext i4 %tmp_40 to i64
  br label %.preheader387

.preheader387.loopexit:                           ; preds = %.preheader386
  br label %.preheader387

.preheader387:                                    ; preds = %.preheader387.loopexit, %.preheader387.preheader
  %fil_row9 = phi i3 [ 0, %.preheader387.preheader ], [ %fil_row_2, %.preheader387.loopexit ]
  %fil_row9_cast = zext i3 %fil_row9 to i4
  %exitcond24 = icmp eq i3 %fil_row9, -3
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_2 = add i3 %fil_row9, 1
  br i1 %exitcond24, label %.loopexit.loopexit, label %.preheader386.preheader

.preheader386.preheader:                          ; preds = %.preheader387
  %tmp_69 = zext i3 %fil_row9 to i64
  %tmp_70 = add i4 %fil_row9_cast, %row7
  %tmp_71_cast = zext i4 %tmp_70 to i15
  br label %.preheader386

.preheader386:                                    ; preds = %_ifconv35, %.preheader386.preheader
  %n = phi i3 [ %n_1, %_ifconv35 ], [ 0, %.preheader386.preheader ]
  %exitcond29 = icmp eq i3 %n, -2
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %n_1 = add i3 %n, 1
  br i1 %exitcond29, label %.preheader387.loopexit, label %_ifconv35

_ifconv35:                                        ; preds = %.preheader386
  %tmp_103 = zext i3 %n to i64
  %tmp_230 = add i64 %tmp_28, %tmp_103
  %tmp_233 = shl i64 %tmp_230, 2
  %tmp_234 = add i64 %tmp_230, %tmp_233
  %tmp_235 = add i64 %tmp_234, %tmp_69
  %tmp_236 = shl i64 %tmp_235, 2
  %tmp_237 = add i64 %tmp_235, %tmp_236
  %tmp_238 = add i64 %tmp_237, %tmp_39
  %tmp_239 = trunc i64 %tmp_238 to i14
  %tmp_240 = shl i64 %tmp_238, 1
  %tmp_251_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_239, i1 false)
  %conv_weight_addr_2 = getelementptr [14400 x i32]* @conv_weight, i64 0, i64 %tmp_240
  %tmp_241 = or i15 %tmp_251_cast, 1
  %tmp_252_cast = zext i15 %tmp_241 to i64
  %conv_weight_addr_3 = getelementptr [14400 x i32]* @conv_weight, i64 0, i64 %tmp_252_cast
  %p_shl18 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %n, i4 0)
  %p_shl19 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %n, i1 false)
  %tmp_242 = sub i64 %p_shl18, %p_shl19
  %tmp_243 = add i64 %tmp_242, %tmp_41
  %tmp_244 = trunc i64 %tmp_243 to i11
  %p_shl24_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_244, i4 0)
  %tmp_245 = trunc i64 %tmp_243 to i14
  %p_shl25_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_245, i1 false)
  %tmp_246 = sub i15 %p_shl24_cast, %p_shl25_cast
  %tmp_247 = add i15 %tmp_246, %tmp_71_cast
  %tmp_258_cast = zext i15 %tmp_247 to i64
  %pool_dot_V_addr_2 = getelementptr [9408 x i30]* @pool_dot_V, i64 0, i64 %tmp_258_cast
  %conv_weight_load_2 = load i32* %conv_weight_addr_2, align 4
  %tmp_104 = icmp eq i32 %conv_weight_load_2, 0
  %conv_weight_load_3 = load i32* %conv_weight_addr_3, align 4
  %isNeg_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %conv_weight_load_3, i32 31)
  %tmp_105 = sub nsw i32 0, %conv_weight_load_3
  %sh_assign_6 = select i1 %isNeg_2, i32 %tmp_105, i32 %conv_weight_load_3
  %pool_dot_V_load_1 = load i30* %pool_dot_V_addr_2, align 4
  %tmp_106 = sext i30 %pool_dot_V_load_1 to i32
  %tmp_127 = ashr i32 %tmp_106, %sh_assign_6
  %tmp_128 = shl i32 %tmp_106, %sh_assign_6
  %tmp_249 = trunc i32 %tmp_127 to i30
  %tmp_250 = trunc i32 %tmp_128 to i30
  %r_V = select i1 %isNeg_2, i30 %tmp_249, i30 %tmp_250
  %p_Val2_31 = load i30* %conv_dot_V_addr_2, align 4
  %p_Val2_12 = add i30 %p_Val2_31, %r_V
  %p_Val2_13 = sub i30 %p_Val2_31, %r_V
  %storemerge7 = select i1 %tmp_104, i30 %p_Val2_12, i30 %p_Val2_13
  store i30 %storemerge7, i30* %conv_dot_V_addr_2, align 4
  br label %.preheader386

._crit_edge404:                                   ; preds = %.loopexit
  %p_Val2_19 = load i30* %conv_dot_V_addr_2, align 4
  %tmp_189 = trunc i30 %p_Val2_19 to i29
  %p_Val2_6 = add i30 %p_Val2_19, %p_Val2_20
  %p_Val2_6_cast = add i29 %tmp_31, %tmp_189
  %tmp_190 = call i1 @_ssdm_op_BitSelect.i1.i30.i32(i30 %p_Val2_6, i32 29)
  %p_Val2_6_27 = select i1 %tmp_190, i29 0, i29 %p_Val2_6_cast
  %p_Val2_6_cast_28 = zext i29 %p_Val2_6_27 to i30
  store i30 %p_Val2_6_cast_28, i30* %conv_dot_V_addr_2, align 4
  br label %.preheader388

.preheader385.loopexit:                           ; preds = %.preheader384
  br label %.preheader385

.preheader385:                                    ; preds = %.preheader385.loopexit, %.preheader385.preheader
  %i1 = phi i5 [ 0, %.preheader385.preheader ], [ %i_2, %.preheader385.loopexit ]
  %max_value_6_load = load double* %max_value_6
  %exitcond7 = icmp eq i5 %i1, -16
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_2 = add i5 %i1, 1
  br i1 %exitcond7, label %.preheader381.preheader, label %.preheader384.preheader

.preheader381.preheader:                          ; preds = %.preheader385
  br label %.preheader381

.preheader384.preheader:                          ; preds = %.preheader385
  %p_shl12 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %i1, i5 0)
  %p_shl13 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %i1, i2 0)
  %tmp_87 = sub i64 %p_shl12, %p_shl13
  %p_shl14 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i1, i4 0)
  %p_shl15 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i1, i1 false)
  %tmp_90 = sub i64 %p_shl14, %p_shl15
  br label %.preheader384

.preheader384.loopexit:                           ; preds = %.preheader383
  br label %.preheader384

.preheader384:                                    ; preds = %.preheader384.loopexit, %.preheader384.preheader
  %j = phi i3 [ 0, %.preheader384.preheader ], [ %j_1, %.preheader384.loopexit ]
  %exitcond12 = icmp eq i3 %j, -3
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_1 = add i3 %j, 1
  br i1 %exitcond12, label %.preheader385.loopexit, label %.preheader383.preheader

.preheader383.preheader:                          ; preds = %.preheader384
  %tmp_20 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j, i1 false)
  %tmp_21 = zext i4 %tmp_20 to i64
  %tmp_125 = add i64 %tmp_21, %tmp_87
  %tmp_131 = trunc i64 %tmp_125 to i12
  %p_shl36_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_131, i5 0)
  %tmp_134 = trunc i64 %tmp_125 to i15
  %p_shl37_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_134, i2 0)
  %tmp_137 = sub i17 %p_shl36_cast, %p_shl37_cast
  %tmp_22 = zext i3 %j to i64
  %tmp_138 = add i64 %tmp_22, %tmp_90
  %tmp_139 = trunc i64 %tmp_138 to i11
  %p_shl34_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_139, i4 0)
  %tmp_140 = trunc i64 %tmp_138 to i14
  %p_shl35_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_140, i1 false)
  %tmp_142 = sub i15 %p_shl34_cast, %p_shl35_cast
  br label %.preheader383

.preheader383:                                    ; preds = %_ifconv42, %.preheader383.preheader
  %k = phi i3 [ %k_2, %_ifconv42 ], [ 0, %.preheader383.preheader ]
  %exitcond17 = icmp eq i3 %k, -3
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_2 = add i3 %k, 1
  br i1 %exitcond17, label %.preheader384.loopexit, label %_ifconv40

_ifconv40:                                        ; preds = %.preheader383
  %tmp_32 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %k, i1 false)
  %tmp_33_cast = zext i4 %tmp_32 to i17
  %tmp_188 = add i17 %tmp_33_cast, %tmp_137
  %tmp_214_cast = zext i17 %tmp_188 to i64
  %conv_dot_V_addr_3 = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_214_cast
  %conv_dot_V_load_2 = load i30* %conv_dot_V_addr_3, align 4
  %tmp_34 = icmp eq i30 %conv_dot_V_load_2, 0
  %dp_12 = sext i30 %conv_dot_V_load_2 to i32
  %dp_3 = sitofp i32 %dp_12 to double
  %res_V = bitcast double %dp_3 to i64
  %exp_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V, i32 52, i32 62)
  %exp_V_17 = add i11 %exp_V_2, -20
  %p_Result_3 = call i64 @llvm.part.set.i64.i11(i64 %res_V, i11 %exp_V_17, i32 52, i32 62) nounwind
  %dp_2 = bitcast i64 %p_Result_3 to double
  %v_assign_1_ph = select i1 %tmp_34, double 0.000000e+00, double %dp_2
  br label %to_double.exit507

to_double.exit507.loopexit:                       ; preds = %.preheader382
  br label %to_double.exit507

to_double.exit507:                                ; preds = %to_double.exit507.loopexit, %_ifconv40
  %v_assign_1 = phi double [ %v_assign_1_ph, %_ifconv40 ], [ %op1_assign_1, %to_double.exit507.loopexit ]
  %l = phi i2 [ 0, %_ifconv40 ], [ %l_1, %to_double.exit507.loopexit ]
  %l_cast = zext i2 %l to i4
  %exitcond27 = icmp eq i2 %l, -2
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %l_1 = add i2 %l, 1
  br i1 %exitcond27, label %_ifconv42, label %.preheader382.preheader

.preheader382.preheader:                          ; preds = %to_double.exit507
  %tmp_100 = add i4 %l_cast, %tmp_20
  %tmp_101 = zext i4 %tmp_100 to i64
  %tmp_209 = add i64 %tmp_87, %tmp_101
  %tmp_214 = trunc i64 %tmp_209 to i12
  %p_shl38_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_214, i5 0)
  %tmp_215 = trunc i64 %tmp_209 to i15
  %p_shl39_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_215, i2 0)
  %tmp_216 = sub i17 %p_shl38_cast, %p_shl39_cast
  br label %.preheader382

.preheader382:                                    ; preds = %_ifconv37, %.preheader382.preheader
  %op1_assign_1 = phi double [ %max_value_s, %_ifconv37 ], [ %v_assign_1, %.preheader382.preheader ]
  %m = phi i2 [ %m_1, %_ifconv37 ], [ 0, %.preheader382.preheader ]
  %m_cast = zext i2 %m to i4
  %exitcond28 = icmp eq i2 %m, -2
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %m_1 = add i2 %m, 1
  br i1 %exitcond28, label %to_double.exit507.loopexit, label %_ifconv37

_ifconv37:                                        ; preds = %.preheader382
  %tmp_124 = add i4 %m_cast, %tmp_32
  %tmp_131_cast = zext i4 %tmp_124 to i17
  %tmp_227 = add i17 %tmp_216, %tmp_131_cast
  %tmp_242_cast = zext i17 %tmp_227 to i64
  %conv_dot_V_addr_5 = getelementptr [37632 x i30]* @conv_dot_V, i64 0, i64 %tmp_242_cast
  %conv_dot_V_load_6 = load i30* %conv_dot_V_addr_5, align 4
  %tmp_132 = icmp eq i30 %conv_dot_V_load_6, 0
  %dp_14 = sext i30 %conv_dot_V_load_6 to i32
  %dp_6 = sitofp i32 %dp_14 to double
  %res_V_18 = bitcast double %dp_6 to i64
  %exp_V_7 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_18, i32 52, i32 62)
  %exp_V_18 = add i11 -20, %exp_V_7
  %p_Result_4 = call i64 @llvm.part.set.i64.i11(i64 %res_V_18, i11 %exp_V_18, i32 52, i32 62) nounwind
  %dp_7 = bitcast i64 %p_Result_4 to double
  %p_0_i2 = select i1 %tmp_132, double 0.000000e+00, double %dp_7
  %p_0_i2_to_int = bitcast double %p_0_i2 to i64
  %tmp_141 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i2_to_int, i32 52, i32 62)
  %tmp_231 = trunc i64 %p_0_i2_to_int to i52
  %op1_assign_1_to_int = bitcast double %op1_assign_1 to i64
  %tmp_143 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %op1_assign_1_to_int, i32 52, i32 62)
  %tmp_232 = trunc i64 %op1_assign_1_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_141, -1
  %notrhs2 = icmp eq i52 %tmp_231, 0
  %tmp_145 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_143, -1
  %notrhs3 = icmp eq i52 %tmp_232, 0
  %tmp_146 = or i1 %notrhs3, %notlhs3
  %tmp_147 = and i1 %tmp_145, %tmp_146
  %tmp_148 = fcmp ogt double %p_0_i2, %op1_assign_1
  %tmp_149 = and i1 %tmp_147, %tmp_148
  %tmp_150 = xor i1 %tmp_149, true
  %brmerge2 = or i1 %tmp_132, %tmp_150
  %op1_assign_1_mux = select i1 %tmp_149, double 0.000000e+00, double %op1_assign_1
  %max_value_s = select i1 %brmerge2, double %op1_assign_1_mux, double %dp_7
  br label %.preheader382

_ifconv42:                                        ; preds = %to_double.exit507
  %tmp_95_cast = zext i3 %k to i15
  %tmp_207 = add i15 %tmp_95_cast, %tmp_142
  %tmp_227_cast = zext i15 %tmp_207 to i64
  %pool_dot_V_addr_3 = getelementptr [9408 x i30]* @pool_dot_V, i64 0, i64 %tmp_227_cast
  %ireg_V_1 = bitcast double %v_assign_1 to i64
  %tmp_208 = trunc i64 %ireg_V_1 to i63
  %isneg_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V_1, i32 63)
  %exp_tmp_V_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V_1, i32 52, i32 62)
  %tmp_96 = zext i11 %exp_tmp_V_1 to i12
  %tmp_210 = trunc i64 %ireg_V_1 to i52
  %tmp_97 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_210)
  %p_Result_5 = zext i53 %tmp_97 to i54
  %man_V_4 = sub i54 0, %p_Result_5
  %man_V_5 = select i1 %isneg_1, i54 %man_V_4, i54 %p_Result_5
  %tmp_99 = icmp eq i63 %tmp_208, 0
  %F2_1 = sub i12 1075, %tmp_96
  %tmp_119 = icmp sgt i12 %F2_1, 20
  %tmp_120 = add i12 -20, %F2_1
  %tmp_121 = sub i12 20, %F2_1
  %sh_amt_1 = select i1 %tmp_119, i12 %tmp_120, i12 %tmp_121
  %sh_amt_1_cast = sext i12 %sh_amt_1 to i32
  %tmp_122 = icmp eq i12 %F2_1, 20
  %tmp_211 = trunc i54 %man_V_5 to i30
  %tmp_126 = icmp ult i12 %sh_amt_1, 54
  %tmp_129 = icmp ult i12 %sh_amt_1, 30
  %tmp_130 = zext i32 %sh_amt_1_cast to i54
  %tmp_133 = ashr i54 %man_V_5, %tmp_130
  %tmp_212 = trunc i54 %tmp_133 to i30
  %storemerge5 = select i1 %isneg_1, i30 -1, i30 0
  %tmp_135 = sext i30 %tmp_211 to i32
  %tmp_136 = shl i32 %tmp_135, %sh_amt_1_cast
  %tmp_213 = trunc i32 %tmp_136 to i30
  %sel_tmp9 = xor i1 %tmp_99, true
  %sel_tmp10 = and i1 %tmp_122, %sel_tmp9
  %sel_tmp49_demorgan = or i1 %tmp_99, %tmp_122
  %sel_tmp11 = xor i1 %sel_tmp49_demorgan, true
  %sel_tmp12 = and i1 %tmp_119, %sel_tmp11
  %sel_tmp13 = xor i1 %tmp_126, true
  %sel_tmp14 = and i1 %sel_tmp12, %sel_tmp13
  %sel_tmp15 = and i1 %sel_tmp12, %tmp_126
  %sel_tmp64_demorgan = or i1 %sel_tmp49_demorgan, %tmp_119
  %sel_tmp16 = xor i1 %sel_tmp64_demorgan, true
  %sel_tmp17 = and i1 %tmp_129, %sel_tmp16
  %newSel4 = select i1 %sel_tmp17, i30 %tmp_213, i30 %tmp_212
  %or_cond3 = or i1 %sel_tmp17, %sel_tmp15
  %newSel5 = select i1 %sel_tmp14, i30 %storemerge5, i30 %tmp_211
  %or_cond4 = or i1 %sel_tmp14, %sel_tmp10
  %newSel6 = select i1 %or_cond3, i30 %newSel4, i30 %newSel5
  %or_cond5 = or i1 %or_cond3, %or_cond4
  %newSel7 = select i1 %or_cond5, i30 %newSel6, i30 0
  store i30 %newSel7, i30* %pool_dot_V_addr_3, align 4
  store double %v_assign_1, double* %max_value_6
  br label %.preheader383

.preheader381.loopexit:                           ; preds = %.preheader380
  br label %.preheader381

.preheader381:                                    ; preds = %.preheader381.preheader, %.preheader381.loopexit
  %i2 = phi i5 [ %i_3, %.preheader381.loopexit ], [ 0, %.preheader381.preheader ]
  %phi_mul = phi i9 [ %next_mul, %.preheader381.loopexit ], [ 0, %.preheader381.preheader ]
  %next_mul = add i9 %phi_mul, 25
  %exitcond11 = icmp eq i5 %i2, -16
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_3 = add i5 %i2, 1
  br i1 %exitcond11, label %.preheader378.preheader, label %.preheader380.preheader

.preheader378.preheader:                          ; preds = %.preheader381
  br label %.preheader378

.preheader380.preheader:                          ; preds = %.preheader381
  %p_shl16 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i2, i4 0)
  %p_shl17 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i2, i1 false)
  %tmp_123 = sub i64 %p_shl16, %p_shl17
  br label %.preheader380

.preheader380.loopexit:                           ; preds = %.preheader379
  br label %.preheader380

.preheader380:                                    ; preds = %.preheader380.loopexit, %.preheader380.preheader
  %j1 = phi i3 [ 0, %.preheader380.preheader ], [ %j_2, %.preheader380.loopexit ]
  %j1_cast = zext i3 %j1 to i5
  %exitcond16 = icmp eq i3 %j1, -3
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_2 = add i3 %j1, 1
  br i1 %exitcond16, label %.preheader381.loopexit, label %.preheader379.preheader

.preheader379.preheader:                          ; preds = %.preheader380
  %p_shl = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j1, i2 0)
  %tmp_29 = zext i3 %j1 to i64
  %tmp_184 = add i64 %tmp_29, %tmp_123
  %tmp_185 = trunc i64 %tmp_184 to i11
  %p_shl42_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_185, i4 0)
  %tmp_186 = trunc i64 %tmp_184 to i14
  %p_shl43_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_186, i1 false)
  %tmp_187 = sub i15 %p_shl42_cast, %p_shl43_cast
  %tmp91 = add i5 %p_shl, %j1_cast
  %tmp91_cast = zext i5 %tmp91 to i9
  br label %.preheader379

.preheader379:                                    ; preds = %3, %.preheader379.preheader
  %k1 = phi i3 [ %k_1, %3 ], [ 0, %.preheader379.preheader ]
  %k1_cast = zext i3 %k1 to i9
  %exitcond23 = icmp eq i3 %k1, -3
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_1 = add i3 %k1, 1
  br i1 %exitcond23, label %.preheader380.loopexit, label %3

; <label>:3                                       ; preds = %.preheader379
  %tmp92 = add i9 %k1_cast, %phi_mul
  %tmp_66 = add i9 %tmp91_cast, %tmp92
  %tmp_67 = zext i9 %tmp_66 to i64
  %tmp_68_cast = zext i3 %k1 to i15
  %tmp_204 = add i15 %tmp_187, %tmp_68_cast
  %tmp_226_cast = zext i15 %tmp_204 to i64
  %pool_dot_V_addr = getelementptr [9408 x i30]* @pool_dot_V, i64 0, i64 %tmp_226_cast
  %pool_dot_V_load = load i30* %pool_dot_V_addr, align 4
  %fc_in_V_addr = getelementptr [400 x i30]* @fc_in_V, i64 0, i64 %tmp_67
  store i30 %pool_dot_V_load, i30* %fc_in_V_addr, align 4
  br label %.preheader379

.preheader378:                                    ; preds = %.preheader378.preheader, %._crit_edge406
  %col4 = phi i7 [ %col_4, %._crit_edge406 ], [ 0, %.preheader378.preheader ]
  %exitcond15 = icmp eq i7 %col4, -8
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %col_4 = add i7 %col4, 1
  br i1 %exitcond15, label %.preheader377.preheader, label %4

.preheader377.preheader:                          ; preds = %.preheader378
  br label %.preheader377

; <label>:4                                       ; preds = %.preheader378
  %tmp_15 = zext i7 %col4 to i64
  %tmp_15_cast1 = zext i7 %col4 to i19
  %tmp_15_cast = zext i7 %col4 to i8
  %tmp_183 = add i8 %tmp_15_cast, 120
  %tmp_209_cast = zext i8 %tmp_183 to i64
  %fc_bias_V_addr = getelementptr [480 x i30]* @fc_bias_V, i64 0, i64 %tmp_209_cast
  %fc_dot_V_addr = getelementptr [3 x [120 x i30]]* @fc_dot_V, i64 0, i64 1, i64 %tmp_15
  br label %5

; <label>:5                                       ; preds = %_ifconv67, %4
  %p_Val2_21 = phi i30 [ 0, %4 ], [ %storemerge3, %_ifconv67 ]
  %row2 = phi i9 [ 0, %4 ], [ %row_4, %_ifconv67 ]
  %phi_mul1 = phi i18 [ 0, %4 ], [ %next_mul1, %_ifconv67 ]
  %phi_mul44_cast = zext i18 %phi_mul1 to i19
  store i30 %p_Val2_21, i30* %fc_dot_V_addr, align 4
  %exitcond22 = icmp eq i9 %row2, -112
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 400, i64 400, i64 400) nounwind
  %row_4 = add i9 %row2, 1
  br i1 %exitcond22, label %._crit_edge406, label %_ifconv67

_ifconv67:                                        ; preds = %5
  %tmp_35 = zext i9 %row2 to i64
  %next_mul1 = add i18 400, %phi_mul1
  %tmp_198 = add i19 160000, %phi_mul44_cast
  %tmp_199 = add i19 %tmp_15_cast1, %tmp_198
  %tmp_200 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_199, i1 false)
  %tmp_201 = zext i20 %tmp_200 to i64
  %fc_weight_addr = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_201
  %tmp_202 = or i20 %tmp_200, 1
  %tmp_203 = call i22 @_ssdm_op_BitConcatenate.i22.i2.i20(i2 0, i20 %tmp_202)
  %tmp_222_cast = zext i22 %tmp_203 to i64
  %fc_weight_addr_1 = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_222_cast
  %fc_weight_load = load i32* %fc_weight_addr, align 4
  %tmp_36 = icmp eq i32 %fc_weight_load, 0
  %fc_in_V_addr_1 = getelementptr [400 x i30]* @fc_in_V, i64 0, i64 %tmp_35
  %fc_weight_load_1 = load i32* %fc_weight_addr_1, align 4
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %fc_weight_load_1, i32 31)
  %tmp_37 = sub nsw i32 0, %fc_weight_load_1
  %sh_assign_1 = select i1 %isNeg, i32 %tmp_37, i32 %fc_weight_load_1
  %fc_in_V_load = load i30* %fc_in_V_addr_1, align 4
  %tmp_43 = sext i30 %fc_in_V_load to i32
  %tmp_60 = ashr i32 %tmp_43, %sh_assign_1
  %tmp_61 = shl i32 %tmp_43, %sh_assign_1
  %tmp_205 = trunc i32 %tmp_60 to i30
  %tmp_206 = trunc i32 %tmp_61 to i30
  %r_V_1 = select i1 %isNeg, i30 %tmp_205, i30 %tmp_206
  %p_Val2_8 = add i30 %r_V_1, %p_Val2_21
  %p_Val2_9 = sub i30 %p_Val2_21, %r_V_1
  %storemerge3 = select i1 %tmp_36, i30 %p_Val2_8, i30 %p_Val2_9
  br label %5

._crit_edge406:                                   ; preds = %5
  %p_Val2_23 = load i30* %fc_bias_V_addr, align 4
  %tmp_195 = trunc i30 %p_Val2_23 to i29
  %tmp_196 = trunc i30 %p_Val2_21 to i29
  %p_Val2_s_39 = add i30 %p_Val2_21, %p_Val2_23
  %p_Val2_cast = add i29 %tmp_195, %tmp_196
  %tmp_197 = call i1 @_ssdm_op_BitSelect.i1.i30.i32(i30 %p_Val2_s_39, i32 29)
  %p_Val2_s_40 = select i1 %tmp_197, i29 0, i29 %p_Val2_cast
  %p_Val2_cast_41 = zext i29 %p_Val2_s_40 to i30
  store i30 %p_Val2_cast_41, i30* %fc_dot_V_addr, align 4
  br label %.preheader378

.preheader377:                                    ; preds = %.preheader377.preheader, %._crit_edge407
  %i4 = phi i7 [ %i_4, %._crit_edge407 ], [ 0, %.preheader377.preheader ]
  %exitcond20 = icmp eq i7 %i4, -44
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %i_4 = add i7 %i4, 1
  br i1 %exitcond20, label %.preheader.preheader, label %6

.preheader.preheader:                             ; preds = %.preheader377
  br label %.preheader

; <label>:6                                       ; preds = %.preheader377
  %tmp_23 = zext i7 %i4 to i64
  %tmp_23_cast1 = zext i7 %i4 to i19
  %tmp_23_cast = zext i7 %i4 to i9
  %tmp_194 = add i9 %tmp_23_cast, 240
  %tmp_216_cast = zext i9 %tmp_194 to i64
  %fc_bias_V_addr_1 = getelementptr [480 x i30]* @fc_bias_V, i64 0, i64 %tmp_216_cast
  %fc_dot_V_addr_1 = getelementptr [3 x [120 x i30]]* @fc_dot_V, i64 0, i64 2, i64 %tmp_23
  br label %7

; <label>:7                                       ; preds = %_ifconv69, %6
  %p_Val2_26 = phi i30 [ 0, %6 ], [ %storemerge4, %_ifconv69 ]
  %j3 = phi i7 [ 0, %6 ], [ %j_3, %_ifconv69 ]
  %phi_mul2 = phi i16 [ 0, %6 ], [ %next_mul2, %_ifconv69 ]
  %phi_mul46_cast = zext i16 %phi_mul2 to i19
  store i30 %p_Val2_26, i30* %fc_dot_V_addr_1, align 4
  %exitcond26 = icmp eq i7 %j3, -8
  %empty_43 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %j_3 = add i7 %j3, 1
  br i1 %exitcond26, label %._crit_edge407, label %_ifconv69

_ifconv69:                                        ; preds = %7
  %tmp_56 = zext i7 %j3 to i64
  %next_mul2 = add i16 400, %phi_mul2
  %tmp_221 = add i19 -204288, %phi_mul46_cast
  %tmp_222 = add i19 %tmp_23_cast1, %tmp_221
  %tmp_223 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_222, i1 false)
  %tmp_224 = zext i20 %tmp_223 to i64
  %fc_weight_addr_2 = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_224
  %tmp_225 = or i20 %tmp_223, 1
  %tmp_226 = call i22 @_ssdm_op_BitConcatenate.i22.i2.i20(i2 0, i20 %tmp_225)
  %tmp_238_cast = zext i22 %tmp_226 to i64
  %fc_weight_addr_3 = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_238_cast
  %fc_weight_load_2 = load i32* %fc_weight_addr_2, align 4
  %tmp_57 = icmp eq i32 %fc_weight_load_2, 0
  %fc_dot_V_addr_3 = getelementptr [3 x [120 x i30]]* @fc_dot_V, i64 0, i64 1, i64 %tmp_56
  %fc_weight_load_3 = load i32* %fc_weight_addr_3, align 4
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %fc_weight_load_3, i32 31)
  %tmp_58 = sub nsw i32 0, %fc_weight_load_3
  %sh_assign_3 = select i1 %isNeg_1, i32 %tmp_58, i32 %fc_weight_load_3
  %fc_dot_V_load = load i30* %fc_dot_V_addr_3, align 4
  %tmp_59 = sext i30 %fc_dot_V_load to i32
  %tmp_84 = ashr i32 %tmp_59, %sh_assign_3
  %tmp_85 = shl i32 %tmp_59, %sh_assign_3
  %tmp_228 = trunc i32 %tmp_84 to i30
  %tmp_229 = trunc i32 %tmp_85 to i30
  %r_V_2 = select i1 %isNeg_1, i30 %tmp_228, i30 %tmp_229
  %p_Val2_10 = add i30 %r_V_2, %p_Val2_26
  %p_Val2_11 = sub i30 %p_Val2_26, %r_V_2
  %storemerge4 = select i1 %tmp_57, i30 %p_Val2_10, i30 %p_Val2_11
  br label %7

._crit_edge407:                                   ; preds = %7
  %p_Val2_27 = load i30* %fc_bias_V_addr_1, align 4
  %tmp_218 = trunc i30 %p_Val2_27 to i29
  %tmp_219 = trunc i30 %p_Val2_26 to i29
  %p_Val2_1 = add i30 %p_Val2_26, %p_Val2_27
  %p_Val2_1_cast = add i29 %tmp_218, %tmp_219
  %tmp_220 = call i1 @_ssdm_op_BitSelect.i1.i30.i32(i30 %p_Val2_1, i32 29)
  %p_Val2_1_44 = select i1 %tmp_220, i29 0, i29 %p_Val2_1_cast
  %p_Val2_1_cast_45 = zext i29 %p_Val2_1_44 to i30
  store i30 %p_Val2_1_cast_45, i30* %fc_dot_V_addr_1, align 4
  br label %.preheader377

.preheader:                                       ; preds = %.preheader.preheader, %_ifconv73
  %d_assign_1 = phi double [ %max_value_4, %_ifconv73 ], [ %max_value_6_load, %.preheader.preheader ]
  %max_index = phi i32 [ %max_index_2, %_ifconv73 ], [ undef, %.preheader.preheader ]
  %max_index_1 = phi i4 [ %i_5, %_ifconv73 ], [ 0, %.preheader.preheader ]
  %max_index_1_cast = zext i4 %max_index_1 to i32
  %exitcond21 = icmp eq i4 %max_index_1, -6
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %i_5 = add i4 %max_index_1, 1
  br i1 %exitcond21, label %10, label %8

; <label>:8                                       ; preds = %.preheader
  %tmp_30 = zext i4 %max_index_1 to i64
  %tmp_30_cast = zext i4 %max_index_1 to i9
  %tmp_217 = add i9 %tmp_30_cast, -152
  %tmp_232_cast = zext i9 %tmp_217 to i64
  %fc_bias_V_addr_2 = getelementptr [480 x i30]* @fc_bias_V, i64 0, i64 %tmp_232_cast
  %fc_dot_V_addr_2 = getelementptr [3 x [120 x i30]]* @fc_dot_V, i64 1, i64 0, i64 %tmp_30
  br label %9

; <label>:9                                       ; preds = %_ifconv71, %8
  %p_Val2_29 = phi i30 [ 0, %8 ], [ %storemerge8, %_ifconv71 ]
  %j4 = phi i7 [ 0, %8 ], [ %j_4, %_ifconv71 ]
  %phi_mul3 = phi i16 [ 0, %8 ], [ %next_mul3, %_ifconv71 ]
  %phi_mul48_cast_cast = zext i16 %phi_mul3 to i17
  store i30 %p_Val2_29, i30* %fc_dot_V_addr_2, align 4
  %exitcond = icmp eq i7 %j4, -44
  %empty_47 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %j_4 = add i7 %j4, 1
  br i1 %exitcond, label %_ifconv73, label %_ifconv71

_ifconv71:                                        ; preds = %9
  %tmp_80 = zext i7 %j4 to i64
  %next_mul3 = add i16 400, %phi_mul3
  %tmp_248 = add i17 -44288, %phi_mul48_cast_cast
  %tmp_254 = call i13 @_ssdm_op_PartSelect.i13.i17.i32.i32(i17 %tmp_248, i32 4, i32 16)
  %tmp_255 = call i18 @_ssdm_op_BitConcatenate.i18.i13.i4.i1(i13 %tmp_254, i4 %max_index_1, i1 false)
  %tmp_256 = sext i18 %tmp_255 to i20
  %tmp_251 = zext i20 %tmp_256 to i64
  %fc_weight_addr_4 = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_251
  %tmp_257 = or i20 %tmp_256, 1
  %tmp_258 = call i22 @_ssdm_op_BitConcatenate.i22.i2.i20(i2 0, i20 %tmp_257)
  %tmp_268_cast = zext i22 %tmp_258 to i64
  %fc_weight_addr_5 = getelementptr [1280000 x i32]* @fc_weight, i64 0, i64 %tmp_268_cast
  %fc_weight_load_4 = load i32* %fc_weight_addr_4, align 4
  %tmp_81 = icmp eq i32 %fc_weight_load_4, 0
  %fc_dot_V_addr_4 = getelementptr [3 x [120 x i30]]* @fc_dot_V, i64 0, i64 2, i64 %tmp_80
  %fc_weight_load_5 = load i32* %fc_weight_addr_5, align 4
  %isNeg_3 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %fc_weight_load_5, i32 31)
  %tmp_82 = sub nsw i32 0, %fc_weight_load_5
  %sh_assign_5 = select i1 %isNeg_3, i32 %tmp_82, i32 %fc_weight_load_5
  %fc_dot_V_load_2 = load i30* %fc_dot_V_addr_4, align 4
  %tmp_83 = sext i30 %fc_dot_V_load_2 to i32
  %tmp_110 = ashr i32 %tmp_83, %sh_assign_5
  %tmp_111 = shl i32 %tmp_83, %sh_assign_5
  %tmp_260 = trunc i32 %tmp_110 to i30
  %tmp_261 = trunc i32 %tmp_111 to i30
  %r_V_3 = select i1 %isNeg_3, i30 %tmp_260, i30 %tmp_261
  %p_Val2_16 = add i30 %r_V_3, %p_Val2_29
  %p_Val2_18 = sub i30 %p_Val2_29, %r_V_3
  %storemerge8 = select i1 %tmp_81, i30 %p_Val2_16, i30 %p_Val2_18
  br label %9

_ifconv73:                                        ; preds = %9
  %p_Val2_33 = load i30* %fc_bias_V_addr_2, align 4
  %p_Val2_15 = add i30 %p_Val2_29, %p_Val2_33
  store i30 %p_Val2_15, i30* %fc_dot_V_addr_2, align 4
  %tmp_79 = icmp eq i4 %max_index_1, 0
  %fc_dot_V_load_1 = load i30* getelementptr inbounds ([3 x [120 x i30]]* @fc_dot_V, i64 1, i64 0, i64 0), align 4
  %tmp_108 = icmp eq i30 %fc_dot_V_load_1, 0
  %tmp_109 = icmp eq i30 %p_Val2_15, 0
  %dp_15 = sext i30 %fc_dot_V_load_1 to i32
  %dp_8 = sitofp i32 %dp_15 to double
  %res_V_19 = bitcast double %dp_8 to i64
  %exp_V_8 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_19, i32 52, i32 62)
  %exp_V_19 = add i11 -20, %exp_V_8
  %p_Result_6 = call i64 @llvm.part.set.i64.i11(i64 %res_V_19, i11 %exp_V_19, i32 52, i32 62) nounwind
  %dp_9 = bitcast i64 %p_Result_6 to double
  %dp_16 = sext i30 %p_Val2_15 to i32
  %dp_10 = sitofp i32 %dp_16 to double
  %res_V_20 = bitcast double %dp_10 to i64
  %exp_V_12 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_20, i32 52, i32 62)
  %exp_V_20 = add i11 -20, %exp_V_12
  %p_Result_7 = call i64 @llvm.part.set.i64.i11(i64 %res_V_20, i11 %exp_V_20, i32 52, i32 62) nounwind
  %dp_11 = bitcast i64 %p_Result_7 to double
  %p_0_i = select i1 %tmp_109, double 0.000000e+00, double %dp_11
  %p_0_i_to_int = bitcast double %p_0_i to i64
  %tmp_152 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i_to_int, i32 52, i32 62)
  %tmp_252 = trunc i64 %p_0_i_to_int to i52
  %d_assign_1_to_int = bitcast double %d_assign_1 to i64
  %tmp_154 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %d_assign_1_to_int, i32 52, i32 62)
  %tmp_253 = trunc i64 %d_assign_1_to_int to i52
  %notlhs4 = icmp ne i11 %tmp_152, -1
  %notrhs4 = icmp eq i52 %tmp_252, 0
  %tmp_156 = or i1 %notrhs4, %notlhs4
  %notlhs5 = icmp ne i11 %tmp_154, -1
  %notrhs5 = icmp eq i52 %tmp_253, 0
  %tmp_157 = or i1 %notrhs5, %notlhs5
  %tmp_158 = and i1 %tmp_156, %tmp_157
  %tmp_159 = fcmp ogt double %p_0_i, %d_assign_1
  %tmp_160 = and i1 %tmp_158, %tmp_159
  %tmp_161 = xor i1 %tmp_160, true
  %brmerge = or i1 %tmp_109, %tmp_161
  %d_assign_3_mux = select i1 %tmp_160, double 0.000000e+00, double %d_assign_1
  %max_index_mux = select i1 %tmp_160, i32 %max_index_1_cast, i32 %max_index
  %sel_tmp18 = xor i1 %tmp_79, true
  %sel_tmp19 = and i1 %brmerge, %sel_tmp18
  %sel_tmp20 = select i1 %sel_tmp19, double %d_assign_3_mux, double %dp_11
  %sel_tmp21 = xor i1 %tmp_108, true
  %sel_tmp22 = and i1 %tmp_79, %sel_tmp21
  %sel_tmp23 = select i1 %sel_tmp22, double %dp_9, double %sel_tmp20
  %sel_tmp24 = and i1 %tmp_79, %tmp_108
  %max_value_4 = select i1 %sel_tmp24, double 0.000000e+00, double %sel_tmp23
  %sel_tmp25 = select i1 %sel_tmp19, i32 %max_index_mux, i32 %max_index_1_cast
  %max_index_2 = select i1 %tmp_79, i32 0, i32 %sel_tmp25
  br label %.preheader

; <label>:10                                      ; preds = %.preheader
  ret i32 %max_index
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i62 @_ssdm_op_PartSelect.i62.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i54.i32.i32(i54, i32, i32) nounwind readnone

declare i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i30.i32.i32(i30, i32, i32) nounwind readnone

declare i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSelect.i13.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_48 = trunc i17 %empty to i13
  ret i13 %empty_48
}

declare i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_49 = trunc i64 %empty to i11
  ret i11 %empty_49
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_50 = shl i64 1, %empty
  %empty_51 = and i64 %0, %empty_50
  %empty_52 = icmp ne i64 %empty_51, 0
  ret i1 %empty_52
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_53 = and i32 %0, %empty
  %empty_54 = icmp ne i32 %empty_53, 0
  ret i1 %empty_54
}

define weak i1 @_ssdm_op_BitSelect.i1.i30.i32(i30, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i30
  %empty_55 = shl i30 1, %empty
  %empty_56 = and i30 %0, %empty_55
  %empty_57 = icmp ne i30 %empty_56, 0
  ret i1 %empty_57
}

declare i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone

declare i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62, i2) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61, i3) nounwind readnone {
entry:
  %empty = zext i61 %0 to i64
  %empty_58 = zext i3 %1 to i64
  %empty_59 = shl i64 %empty, 3
  %empty_60 = or i64 %empty_59, %empty_58
  ret i64 %empty_60
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60, i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %1 to i4
  %empty_61 = zext i1 %2 to i4
  %empty_62 = shl i4 %empty, 1
  %empty_63 = or i4 %empty_62, %empty_61
  %empty_64 = zext i60 %0 to i64
  %empty_65 = zext i4 %empty_63 to i64
  %empty_66 = shl i64 %empty_64, 4
  %empty_67 = or i64 %empty_66, %empty_65
  ret i64 %empty_67
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59, i5) nounwind readnone {
entry:
  %empty = zext i59 %0 to i64
  %empty_68 = zext i5 %1 to i64
  %empty_69 = shl i64 %empty, 5
  %empty_70 = or i64 %empty_69, %empty_68
  ret i64 %empty_70
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59, i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %1 to i5
  %empty_71 = zext i2 %2 to i5
  %empty_72 = shl i5 %empty, 2
  %empty_73 = or i5 %empty_72, %empty_71
  %empty_74 = zext i59 %0 to i64
  %empty_75 = zext i5 %empty_73 to i64
  %empty_76 = shl i64 %empty_74, 5
  %empty_77 = or i64 %empty_76, %empty_75
  ret i64 %empty_77
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58, i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %1 to i6
  %empty_78 = zext i1 %2 to i6
  %empty_79 = shl i6 %empty, 1
  %empty_80 = or i6 %empty_79, %empty_78
  %empty_81 = zext i58 %0 to i64
  %empty_82 = zext i6 %empty_80 to i64
  %empty_83 = shl i64 %empty_81, 6
  %empty_84 = or i64 %empty_83, %empty_82
  ret i64 %empty_84
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57, i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %1 to i7
  %empty_85 = zext i2 %2 to i7
  %empty_86 = shl i7 %empty, 2
  %empty_87 = or i7 %empty_86, %empty_85
  %empty_88 = zext i57 %0 to i64
  %empty_89 = zext i7 %empty_87 to i64
  %empty_90 = shl i64 %empty_88, 7
  %empty_91 = or i64 %empty_90, %empty_89
  ret i64 %empty_91
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57, i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %1 to i7
  %empty_92 = zext i4 %2 to i7
  %empty_93 = shl i7 %empty, 4
  %empty_94 = or i7 %empty_93, %empty_92
  %empty_95 = zext i57 %0 to i64
  %empty_96 = zext i7 %empty_94 to i64
  %empty_97 = shl i64 %empty_95, 7
  %empty_98 = or i64 %empty_97, %empty_96
  ret i64 %empty_98
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56, i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %1 to i8
  %empty_99 = zext i3 %2 to i8
  %empty_100 = shl i8 %empty, 3
  %empty_101 = or i8 %empty_100, %empty_99
  %empty_102 = zext i56 %0 to i64
  %empty_103 = zext i8 %empty_101 to i64
  %empty_104 = shl i64 %empty_102, 8
  %empty_105 = or i64 %empty_104, %empty_103
  ret i64 %empty_105
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56, i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %1 to i8
  %empty_106 = zext i5 %2 to i8
  %empty_107 = shl i8 %empty, 5
  %empty_108 = or i8 %empty_107, %empty_106
  %empty_109 = zext i56 %0 to i64
  %empty_110 = zext i8 %empty_108 to i64
  %empty_111 = shl i64 %empty_109, 8
  %empty_112 = or i64 %empty_111, %empty_110
  ret i64 %empty_112
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55, i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %1 to i9
  %empty_113 = zext i4 %2 to i9
  %empty_114 = shl i9 %empty, 4
  %empty_115 = or i9 %empty_114, %empty_113
  %empty_116 = zext i55 %0 to i64
  %empty_117 = zext i9 %empty_115 to i64
  %empty_118 = shl i64 %empty_116, 9
  %empty_119 = or i64 %empty_118, %empty_117
  ret i64 %empty_119
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54, i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %1 to i10
  %empty_120 = zext i5 %2 to i10
  %empty_121 = shl i10 %empty, 5
  %empty_122 = or i10 %empty_121, %empty_120
  %empty_123 = zext i54 %0 to i64
  %empty_124 = zext i10 %empty_122 to i64
  %empty_125 = shl i64 %empty_123, 10
  %empty_126 = or i64 %empty_125, %empty_124
  ret i64 %empty_126
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_127 = zext i52 %1 to i53
  %empty_128 = shl i53 %empty, 52
  %empty_129 = or i53 %empty_128, %empty_127
  ret i53 %empty_129
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_130 = zext i1 %1 to i5
  %empty_131 = shl i5 %empty, 1
  %empty_132 = or i5 %empty_131, %empty_130
  ret i5 %empty_132
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_133 = zext i2 %1 to i5
  %empty_134 = shl i5 %empty, 2
  %empty_135 = or i5 %empty_134, %empty_133
  ret i5 %empty_135
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_136 = zext i1 %1 to i4
  %empty_137 = shl i4 %empty, 1
  %empty_138 = or i4 %empty_137, %empty_136
  ret i4 %empty_138
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i2.i20(i2, i20) nounwind readnone {
entry:
  %empty = zext i2 %0 to i22
  %empty_139 = zext i20 %1 to i22
  %empty_140 = shl i22 %empty, 20
  %empty_141 = or i22 %empty_140, %empty_139
  ret i22 %empty_141
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_142 = zext i1 %1 to i20
  %empty_143 = shl i20 %empty, 1
  %empty_144 = or i20 %empty_143, %empty_142
  ret i20 %empty_144
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i13.i4.i1(i13, i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %1 to i5
  %empty_145 = zext i1 %2 to i5
  %empty_146 = shl i5 %empty, 1
  %empty_147 = or i5 %empty_146, %empty_145
  %empty_148 = zext i13 %0 to i18
  %empty_149 = zext i5 %empty_147 to i18
  %empty_150 = shl i18 %empty_148, 5
  %empty_151 = or i18 %empty_150, %empty_149
  ret i18 %empty_151
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15, i2) nounwind readnone {
entry:
  %empty = zext i15 %0 to i17
  %empty_152 = zext i2 %1 to i17
  %empty_153 = shl i17 %empty, 2
  %empty_154 = or i17 %empty_153, %empty_152
  ret i17 %empty_154
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12, i5) nounwind readnone {
entry:
  %empty = zext i12 %0 to i17
  %empty_155 = zext i5 %1 to i17
  %empty_156 = shl i17 %empty, 5
  %empty_157 = or i17 %empty_156, %empty_155
  ret i17 %empty_157
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_158 = zext i1 %1 to i15
  %empty_159 = shl i15 %empty, 1
  %empty_160 = or i15 %empty_159, %empty_158
  ret i15 %empty_160
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11, i4) nounwind readnone {
entry:
  %empty = zext i11 %0 to i15
  %empty_161 = zext i4 %1 to i15
  %empty_162 = shl i15 %empty, 4
  %empty_163 = or i15 %empty_162, %empty_161
  ret i15 %empty_163
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_164 = zext i5 %1 to i10
  %empty_165 = shl i10 %empty, 5
  %empty_166 = or i10 %empty_165, %empty_164
  ret i10 %empty_166
}

declare void @_GLOBAL__I_a7() nounwind section ".text.startup"

declare void @_GLOBAL__I_a52() nounwind section ".text.startup"

declare void @_GLOBAL__I_a11547() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !10, !10, !16, !19, !25, !25, !10, !27, !10, !10, !10, !30, !10, !10, !10, !32, !32, !7, !10, !25, !25, !10, !34, !10, !10, !10, !36, !36, !38, !38, !40, !10, !10, !10, !42, !45, !10, !10, !10, !47, !47, !48, !48, !50, !10, !10, !10, !10, !10, !10, !10, !10, !10, !10, !52, !10, !55, !57, !57, !59, !61, !61, !10, !62, !62, !64, !64, !10, !10, !10, !65, !65, !64, !62, !62, !67, !10, !10, !69, !69, !70, !61, !61, !72, !10, !74, !80, !86, !86, !10, !32, !32, !7, !10, !25, !25, !10, !34, !10, !10, !10, !36, !36, !38, !38, !40, !10, !10, !10, !42, !25, !25, !10, !45, !10, !10, !10, !47, !47, !48, !48, !50, !10, !10, !10, !10, !10, !10, !30, !10, !10, !10, !10, !89, !89, !91, !32, !32, !7, !30, !69, !69, !70, !57, !57, !61, !61, !64, !72, !93, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !32, !32, !7, !10, !25, !25, !10, !34, !10, !10, !10, !36, !36, !38, !38, !40, !10, !10, !10, !42, !25, !25, !10, !45, !10, !10, !10, !47, !47, !48, !48, !50, !10, !10, !10, !10, !10, !30, !10, !10, !10, !10, !69, !69, !70, !57, !57, !61, !61, !102, !32, !32, !7, !30, !69, !69, !70, !61, !61, !104, !32, !32, !7, !30, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !106, !106, !106, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !106, !106, !106, !10, !106, !106, !106, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !10, !111, !111, !111, !111, !114, !114, !114, !114, !116, !116, !116, !116, !111, !111, !111, !111, !114, !114, !114, !114, !116, !116, !116, !116, !117, !120, !10, !10, !10, !123, !25, !25, !10, !126, !126, !128, !10, !10, !10, !130, !130, !10, !10, !132, !57, !57, !10, !59, !134, !134, !10, !136, !136, !138, !136, !136, !138, !140, !25, !25, !146, !10, !10, !10, !148, !25, !25, !10, !10, !10, !42, !25, !25, !45, !10, !10, !10, !47, !47, !48, !48, !67, !10, !10, !138, !138, !10, !150, !151, !153, !153, !156, !156, !158, !158, !161, !163, !163, !10, !10, !10, !10, !165, !167, !167, !10, !10, !156, !168, !168, !69, !69, !70, !61, !61, !170, !172, !172, !170, !174, !174, !176, !178, !178, !10, !10, !179, !181, !181, !156, !156, !182, !182, !176, !179, !181, !181, !10, !156, !184, !184, !186, !187, !187, !189, !10, !150, !186, !191, !191, !193, !193, !10, !10, !10, !10, !10, !10, !10, !10, !117, !195, !10, !10, !10, !123, !197, !197, !199, !10, !130, !130, !10, !10, !201, !59, !203, !203, !10, !205, !205, !207, !205, !205, !207, !140, !209, !10, !10, !10, !211, !25, !25, !67, !10, !10, !207, !207, !172, !172, !170, !117, !213, !10, !10, !10, !123, !25, !25, !10, !215, !215, !217, !10, !130, !130, !10, !10, !219, !59, !221, !221, !10, !223, !223, !225, !223, !223, !225, !140, !227, !10, !10, !10, !229, !25, !25, !67, !10, !10, !225, !225, !172, !172, !170, !117, !231, !10, !10, !10, !123, !25, !25, !10, !233, !233, !235, !10, !130, !130, !10, !10, !237, !59, !239, !239, !10, !241, !241, !243, !241, !241, !243, !140, !245, !10, !10, !10, !247, !25, !25, !67, !10, !10, !243, !243, !172, !172, !170, !249, !251, !10, !253, !253, !255, !253, !253, !255, !257, !10, !10, !10, !259, !25, !25, !10, !261, !263, !265, !265, !67, !10, !10, !255, !255, !10, !150, !151, !267, !267, !156, !156, !269, !269, !271, !273, !273, !10, !10, !10, !10, !274, !276, !276, !10, !10, !156, !277, !277, !69, !69, !70, !61, !61, !279, !281, !281, !279, !283, !283, !284, !286, !286, !10, !10, !287, !289, !289, !156, !156, !290, !290, !284, !287, !289, !289, !156, !292, !292, !186, !294, !294, !296, !10, !298, !298, !10, !10, !10, !10, !249, !299, !301, !301, !303, !301, !301, !303, !305, !10, !10, !10, !307, !25, !25, !67, !10, !10, !303, !303, !281, !281, !279, !249, !309, !311, !311, !313, !311, !311, !313, !315, !10, !10, !10, !317, !25, !25, !67, !10, !10, !313, !313, !281, !281, !279, !249, !319, !321, !321, !323, !321, !321, !323, !325, !10, !10, !10, !327, !25, !25, !67, !10, !10, !323, !323, !281, !281, !279, !329, !331, !10, !333, !27, !335, !335, !337, !335, !335, !337, !339, !10, !10, !10, !341, !25, !25, !10, !343, !344, !346, !346, !67, !10, !10, !337, !337, !10, !150, !151, !348, !348, !156, !156, !350, !350, !352, !354, !354, !10, !10, !10, !355, !357, !357, !10, !156, !358, !358, !69, !69, !70, !61, !61, !360, !362, !362, !360, !364, !364, !365, !367, !367, !10, !10, !368, !370, !370, !156, !156, !371, !371, !365, !368, !370, !370, !10, !156, !373, !373, !186, !375, !375, !377, !10, !379, !379, !10, !10, !10, !10, !10, !329, !381, !383, !383, !385, !383, !383, !385, !387, !10, !10, !389, !25, !25, !67, !10, !10, !385, !385, !362, !362, !360, !329, !391, !393, !393, !395, !393, !393, !395, !397, !10, !10, !10, !399, !25, !25, !67, !10, !10, !395, !395, !362, !362, !360, !329, !401, !403, !403, !405, !403, !403, !405, !407, !10, !10, !10, !409, !25, !25, !67, !10, !10, !405, !405, !362, !362, !360, !117, !411, !10, !10, !10, !10, !413, !413, !415, !415, !417, !419, !419, !10, !150, !186, !421, !421, !130, !130, !10, !423, !59, !425, !425, !10, !136, !136, !138, !136, !136, !138, !140, !117, !427, !10, !10, !10, !10, !429, !429, !61, !61, !431, !433, !433, !10, !150, !186, !435, !435, !130, !130, !10, !437, !59, !439, !439, !10, !205, !205, !207, !10, !205, !205, !207, !140, !117, !441, !10, !10, !10, !10, !443, !443, !445, !445, !447, !449, !449, !10, !150, !186, !451, !451, !130, !130, !10, !453, !59, !455, !455, !10, !223, !223, !225, !10, !223, !223, !225, !140, !117, !457, !10, !10, !10, !10, !459, !459, !461, !461, !463, !465, !465, !10, !150, !186, !467, !467, !130, !130, !10, !469, !59, !471, !471, !10, !241, !241, !243, !10, !241, !241, !243, !140, !249, !473, !253, !253, !255, !253, !253, !255, !249, !475, !301, !301, !303, !301, !301, !303, !249, !477, !311, !311, !313, !311, !311, !313, !249, !479, !321, !321, !323, !321, !321, !323, !329, !481, !335, !335, !337, !335, !335, !337, !329, !483, !383, !383, !385, !383, !383, !385, !329, !485, !393, !393, !395, !393, !393, !395, !329, !487, !403, !403, !405, !403, !403, !405, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !32, !32, !7, !10, !34, !10, !10, !10, !36, !36, !38, !38, !40, !10, !10, !10, !50, !10, !10, !10, !10, !30, !10, !69, !69, !70, !61, !61, !102, !32, !32, !7, !30, !69, !69, !70, !61, !61, !104, !32, !32, !7, !30, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !106, !106, !106, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !106, !106, !106, !10, !106, !106, !106, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97, !10, !97, !97, !97}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!489, !496, !504, !511, !519, !526, !531, !539, !545, !552, !558, !563, !571, !578, !584, !585, !586, !587, !588, !589, !590}

!0 = metadata !{i32 (i32)* @lenet5_ap2, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space"}
!12 = metadata !{metadata !"kernel_arg_access_qual"}
!13 = metadata !{metadata !"kernel_arg_type"}
!14 = metadata !{metadata !"kernel_arg_type_qual"}
!15 = metadata !{metadata !"kernel_arg_name"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, true> &", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!27 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!32 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!34 = metadata !{null, metadata !20, metadata !21, metadata !35, metadata !23, metadata !24, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !26, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !26, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !29, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!42 = metadata !{null, metadata !20, metadata !21, metadata !43, metadata !23, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!45 = metadata !{null, metadata !20, metadata !21, metadata !46, metadata !23, metadata !24, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!47 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !26, metadata !6}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !26, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !29, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!52 = metadata !{null, metadata !20, metadata !21, metadata !53, metadata !23, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"const ap_fixed_base<30, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!55 = metadata !{null, metadata !20, metadata !21, metadata !56, metadata !23, metadata !44, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !29, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !26, metadata !6}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !29, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !26, metadata !6}
!65 = metadata !{null, metadata !1, metadata !2, metadata !66, metadata !4, metadata !26, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 11, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!67 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !68, metadata !6}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!69 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !33, metadata !6}
!70 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !71, metadata !6}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !26, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 10, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!74 = metadata !{null, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !6}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!76 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"num", metadata !"row", metadata !"column"}
!80 = metadata !{null, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !6}
!81 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!82 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!84 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"channel", metadata !"sample", metadata !"row", metadata !"column"}
!86 = metadata !{null, metadata !20, metadata !21, metadata !87, metadata !23, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"row"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !26, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<30, 2, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !92, metadata !4, metadata !26, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<30, 2, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!93 = metadata !{null, metadata !94, metadata !76, metadata !95, metadata !78, metadata !96, metadata !6}
!94 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"struct timespec", metadata !"struct timespec"}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"name", metadata !"start_time", metadata !"end_time"}
!97 = metadata !{null, metadata !98, metadata !2, metadata !99, metadata !100, metadata !101, metadata !6}
!98 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!100 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !26, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !26, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!106 = metadata !{null, metadata !107, metadata !21, metadata !108, metadata !109, metadata !110, metadata !6}
!107 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!109 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!111 = metadata !{null, metadata !1, metadata !2, metadata !112, metadata !4, metadata !113, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !113, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!116 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !113, metadata !6}
!117 = metadata !{null, metadata !20, metadata !21, metadata !118, metadata !23, metadata !119, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!119 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!120 = metadata !{null, metadata !75, metadata !76, metadata !121, metadata !78, metadata !122, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!122 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!123 = metadata !{null, metadata !1, metadata !2, metadata !124, metadata !4, metadata !125, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!126 = metadata !{null, metadata !1, metadata !2, metadata !127, metadata !4, metadata !26, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!128 = metadata !{null, metadata !1, metadata !2, metadata !129, metadata !4, metadata !26, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!130 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !131, metadata !6}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!132 = metadata !{null, metadata !20, metadata !21, metadata !133, metadata !23, metadata !44, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!134 = metadata !{null, metadata !1, metadata !2, metadata !135, metadata !4, metadata !26, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!136 = metadata !{null, metadata !1, metadata !2, metadata !137, metadata !4, metadata !26, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!138 = metadata !{null, metadata !1, metadata !2, metadata !139, metadata !4, metadata !26, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!140 = metadata !{null, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !6}
!141 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!142 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!144 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!145 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!146 = metadata !{null, metadata !20, metadata !21, metadata !147, metadata !23, metadata !24, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!148 = metadata !{null, metadata !1, metadata !2, metadata !149, metadata !4, metadata !29, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!150 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !131, metadata !6}
!151 = metadata !{null, metadata !1, metadata !2, metadata !152, metadata !4, metadata !5, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!153 = metadata !{null, metadata !107, metadata !21, metadata !154, metadata !23, metadata !155, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!156 = metadata !{null, metadata !20, metadata !21, metadata !87, metadata !23, metadata !157, metadata !6}
!157 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!158 = metadata !{null, metadata !94, metadata !76, metadata !159, metadata !78, metadata !160, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!160 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!161 = metadata !{null, metadata !1, metadata !2, metadata !162, metadata !4, metadata !131, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!163 = metadata !{null, metadata !1, metadata !2, metadata !162, metadata !4, metadata !164, metadata !6}
!164 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!165 = metadata !{null, metadata !1, metadata !2, metadata !166, metadata !4, metadata !131, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!167 = metadata !{null, metadata !1, metadata !2, metadata !166, metadata !4, metadata !26, metadata !6}
!168 = metadata !{null, metadata !94, metadata !76, metadata !169, metadata !78, metadata !160, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!170 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !26, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!172 = metadata !{null, metadata !1, metadata !2, metadata !173, metadata !4, metadata !26, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!174 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !175, metadata !6}
!175 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!176 = metadata !{null, metadata !1, metadata !2, metadata !177, metadata !4, metadata !131, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!178 = metadata !{null, metadata !1, metadata !2, metadata !177, metadata !4, metadata !164, metadata !6}
!179 = metadata !{null, metadata !1, metadata !2, metadata !180, metadata !4, metadata !131, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!181 = metadata !{null, metadata !1, metadata !2, metadata !180, metadata !4, metadata !26, metadata !6}
!182 = metadata !{null, metadata !94, metadata !76, metadata !183, metadata !78, metadata !160, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!184 = metadata !{null, metadata !94, metadata !76, metadata !185, metadata !78, metadata !160, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!187 = metadata !{null, metadata !107, metadata !21, metadata !188, metadata !23, metadata !155, metadata !6}
!188 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!189 = metadata !{null, metadata !1, metadata !2, metadata !190, metadata !4, metadata !131, metadata !6}
!190 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!191 = metadata !{null, metadata !107, metadata !21, metadata !192, metadata !23, metadata !155, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!193 = metadata !{null, metadata !1, metadata !2, metadata !194, metadata !4, metadata !131, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!195 = metadata !{null, metadata !75, metadata !76, metadata !196, metadata !78, metadata !122, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!197 = metadata !{null, metadata !1, metadata !2, metadata !198, metadata !4, metadata !26, metadata !6}
!198 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!199 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !26, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!201 = metadata !{null, metadata !20, metadata !21, metadata !202, metadata !23, metadata !44, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!203 = metadata !{null, metadata !1, metadata !2, metadata !204, metadata !4, metadata !26, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!205 = metadata !{null, metadata !1, metadata !2, metadata !206, metadata !4, metadata !26, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!207 = metadata !{null, metadata !1, metadata !2, metadata !208, metadata !4, metadata !26, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!209 = metadata !{null, metadata !20, metadata !21, metadata !210, metadata !23, metadata !24, metadata !6}
!210 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!211 = metadata !{null, metadata !1, metadata !2, metadata !212, metadata !4, metadata !29, metadata !6}
!212 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!213 = metadata !{null, metadata !75, metadata !76, metadata !214, metadata !78, metadata !122, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!215 = metadata !{null, metadata !1, metadata !2, metadata !216, metadata !4, metadata !26, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!217 = metadata !{null, metadata !1, metadata !2, metadata !218, metadata !4, metadata !26, metadata !6}
!218 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!219 = metadata !{null, metadata !20, metadata !21, metadata !220, metadata !23, metadata !44, metadata !6}
!220 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!221 = metadata !{null, metadata !1, metadata !2, metadata !222, metadata !4, metadata !26, metadata !6}
!222 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!223 = metadata !{null, metadata !1, metadata !2, metadata !224, metadata !4, metadata !26, metadata !6}
!224 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!225 = metadata !{null, metadata !1, metadata !2, metadata !226, metadata !4, metadata !26, metadata !6}
!226 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!227 = metadata !{null, metadata !20, metadata !21, metadata !228, metadata !23, metadata !24, metadata !6}
!228 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!229 = metadata !{null, metadata !1, metadata !2, metadata !230, metadata !4, metadata !29, metadata !6}
!230 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!231 = metadata !{null, metadata !75, metadata !76, metadata !232, metadata !78, metadata !122, metadata !6}
!232 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!233 = metadata !{null, metadata !1, metadata !2, metadata !234, metadata !4, metadata !26, metadata !6}
!234 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!235 = metadata !{null, metadata !1, metadata !2, metadata !236, metadata !4, metadata !26, metadata !6}
!236 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!237 = metadata !{null, metadata !20, metadata !21, metadata !238, metadata !23, metadata !44, metadata !6}
!238 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!239 = metadata !{null, metadata !1, metadata !2, metadata !240, metadata !4, metadata !26, metadata !6}
!240 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!241 = metadata !{null, metadata !1, metadata !2, metadata !242, metadata !4, metadata !26, metadata !6}
!242 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!243 = metadata !{null, metadata !1, metadata !2, metadata !244, metadata !4, metadata !26, metadata !6}
!244 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!245 = metadata !{null, metadata !20, metadata !21, metadata !246, metadata !23, metadata !24, metadata !6}
!246 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!247 = metadata !{null, metadata !1, metadata !2, metadata !248, metadata !4, metadata !29, metadata !6}
!248 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!249 = metadata !{null, metadata !20, metadata !21, metadata !250, metadata !23, metadata !119, metadata !6}
!250 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!251 = metadata !{null, metadata !75, metadata !76, metadata !252, metadata !78, metadata !122, metadata !6}
!252 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!253 = metadata !{null, metadata !1, metadata !2, metadata !254, metadata !4, metadata !26, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!255 = metadata !{null, metadata !1, metadata !2, metadata !256, metadata !4, metadata !26, metadata !6}
!256 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!257 = metadata !{null, metadata !20, metadata !21, metadata !258, metadata !23, metadata !24, metadata !6}
!258 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!259 = metadata !{null, metadata !1, metadata !2, metadata !260, metadata !4, metadata !29, metadata !6}
!260 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!261 = metadata !{null, metadata !20, metadata !21, metadata !262, metadata !23, metadata !44, metadata !6}
!262 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!263 = metadata !{null, metadata !20, metadata !21, metadata !264, metadata !23, metadata !24, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!265 = metadata !{null, metadata !1, metadata !2, metadata !266, metadata !4, metadata !26, metadata !6}
!266 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!267 = metadata !{null, metadata !107, metadata !21, metadata !268, metadata !23, metadata !155, metadata !6}
!268 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!269 = metadata !{null, metadata !94, metadata !76, metadata !270, metadata !78, metadata !160, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!271 = metadata !{null, metadata !1, metadata !2, metadata !272, metadata !4, metadata !131, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!273 = metadata !{null, metadata !1, metadata !2, metadata !272, metadata !4, metadata !164, metadata !6}
!274 = metadata !{null, metadata !1, metadata !2, metadata !275, metadata !4, metadata !131, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!276 = metadata !{null, metadata !1, metadata !2, metadata !275, metadata !4, metadata !26, metadata !6}
!277 = metadata !{null, metadata !94, metadata !76, metadata !278, metadata !78, metadata !160, metadata !6}
!278 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!279 = metadata !{null, metadata !1, metadata !2, metadata !280, metadata !4, metadata !26, metadata !6}
!280 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!281 = metadata !{null, metadata !1, metadata !2, metadata !282, metadata !4, metadata !26, metadata !6}
!282 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!283 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !175, metadata !6}
!284 = metadata !{null, metadata !1, metadata !2, metadata !285, metadata !4, metadata !131, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!286 = metadata !{null, metadata !1, metadata !2, metadata !285, metadata !4, metadata !164, metadata !6}
!287 = metadata !{null, metadata !1, metadata !2, metadata !288, metadata !4, metadata !131, metadata !6}
!288 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!289 = metadata !{null, metadata !1, metadata !2, metadata !288, metadata !4, metadata !26, metadata !6}
!290 = metadata !{null, metadata !94, metadata !76, metadata !291, metadata !78, metadata !160, metadata !6}
!291 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!292 = metadata !{null, metadata !94, metadata !76, metadata !293, metadata !78, metadata !160, metadata !6}
!293 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!294 = metadata !{null, metadata !107, metadata !21, metadata !295, metadata !23, metadata !155, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!296 = metadata !{null, metadata !1, metadata !2, metadata !297, metadata !4, metadata !131, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!298 = metadata !{null, metadata !1, metadata !2, metadata !152, metadata !4, metadata !131, metadata !6}
!299 = metadata !{null, metadata !75, metadata !76, metadata !300, metadata !78, metadata !122, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!301 = metadata !{null, metadata !1, metadata !2, metadata !302, metadata !4, metadata !26, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!303 = metadata !{null, metadata !1, metadata !2, metadata !304, metadata !4, metadata !26, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!305 = metadata !{null, metadata !20, metadata !21, metadata !306, metadata !23, metadata !24, metadata !6}
!306 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!307 = metadata !{null, metadata !1, metadata !2, metadata !308, metadata !4, metadata !29, metadata !6}
!308 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!309 = metadata !{null, metadata !75, metadata !76, metadata !310, metadata !78, metadata !122, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!311 = metadata !{null, metadata !1, metadata !2, metadata !312, metadata !4, metadata !26, metadata !6}
!312 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!313 = metadata !{null, metadata !1, metadata !2, metadata !314, metadata !4, metadata !26, metadata !6}
!314 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!315 = metadata !{null, metadata !20, metadata !21, metadata !316, metadata !23, metadata !24, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!317 = metadata !{null, metadata !1, metadata !2, metadata !318, metadata !4, metadata !29, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!319 = metadata !{null, metadata !75, metadata !76, metadata !320, metadata !78, metadata !122, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!321 = metadata !{null, metadata !1, metadata !2, metadata !322, metadata !4, metadata !26, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!323 = metadata !{null, metadata !1, metadata !2, metadata !324, metadata !4, metadata !26, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !20, metadata !21, metadata !326, metadata !23, metadata !24, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!327 = metadata !{null, metadata !1, metadata !2, metadata !328, metadata !4, metadata !29, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!329 = metadata !{null, metadata !20, metadata !21, metadata !330, metadata !23, metadata !119, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!331 = metadata !{null, metadata !75, metadata !76, metadata !332, metadata !78, metadata !122, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!333 = metadata !{null, metadata !20, metadata !21, metadata !334, metadata !23, metadata !24, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!335 = metadata !{null, metadata !1, metadata !2, metadata !336, metadata !4, metadata !26, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!337 = metadata !{null, metadata !1, metadata !2, metadata !338, metadata !4, metadata !26, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!339 = metadata !{null, metadata !20, metadata !21, metadata !340, metadata !23, metadata !24, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!341 = metadata !{null, metadata !1, metadata !2, metadata !342, metadata !4, metadata !29, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!343 = metadata !{null, metadata !20, metadata !21, metadata !334, metadata !23, metadata !44, metadata !6}
!344 = metadata !{null, metadata !20, metadata !21, metadata !345, metadata !23, metadata !24, metadata !6}
!345 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!346 = metadata !{null, metadata !1, metadata !2, metadata !347, metadata !4, metadata !26, metadata !6}
!347 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!348 = metadata !{null, metadata !107, metadata !21, metadata !349, metadata !23, metadata !155, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!350 = metadata !{null, metadata !94, metadata !76, metadata !351, metadata !78, metadata !160, metadata !6}
!351 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!352 = metadata !{null, metadata !1, metadata !2, metadata !353, metadata !4, metadata !131, metadata !6}
!353 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!354 = metadata !{null, metadata !1, metadata !2, metadata !353, metadata !4, metadata !164, metadata !6}
!355 = metadata !{null, metadata !1, metadata !2, metadata !356, metadata !4, metadata !131, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!357 = metadata !{null, metadata !1, metadata !2, metadata !356, metadata !4, metadata !26, metadata !6}
!358 = metadata !{null, metadata !94, metadata !76, metadata !359, metadata !78, metadata !160, metadata !6}
!359 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!360 = metadata !{null, metadata !1, metadata !2, metadata !361, metadata !4, metadata !26, metadata !6}
!361 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!362 = metadata !{null, metadata !1, metadata !2, metadata !363, metadata !4, metadata !26, metadata !6}
!363 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!364 = metadata !{null, metadata !1, metadata !2, metadata !112, metadata !4, metadata !175, metadata !6}
!365 = metadata !{null, metadata !1, metadata !2, metadata !366, metadata !4, metadata !131, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!367 = metadata !{null, metadata !1, metadata !2, metadata !366, metadata !4, metadata !164, metadata !6}
!368 = metadata !{null, metadata !1, metadata !2, metadata !369, metadata !4, metadata !131, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!370 = metadata !{null, metadata !1, metadata !2, metadata !369, metadata !4, metadata !26, metadata !6}
!371 = metadata !{null, metadata !94, metadata !76, metadata !372, metadata !78, metadata !160, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!373 = metadata !{null, metadata !94, metadata !76, metadata !374, metadata !78, metadata !160, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!375 = metadata !{null, metadata !107, metadata !21, metadata !376, metadata !23, metadata !155, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!377 = metadata !{null, metadata !1, metadata !2, metadata !378, metadata !4, metadata !131, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!379 = metadata !{null, metadata !1, metadata !2, metadata !380, metadata !4, metadata !131, metadata !6}
!380 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!381 = metadata !{null, metadata !75, metadata !76, metadata !382, metadata !78, metadata !122, metadata !6}
!382 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!383 = metadata !{null, metadata !1, metadata !2, metadata !384, metadata !4, metadata !26, metadata !6}
!384 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!385 = metadata !{null, metadata !1, metadata !2, metadata !386, metadata !4, metadata !26, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!387 = metadata !{null, metadata !20, metadata !21, metadata !388, metadata !23, metadata !24, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!389 = metadata !{null, metadata !1, metadata !2, metadata !390, metadata !4, metadata !29, metadata !6}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!391 = metadata !{null, metadata !75, metadata !76, metadata !392, metadata !78, metadata !122, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!393 = metadata !{null, metadata !1, metadata !2, metadata !394, metadata !4, metadata !26, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!395 = metadata !{null, metadata !1, metadata !2, metadata !396, metadata !4, metadata !26, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!397 = metadata !{null, metadata !20, metadata !21, metadata !398, metadata !23, metadata !24, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!399 = metadata !{null, metadata !1, metadata !2, metadata !400, metadata !4, metadata !29, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!401 = metadata !{null, metadata !75, metadata !76, metadata !402, metadata !78, metadata !122, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!403 = metadata !{null, metadata !1, metadata !2, metadata !404, metadata !4, metadata !26, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!405 = metadata !{null, metadata !1, metadata !2, metadata !406, metadata !4, metadata !26, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!407 = metadata !{null, metadata !20, metadata !21, metadata !408, metadata !23, metadata !24, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!409 = metadata !{null, metadata !1, metadata !2, metadata !410, metadata !4, metadata !29, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!411 = metadata !{null, metadata !75, metadata !76, metadata !412, metadata !78, metadata !122, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!413 = metadata !{null, metadata !1, metadata !2, metadata !414, metadata !4, metadata !26, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!415 = metadata !{null, metadata !1, metadata !2, metadata !416, metadata !4, metadata !26, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!417 = metadata !{null, metadata !1, metadata !2, metadata !418, metadata !4, metadata !26, metadata !6}
!418 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!419 = metadata !{null, metadata !1, metadata !2, metadata !420, metadata !4, metadata !26, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!421 = metadata !{null, metadata !107, metadata !21, metadata !422, metadata !23, metadata !155, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!423 = metadata !{null, metadata !20, metadata !21, metadata !424, metadata !23, metadata !44, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!425 = metadata !{null, metadata !1, metadata !2, metadata !426, metadata !4, metadata !26, metadata !6}
!426 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!427 = metadata !{null, metadata !75, metadata !76, metadata !428, metadata !78, metadata !122, metadata !6}
!428 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!429 = metadata !{null, metadata !1, metadata !2, metadata !430, metadata !4, metadata !26, metadata !6}
!430 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!431 = metadata !{null, metadata !1, metadata !2, metadata !432, metadata !4, metadata !26, metadata !6}
!432 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!433 = metadata !{null, metadata !1, metadata !2, metadata !434, metadata !4, metadata !26, metadata !6}
!434 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!435 = metadata !{null, metadata !107, metadata !21, metadata !436, metadata !23, metadata !155, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!437 = metadata !{null, metadata !20, metadata !21, metadata !438, metadata !23, metadata !44, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!439 = metadata !{null, metadata !1, metadata !2, metadata !440, metadata !4, metadata !26, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!441 = metadata !{null, metadata !75, metadata !76, metadata !442, metadata !78, metadata !122, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!443 = metadata !{null, metadata !1, metadata !2, metadata !444, metadata !4, metadata !26, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!445 = metadata !{null, metadata !1, metadata !2, metadata !446, metadata !4, metadata !26, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!447 = metadata !{null, metadata !1, metadata !2, metadata !448, metadata !4, metadata !26, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!449 = metadata !{null, metadata !1, metadata !2, metadata !450, metadata !4, metadata !26, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!451 = metadata !{null, metadata !107, metadata !21, metadata !452, metadata !23, metadata !155, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!453 = metadata !{null, metadata !20, metadata !21, metadata !454, metadata !23, metadata !44, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!455 = metadata !{null, metadata !1, metadata !2, metadata !456, metadata !4, metadata !26, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!457 = metadata !{null, metadata !75, metadata !76, metadata !458, metadata !78, metadata !122, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!459 = metadata !{null, metadata !1, metadata !2, metadata !460, metadata !4, metadata !26, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!461 = metadata !{null, metadata !1, metadata !2, metadata !462, metadata !4, metadata !26, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!463 = metadata !{null, metadata !1, metadata !2, metadata !464, metadata !4, metadata !26, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!465 = metadata !{null, metadata !1, metadata !2, metadata !466, metadata !4, metadata !26, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!467 = metadata !{null, metadata !107, metadata !21, metadata !468, metadata !23, metadata !155, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!469 = metadata !{null, metadata !20, metadata !21, metadata !470, metadata !23, metadata !44, metadata !6}
!470 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!471 = metadata !{null, metadata !1, metadata !2, metadata !472, metadata !4, metadata !26, metadata !6}
!472 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!473 = metadata !{null, metadata !75, metadata !76, metadata !474, metadata !78, metadata !122, metadata !6}
!474 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!475 = metadata !{null, metadata !75, metadata !76, metadata !476, metadata !78, metadata !122, metadata !6}
!476 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!477 = metadata !{null, metadata !75, metadata !76, metadata !478, metadata !78, metadata !122, metadata !6}
!478 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!479 = metadata !{null, metadata !75, metadata !76, metadata !480, metadata !78, metadata !122, metadata !6}
!480 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!481 = metadata !{null, metadata !75, metadata !76, metadata !482, metadata !78, metadata !122, metadata !6}
!482 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!483 = metadata !{null, metadata !75, metadata !76, metadata !484, metadata !78, metadata !122, metadata !6}
!484 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!485 = metadata !{null, metadata !75, metadata !76, metadata !486, metadata !78, metadata !122, metadata !6}
!486 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!487 = metadata !{null, metadata !75, metadata !76, metadata !488, metadata !78, metadata !122, metadata !6}
!488 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!489 = metadata !{metadata !490, [16 x i32]* @pow_num}
!490 = metadata !{metadata !491}
!491 = metadata !{i32 0, i32 31, metadata !492}
!492 = metadata !{metadata !493}
!493 = metadata !{metadata !"pow_num", metadata !494, metadata !"int", i32 0, i32 31}
!494 = metadata !{metadata !495}
!495 = metadata !{i32 0, i32 15, i32 1}
!496 = metadata !{metadata !497, null}
!497 = metadata !{metadata !498}
!498 = metadata !{i32 0, i32 29, metadata !499}
!499 = metadata !{metadata !500}
!500 = metadata !{metadata !"pool_dot.V", metadata !501, metadata !"int30", i32 0, i32 29}
!501 = metadata !{metadata !502, metadata !495, metadata !503, metadata !503}
!502 = metadata !{i32 0, i32 2, i32 1}
!503 = metadata !{i32 0, i32 13, i32 1}
!504 = metadata !{metadata !505, [4 x i32]* @llvm_global_ctors_0}
!505 = metadata !{metadata !506}
!506 = metadata !{i32 0, i32 31, metadata !507}
!507 = metadata !{metadata !508}
!508 = metadata !{metadata !"llvm.global_ctors.0", metadata !509, metadata !"", i32 0, i32 31}
!509 = metadata !{metadata !510}
!510 = metadata !{i32 0, i32 3, i32 1}
!511 = metadata !{metadata !512, null}
!512 = metadata !{metadata !513}
!513 = metadata !{i32 0, i32 29, metadata !514}
!514 = metadata !{metadata !515}
!515 = metadata !{metadata !"in.V", metadata !516, metadata !"int30", i32 0, i32 29}
!516 = metadata !{metadata !517, metadata !517, metadata !518}
!517 = metadata !{i32 0, i32 31, i32 1}
!518 = metadata !{i32 0, i32 9999, i32 1}
!519 = metadata !{metadata !520, i32* @i_in1}
!520 = metadata !{metadata !521}
!521 = metadata !{i32 0, i32 31, metadata !522}
!522 = metadata !{metadata !523}
!523 = metadata !{metadata !"i_in1", metadata !524, metadata !"int", i32 0, i32 31}
!524 = metadata !{metadata !525}
!525 = metadata !{i32 0, i32 0, i32 1}
!526 = metadata !{metadata !527, i32* @i_in0}
!527 = metadata !{metadata !528}
!528 = metadata !{i32 0, i32 31, metadata !529}
!529 = metadata !{metadata !530}
!530 = metadata !{metadata !"i_in0", metadata !524, metadata !"int", i32 0, i32 31}
!531 = metadata !{metadata !532, null}
!532 = metadata !{metadata !533}
!533 = metadata !{i32 0, i32 31, metadata !534}
!534 = metadata !{metadata !535}
!535 = metadata !{metadata !"fc_weight", metadata !536, metadata !"int", i32 0, i32 31}
!536 = metadata !{metadata !510, metadata !537, metadata !537, metadata !538}
!537 = metadata !{i32 0, i32 399, i32 1}
!538 = metadata !{i32 0, i32 1, i32 1}
!539 = metadata !{metadata !540, [400 x i30]* @fc_in_V}
!540 = metadata !{metadata !541}
!541 = metadata !{i32 0, i32 29, metadata !542}
!542 = metadata !{metadata !543}
!543 = metadata !{metadata !"fc_in.V", metadata !544, metadata !"int30", i32 0, i32 29}
!544 = metadata !{metadata !537}
!545 = metadata !{metadata !546, [3 x [120 x i30]]* @fc_dot_V}
!546 = metadata !{metadata !547}
!547 = metadata !{i32 0, i32 29, metadata !548}
!548 = metadata !{metadata !549}
!549 = metadata !{metadata !"fc_dot.V", metadata !550, metadata !"int30", i32 0, i32 29}
!550 = metadata !{metadata !502, metadata !551}
!551 = metadata !{i32 0, i32 119, i32 1}
!552 = metadata !{metadata !553, null}
!553 = metadata !{metadata !554}
!554 = metadata !{i32 0, i32 29, metadata !555}
!555 = metadata !{metadata !556}
!556 = metadata !{metadata !"fc_bias.V", metadata !557, metadata !"int30", i32 0, i32 29}
!557 = metadata !{metadata !510, metadata !551}
!558 = metadata !{metadata !559, double* @f_in}
!559 = metadata !{metadata !560}
!560 = metadata !{i32 0, i32 63, metadata !561}
!561 = metadata !{metadata !562}
!562 = metadata !{metadata !"f_in", metadata !524, metadata !"double", i32 0, i32 63}
!563 = metadata !{metadata !564, null}
!564 = metadata !{metadata !565}
!565 = metadata !{i32 0, i32 31, metadata !566}
!566 = metadata !{metadata !567}
!567 = metadata !{metadata !"conv_weight", metadata !568, metadata !"int", i32 0, i32 31}
!568 = metadata !{metadata !502, metadata !495, metadata !569, metadata !570, metadata !570, metadata !538}
!569 = metadata !{i32 0, i32 5, i32 1}
!570 = metadata !{i32 0, i32 4, i32 1}
!571 = metadata !{metadata !572, null}
!572 = metadata !{metadata !573}
!573 = metadata !{i32 0, i32 29, metadata !574}
!574 = metadata !{metadata !575}
!575 = metadata !{metadata !"conv_dot.V", metadata !576, metadata !"int30", i32 0, i32 29}
!576 = metadata !{metadata !502, metadata !495, metadata !577, metadata !577}
!577 = metadata !{i32 0, i32 27, i32 1}
!578 = metadata !{metadata !579, null}
!579 = metadata !{metadata !580}
!580 = metadata !{i32 0, i32 29, metadata !581}
!581 = metadata !{metadata !582}
!582 = metadata !{metadata !"conv_bias.V", metadata !583, metadata !"int30", i32 0, i32 29}
!583 = metadata !{metadata !502, metadata !495}
!584 = metadata !{metadata !497, [9408 x i30]* @pool_dot_V}
!585 = metadata !{metadata !512, [10240000 x i30]* @in_V}
!586 = metadata !{metadata !532, [1280000 x i32]* @fc_weight}
!587 = metadata !{metadata !553, [480 x i30]* @fc_bias_V}
!588 = metadata !{metadata !564, [14400 x i32]* @conv_weight}
!589 = metadata !{metadata !572, [37632 x i30]* @conv_dot_V}
!590 = metadata !{metadata !579, [48 x i30]* @conv_bias_V}
!591 = metadata !{metadata !592}
!592 = metadata !{i32 0, i32 31, metadata !593}
!593 = metadata !{metadata !594}
!594 = metadata !{metadata !"index", metadata !595, metadata !"int", i32 0, i32 31}
!595 = metadata !{metadata !596}
!596 = metadata !{i32 0, i32 0, i32 0}
!597 = metadata !{metadata !598}
!598 = metadata !{i32 0, i32 31, metadata !599}
!599 = metadata !{metadata !600}
!600 = metadata !{metadata !"return", metadata !601, metadata !"int", i32 0, i32 31}
!601 = metadata !{metadata !602}
!602 = metadata !{i32 0, i32 1, i32 0}
