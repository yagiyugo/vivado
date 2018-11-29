; ModuleID = '/home/yagiyugo/vivado/lenet5_ap2_shift_bin/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE.29.183.185.187 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker.28.182.184.186*, %struct._IO_FILE.29.183.185.187*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker.28.182.184.186 = type { %struct._IO_marker.28.182.184.186*, %struct._IO_FILE.29.183.185.187*, i32 }

@shift_amount = global i32 0, align 4
@pow_num = global [16 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@pool_dot_V = external global [9408 x i32]
@param_dir = constant [54 x i8] c"/home/yagiyugo/vivado/lenet5_ap2_shift_bin/param_txt/\00", align 16
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a7, void ()* @_GLOBAL__I_a62, void ()* @_GLOBAL__I_a11547]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@lenet5_ap2_str = internal unnamed_addr constant [11 x i8] c"lenet5_ap2\00"
@in_V = external global [10240000 x i32]
@i_in1 = global i32 0, align 4
@i_in0 = global i32 0, align 4
@fp = global %struct._IO_FILE.29.183.185.187* null, align 8
@fname = constant [256 x i8] zeroinitializer, align 16
@fix = constant [16 x i8] zeroinitializer, align 16
@fc_weight = external global [640000 x i8]
@fc_in_V = external global [400 x i32]
@fc_dot_V = external global [3 x [120 x i32]]
@fc_bias_V = external global [480 x i32]
@f_in = global double 0.000000e+00, align 8
@data_dir = constant [60 x i8] c"/home/yagiyugo/vivado/lenet5_ap2_shift_bin/mnist_test_data/\00", align 16
@conv_weight = external global [7200 x i8]
@conv_dot_V = external global [37632 x i32]
@conv_bias_V = external global [48 x i32]
@c_in = global i8 0, align 1

declare i64 @llvm.part.set.i64.i11(i64, i11, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @lenet5_ap2(i32 %index) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %index) nounwind, !map !622
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !628
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @lenet5_ap2_str) nounwind
  %index_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %index) nounwind
  %tmp = trunc i32 %index_read to i25
  br label %.loopexit58

.loopexit58.loopexit:                             ; preds = %.preheader719
  br label %.loopexit58

.loopexit58:                                      ; preds = %.loopexit58.loopexit, %0
  %channel = phi i3 [ 0, %0 ], [ %channel_1, %.loopexit58.loopexit ]
  %exitcond1 = icmp eq i3 %channel, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_1 = add i3 %channel, 1
  br i1 %exitcond1, label %.preheader715.preheader, label %.preheader719.preheader

.preheader715.preheader:                          ; preds = %.loopexit58
  %max_value = alloca double
  br label %.preheader715

.preheader719.preheader:                          ; preds = %.loopexit58
  %tmp_1 = call i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61 2, i3 %channel)
  %p_shl3 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel, i5 0)
  %p_shl4 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel, i1 false)
  %tmp_2 = sub i64 %p_shl3, %p_shl4
  %p_shl2 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel, i2 0)
  %tmp_3 = sub i64 %p_shl3, %p_shl2
  %conv_bias_V_addr = getelementptr [48 x i32]* @conv_bias_V, i64 0, i64 %tmp_1
  %p_Val2_7 = load i32* %conv_bias_V_addr, align 4
  %tmp_5 = trunc i32 %p_Val2_7 to i31
  br label %.preheader719

.preheader719.loopexit:                           ; preds = %.preheader718
  br label %.preheader719

.preheader719:                                    ; preds = %.preheader719.loopexit, %.preheader719.preheader
  %col = phi i5 [ 0, %.preheader719.preheader ], [ %col_1, %.preheader719.loopexit ]
  %exitcond3 = icmp eq i5 %col, -4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %col_1 = add i5 %col, 1
  br i1 %exitcond3, label %.loopexit58.loopexit, label %.preheader718.preheader

.preheader718.preheader:                          ; preds = %.preheader719
  %tmp_4 = zext i5 %col to i64
  %tmp_13 = add i64 %tmp_3, %tmp_4
  %tmp_14 = trunc i64 %tmp_13 to i12
  %p_shl5_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_14, i5 0)
  %tmp_16 = trunc i64 %tmp_13 to i15
  %p_shl6_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_16, i2 0)
  %tmp_17 = sub i17 %p_shl5_cast, %p_shl6_cast
  br label %.preheader718

.preheader718:                                    ; preds = %._crit_edge, %.preheader718.preheader
  %row = phi i5 [ %row_1, %._crit_edge ], [ 0, %.preheader718.preheader ]
  %exitcond6 = icmp eq i5 %row, -4
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %row_1 = add i5 %row, 1
  br i1 %exitcond6, label %.preheader719.loopexit, label %1

; <label>:1                                       ; preds = %.preheader718
  %tmp_cast = zext i5 %row to i17
  %tmp_56 = add i17 %tmp_17, %tmp_cast
  %tmp_150_cast = zext i17 %tmp_56 to i64
  %conv_dot_V_addr = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_150_cast
  store i32 0, i32* %conv_dot_V_addr, align 4
  br label %.loopexit57

.loopexit57.loopexit:                             ; preds = %.preheader717
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %1
  %fil_col = phi i3 [ 0, %1 ], [ %fil_col_1, %.loopexit57.loopexit ]
  %fil_col_cast = zext i3 %fil_col to i5
  %exitcond10 = icmp eq i3 %fil_col, -3
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_1 = add i3 %fil_col, 1
  br i1 %exitcond10, label %._crit_edge, label %.preheader717.preheader

.preheader717.preheader:                          ; preds = %.loopexit57
  %tmp_17_cast = zext i3 %fil_col to i14
  %tmp_18 = add i5 %col, %fil_col_cast
  br label %.preheader717

.preheader717:                                    ; preds = %.preheader716.preheader_ifconv, %.preheader717.preheader
  %fil_row = phi i3 [ %fil_row_1, %.preheader716.preheader_ifconv ], [ 0, %.preheader717.preheader ]
  %fil_row_cast = zext i3 %fil_row to i5
  %exitcond14 = icmp eq i3 %fil_row, -3
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_1 = add i3 %fil_row, 1
  br i1 %exitcond14, label %.loopexit57.loopexit, label %.preheader716.preheader_ifconv

.preheader716.preheader_ifconv:                   ; preds = %.preheader717
  %tmp_26 = zext i3 %fil_row to i64
  %tmp_144 = add i64 %tmp_26, %tmp_2
  %tmp_145 = trunc i64 %tmp_144 to i14
  %tmp_146 = trunc i64 %tmp_144 to i12
  %p_shl7_cast = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_146, i2 0)
  %tmp_147 = add i14 %p_shl7_cast, %tmp_145
  %tmp_148 = add i14 %tmp_17_cast, %tmp_147
  %tmp_176_cast = zext i14 %tmp_148 to i64
  %conv_weight_addr = getelementptr [7200 x i8]* @conv_weight, i64 0, i64 %tmp_176_cast
  %tmp_27 = add i5 %row, %fil_row_cast
  %tmp_149 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_18, i5 %tmp_27)
  %tmp_178_cast = zext i10 %tmp_149 to i25
  %tmp_150 = mul i25 10000, %tmp_178_cast
  %tmp_151 = add i25 %tmp, %tmp_150
  %tmp_180_cast = sext i25 %tmp_151 to i64
  %in_V_addr = getelementptr [10240000 x i32]* @in_V, i64 0, i64 %tmp_180_cast
  %conv_weight_load = load i8* %conv_weight_addr, align 1
  %tmp_152 = trunc i8 %conv_weight_load to i6
  %tmp_153 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %conv_weight_load, i32 7)
  %tmp_154 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %conv_weight_load, i32 6)
  %rev = xor i1 %tmp_154, true
  %sh = zext i6 %tmp_152 to i32
  %in_V_load = load i32* %in_V_addr, align 4
  %p_Val2_9 = shl i32 %in_V_load, %sh
  %conv_dot_V_load_3 = load i32* %conv_dot_V_addr, align 4
  %p_Val2_10 = sub i32 %conv_dot_V_load_3, %p_Val2_9
  %p_Val2_11 = ashr i32 %in_V_load, %sh
  %p_Val2_12 = sub i32 %conv_dot_V_load_3, %p_Val2_11
  %sel_tmp = xor i1 %tmp_153, true
  %sel_tmp1 = and i1 %rev, %sel_tmp
  %sel_tmp2_v = select i1 %sel_tmp1, i32 %p_Val2_9, i32 %p_Val2_11
  %sel_tmp2 = add i32 %conv_dot_V_load_3, %sel_tmp2_v
  %sel_tmp4 = and i1 %tmp_153, %tmp_154
  %sel_tmp5 = select i1 %sel_tmp4, i32 %p_Val2_12, i32 %sel_tmp2
  %sel_tmp6 = and i1 %tmp_153, %rev
  %storemerge1 = select i1 %sel_tmp6, i32 %p_Val2_10, i32 %sel_tmp5
  store i32 %storemerge1, i32* %conv_dot_V_addr, align 4
  br label %.preheader717

._crit_edge:                                      ; preds = %.loopexit57
  %p_Val2_s = load i32* %conv_dot_V_addr, align 4
  %tmp_83 = trunc i32 %p_Val2_s to i31
  %p_Val2_2 = add i32 %p_Val2_s, %p_Val2_7
  %p_Val2_2_cast = add i31 %tmp_5, %tmp_83
  %tmp_85 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_2, i32 31)
  %p_Val2_2_18 = select i1 %tmp_85, i31 0, i31 %p_Val2_2_cast
  %p_Val2_2_cast_19 = zext i31 %p_Val2_2_18 to i32
  store i32 %p_Val2_2_cast_19, i32* %conv_dot_V_addr, align 4
  br label %.preheader718

.preheader715.loopexit:                           ; preds = %.preheader714
  br label %.preheader715

.preheader715:                                    ; preds = %.preheader715.loopexit, %.preheader715.preheader
  %channel1 = phi i3 [ 0, %.preheader715.preheader ], [ %channel_2, %.preheader715.loopexit ]
  %max_value_load = load double* %max_value
  %exitcond2 = icmp eq i3 %channel1, -2
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_2 = add i3 %channel1, 1
  br i1 %exitcond2, label %.preheader711.preheader, label %.preheader714.preheader

.preheader711.preheader:                          ; preds = %.preheader715
  br label %.preheader711

.preheader714.preheader:                          ; preds = %.preheader715
  %p_shl1 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel1, i5 0)
  %p_shl5 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel1, i2 0)
  %tmp_s = sub i64 %p_shl1, %p_shl5
  %p_shl8 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %channel1, i4 0)
  %p_shl9 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel1, i1 false)
  %tmp_11 = sub i64 %p_shl8, %p_shl9
  br label %.preheader714

.preheader714.loopexit:                           ; preds = %.preheader713
  br label %.preheader714

.preheader714:                                    ; preds = %.preheader714.loopexit, %.preheader714.preheader
  %col2 = phi i4 [ 0, %.preheader714.preheader ], [ %col_2, %.preheader714.loopexit ]
  %exitcond5 = icmp eq i4 %col2, -2
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %col_2 = add i4 %col2, 1
  br i1 %exitcond5, label %.preheader715.loopexit, label %.preheader713.preheader

.preheader713.preheader:                          ; preds = %.preheader714
  %tmp_7 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %col2, i1 false)
  %tmp_8 = zext i5 %tmp_7 to i64
  %tmp_31 = add i64 %tmp_8, %tmp_s
  %tmp_33 = trunc i64 %tmp_31 to i12
  %p_shl14_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_33, i5 0)
  %tmp_36 = trunc i64 %tmp_31 to i15
  %p_shl15_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_36, i2 0)
  %tmp_37 = sub i17 %p_shl14_cast, %p_shl15_cast
  %tmp_9 = zext i4 %col2 to i64
  %tmp_38 = add i64 %tmp_9, %tmp_11
  %tmp_41 = trunc i64 %tmp_38 to i11
  %p_shl12_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_41, i4 0)
  %tmp_51 = trunc i64 %tmp_38 to i14
  %p_shl13_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_51, i1 false)
  %tmp_52 = sub i15 %p_shl12_cast, %p_shl13_cast
  br label %.preheader713

.preheader713:                                    ; preds = %_ifconv12, %.preheader713.preheader
  %row3 = phi i4 [ %row_3, %_ifconv12 ], [ 0, %.preheader713.preheader ]
  %exitcond9 = icmp eq i4 %row3, -2
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %row_3 = add i4 %row3, 1
  br i1 %exitcond9, label %.preheader714.loopexit, label %_ifconv10

_ifconv10:                                        ; preds = %.preheader713
  %tmp_10 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %row3, i1 false)
  %tmp_11_cast = zext i5 %tmp_10 to i17
  %tmp_81 = add i17 %tmp_11_cast, %tmp_37
  %tmp_157_cast = zext i17 %tmp_81 to i64
  %conv_dot_V_addr_1 = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_157_cast
  %conv_dot_V_load = load i32* %conv_dot_V_addr_1, align 4
  %tmp_12 = icmp eq i32 %conv_dot_V_load, 0
  %dp_1 = sitofp i32 %conv_dot_V_load to double
  %res_V_16 = bitcast double %dp_1 to i64
  %exp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_16, i32 52, i32 62)
  %exp_V_15 = add i11 %exp_V, -22
  %p_Result_s = call i64 @llvm.part.set.i64.i11(i64 %res_V_16, i11 %exp_V_15, i32 52, i32 62) nounwind
  %dp = bitcast i64 %p_Result_s to double
  %v_assign_ph = select i1 %tmp_12, double 0.000000e+00, double %dp
  br label %to_double.exit853

to_double.exit853.loopexit:                       ; preds = %.preheader712
  br label %to_double.exit853

to_double.exit853:                                ; preds = %to_double.exit853.loopexit, %_ifconv10
  %v_assign = phi double [ %v_assign_ph, %_ifconv10 ], [ %op1_assign, %to_double.exit853.loopexit ]
  %fil_col4 = phi i2 [ 0, %_ifconv10 ], [ %fil_col_3, %to_double.exit853.loopexit ]
  %fil_col4_cast = zext i2 %fil_col4 to i5
  %exitcond19 = icmp eq i2 %fil_col4, -2
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_col_3 = add i2 %fil_col4, 1
  br i1 %exitcond19, label %_ifconv12, label %.preheader712.preheader

.preheader712.preheader:                          ; preds = %to_double.exit853
  %tmp_46 = add i5 %fil_col4_cast, %tmp_7
  %tmp_47 = zext i5 %tmp_46 to i64
  %tmp_124 = add i64 %tmp_s, %tmp_47
  %tmp_141 = trunc i64 %tmp_124 to i12
  %p_shl16_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_141, i5 0)
  %tmp_142 = trunc i64 %tmp_124 to i15
  %p_shl17_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_142, i2 0)
  %tmp_143 = sub i17 %p_shl16_cast, %p_shl17_cast
  br label %.preheader712

.preheader712:                                    ; preds = %_ifconv, %.preheader712.preheader
  %op1_assign = phi double [ %max_value_5, %_ifconv ], [ %v_assign, %.preheader712.preheader ]
  %fil_row5 = phi i2 [ %fil_row_3, %_ifconv ], [ 0, %.preheader712.preheader ]
  %fil_row5_cast = zext i2 %fil_row5 to i5
  %exitcond25 = icmp eq i2 %fil_row5, -2
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_row_3 = add i2 %fil_row5, 1
  br i1 %exitcond25, label %to_double.exit853.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader712
  %tmp_62 = add i5 %fil_row5_cast, %tmp_10
  %tmp_63_cast = zext i5 %tmp_62 to i17
  %tmp_163 = add i17 %tmp_143, %tmp_63_cast
  %tmp_187_cast = zext i17 %tmp_163 to i64
  %conv_dot_V_addr_4 = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_187_cast
  %conv_dot_V_load_4 = load i32* %conv_dot_V_addr_4, align 4
  %tmp_64 = icmp eq i32 %conv_dot_V_load_4, 0
  %dp_5 = sitofp i32 %conv_dot_V_load_4 to double
  %res_V_17 = bitcast double %dp_5 to i64
  %exp_V_4 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_17, i32 52, i32 62)
  %exp_V_16 = add i11 -22, %exp_V_4
  %p_Result_1 = call i64 @llvm.part.set.i64.i11(i64 %res_V_17, i11 %exp_V_16, i32 52, i32 62) nounwind
  %dp_4 = bitcast i64 %p_Result_1 to double
  %p_0_i1 = select i1 %tmp_64, double 0.000000e+00, double %dp_4
  %p_0_i1_to_int = bitcast double %p_0_i1 to i64
  %tmp_82 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i1_to_int, i32 52, i32 62)
  %tmp_164 = trunc i64 %p_0_i1_to_int to i52
  %op1_assign_to_int = bitcast double %op1_assign to i64
  %tmp_84 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %op1_assign_to_int, i32 52, i32 62)
  %tmp_165 = trunc i64 %op1_assign_to_int to i52
  %notlhs = icmp ne i11 %tmp_82, -1
  %notrhs = icmp eq i52 %tmp_164, 0
  %tmp_87 = or i1 %notrhs, %notlhs
  %notlhs1 = icmp ne i11 %tmp_84, -1
  %notrhs1 = icmp eq i52 %tmp_165, 0
  %tmp_92 = or i1 %notrhs1, %notlhs1
  %tmp_98 = and i1 %tmp_87, %tmp_92
  %tmp_104 = fcmp ogt double %p_0_i1, %op1_assign
  %tmp_105 = and i1 %tmp_98, %tmp_104
  %tmp_106 = xor i1 %tmp_105, true
  %brmerge1 = or i1 %tmp_64, %tmp_106
  %op1_assign_mux = select i1 %tmp_105, double 0.000000e+00, double %op1_assign
  %max_value_5 = select i1 %brmerge1, double %op1_assign_mux, double %dp_4
  br label %.preheader712

_ifconv12:                                        ; preds = %to_double.exit853
  %tmp_41_cast = zext i4 %row3 to i15
  %tmp_114 = add i15 %tmp_41_cast, %tmp_52
  %tmp_168_cast = zext i15 %tmp_114 to i64
  %pool_dot_V_addr_1 = getelementptr [9408 x i32]* @pool_dot_V, i64 0, i64 %tmp_168_cast
  %ireg_V = bitcast double %v_assign to i64
  %tmp_116 = trunc i64 %ireg_V to i63
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V, i32 63)
  %exp_tmp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V, i32 52, i32 62)
  %tmp_42 = zext i11 %exp_tmp_V to i12
  %tmp_126 = trunc i64 %ireg_V to i52
  %tmp_43 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_126)
  %p_Result_2 = zext i53 %tmp_43 to i54
  %man_V_1 = sub i54 0, %p_Result_2
  %man_V_2 = select i1 %isneg, i54 %man_V_1, i54 %p_Result_2
  %tmp_44 = icmp eq i63 %tmp_116, 0
  %F2 = sub i12 1075, %tmp_42
  %tmp_45 = icmp sgt i12 %F2, 22
  %tmp_48 = add i12 -22, %F2
  %tmp_49 = sub i12 22, %F2
  %sh_amt = select i1 %tmp_45, i12 %tmp_48, i12 %tmp_49
  %sh_amt_cast = sext i12 %sh_amt to i32
  %tmp_50 = icmp eq i12 %F2, 22
  %tmp_133 = trunc i54 %man_V_2 to i32
  %tmp_53 = icmp ult i12 %sh_amt, 54
  %tmp_139 = call i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12 %sh_amt, i32 5, i32 11)
  %icmp = icmp eq i7 %tmp_139, 0
  %tmp_65 = zext i32 %sh_amt_cast to i54
  %tmp_68 = ashr i54 %man_V_2, %tmp_65
  %tmp_140 = trunc i54 %tmp_68 to i32
  %storemerge = select i1 %isneg, i32 -1, i32 0
  %tmp_74 = shl i32 %tmp_133, %sh_amt_cast
  %sel_tmp7 = xor i1 %tmp_44, true
  %sel_tmp8 = and i1 %tmp_50, %sel_tmp7
  %sel_tmp19_demorgan = or i1 %tmp_44, %tmp_50
  %sel_tmp9 = xor i1 %sel_tmp19_demorgan, true
  %sel_tmp3 = and i1 %tmp_45, %sel_tmp9
  %sel_tmp10 = xor i1 %tmp_53, true
  %sel_tmp11 = and i1 %sel_tmp3, %sel_tmp10
  %sel_tmp12 = and i1 %sel_tmp3, %tmp_53
  %sel_tmp34_demorgan = or i1 %sel_tmp19_demorgan, %tmp_45
  %sel_tmp13 = xor i1 %sel_tmp34_demorgan, true
  %sel_tmp14 = and i1 %icmp, %sel_tmp13
  %newSel = select i1 %sel_tmp14, i32 %tmp_74, i32 %tmp_140
  %or_cond = or i1 %sel_tmp14, %sel_tmp12
  %newSel1 = select i1 %sel_tmp11, i32 %storemerge, i32 %tmp_133
  %or_cond1 = or i1 %sel_tmp11, %sel_tmp8
  %newSel2 = select i1 %or_cond, i32 %newSel, i32 %newSel1
  %or_cond2 = or i1 %or_cond, %or_cond1
  %newSel3 = select i1 %or_cond2, i32 %newSel2, i32 0
  store i32 %newSel3, i32* %pool_dot_V_addr_1, align 4
  store double %v_assign, double* %max_value
  br label %.preheader713

.preheader711.loopexit:                           ; preds = %.preheader710
  br label %.preheader711

.preheader711:                                    ; preds = %.preheader711.preheader, %.preheader711.loopexit
  %channel6 = phi i5 [ %channel_3, %.preheader711.loopexit ], [ 0, %.preheader711.preheader ]
  %exitcond4 = icmp eq i5 %channel6, -16
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %channel_3 = add i5 %channel6, 1
  br i1 %exitcond4, label %.preheader706.preheader, label %.preheader710.preheader

.preheader706.preheader:                          ; preds = %.preheader711
  %max_value_6 = alloca double
  store double %max_value_load, double* %max_value_6
  br label %.preheader706

.preheader710.preheader:                          ; preds = %.preheader711
  %tmp_19 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 1, i5 %channel6)
  %p_shl6 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56 1, i5 %channel6, i3 0)
  %p_shl7 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %channel6, i1 false)
  %tmp_24 = sub i64 %p_shl6, %p_shl7
  %p_shl10 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %channel6, i5 0)
  %p_shl11 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %channel6, i2 0)
  %tmp_25 = sub i64 %p_shl10, %p_shl11
  %conv_bias_V_addr_1 = getelementptr [48 x i32]* @conv_bias_V, i64 0, i64 %tmp_19
  %p_Val2_15 = load i32* %conv_bias_V_addr_1, align 4
  %tmp_28 = trunc i32 %p_Val2_15 to i31
  br label %.preheader710

.preheader710.loopexit:                           ; preds = %.preheader709
  br label %.preheader710

.preheader710:                                    ; preds = %.preheader710.loopexit, %.preheader710.preheader
  %col7 = phi i4 [ 0, %.preheader710.preheader ], [ %col_3, %.preheader710.loopexit ]
  %exitcond8 = icmp eq i4 %col7, -6
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %col_3 = add i4 %col7, 1
  br i1 %exitcond8, label %.preheader711.loopexit, label %.preheader709.preheader

.preheader709.preheader:                          ; preds = %.preheader710
  %tmp_6 = zext i4 %col7 to i64
  %tmp_63 = add i64 %tmp_25, %tmp_6
  %tmp_71 = trunc i64 %tmp_63 to i12
  %p_shl22_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_71, i5 0)
  %tmp_73 = trunc i64 %tmp_63 to i15
  %p_shl23_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_73, i2 0)
  %tmp_76 = sub i17 %p_shl22_cast, %p_shl23_cast
  br label %.preheader709

.preheader709:                                    ; preds = %._crit_edge732, %.preheader709.preheader
  %row8 = phi i4 [ %row_2, %._crit_edge732 ], [ 0, %.preheader709.preheader ]
  %exitcond13 = icmp eq i4 %row8, -6
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %row_2 = add i4 %row8, 1
  br i1 %exitcond13, label %.preheader710.loopexit, label %2

; <label>:2                                       ; preds = %.preheader709
  %tmp_25_cast = zext i4 %row8 to i17
  %tmp_112 = add i17 %tmp_76, %tmp_25_cast
  %tmp_167_cast = zext i17 %tmp_112 to i64
  %conv_dot_V_addr_2 = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_167_cast
  store i32 0, i32* %conv_dot_V_addr_2, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader708
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  %fil_col9 = phi i3 [ 0, %2 ], [ %fil_col_2, %.loopexit.loopexit ]
  %fil_col9_cast = zext i3 %fil_col9 to i4
  %exitcond18 = icmp eq i3 %fil_col9, -3
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_2 = add i3 %fil_col9, 1
  br i1 %exitcond18, label %._crit_edge732, label %.preheader708.preheader

.preheader708.preheader:                          ; preds = %.loopexit
  %tmp_38_cast = zext i3 %fil_col9 to i14
  %tmp_39 = add i4 %fil_col9_cast, %col7
  %tmp_40 = zext i4 %tmp_39 to i64
  br label %.preheader708

.preheader708.loopexit:                           ; preds = %.preheader707
  br label %.preheader708

.preheader708:                                    ; preds = %.preheader708.loopexit, %.preheader708.preheader
  %fil_row2 = phi i3 [ 0, %.preheader708.preheader ], [ %fil_row_2, %.preheader708.loopexit ]
  %fil_row2_cast = zext i3 %fil_row2 to i4
  %exitcond24 = icmp eq i3 %fil_row2, -3
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_2 = add i3 %fil_row2, 1
  br i1 %exitcond24, label %.loopexit.loopexit, label %.preheader707.preheader

.preheader707.preheader:                          ; preds = %.preheader708
  %tmp_58 = zext i3 %fil_row2 to i64
  %tmp_59 = add i4 %fil_row2_cast, %row8
  %tmp_60_cast = zext i4 %tmp_59 to i15
  br label %.preheader707

.preheader707:                                    ; preds = %_ifconv37, %.preheader707.preheader
  %sample1 = phi i3 [ %sample, %_ifconv37 ], [ 0, %.preheader707.preheader ]
  %exitcond29 = icmp eq i3 %sample1, -2
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %sample = add i3 %sample1, 1
  br i1 %exitcond29, label %.preheader708.loopexit, label %_ifconv37

_ifconv37:                                        ; preds = %.preheader707
  %tmp_80 = zext i3 %sample1 to i64
  %tmp_198 = add i64 %tmp_24, %tmp_80
  %tmp_199 = shl i64 %tmp_198, 2
  %tmp_200 = add i64 %tmp_198, %tmp_199
  %tmp_201 = add i64 %tmp_200, %tmp_58
  %tmp_202 = trunc i64 %tmp_201 to i14
  %tmp_203 = trunc i64 %tmp_201 to i12
  %p_shl28_cast = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_203, i2 0)
  %tmp_204 = add i14 %tmp_202, %p_shl28_cast
  %tmp_205 = add i14 %tmp_204, %tmp_38_cast
  %tmp_209_cast = zext i14 %tmp_205 to i64
  %conv_weight_addr_1 = getelementptr [7200 x i8]* @conv_weight, i64 0, i64 %tmp_209_cast
  %p_shl18 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %sample1, i4 0)
  %p_shl19 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %sample1, i1 false)
  %tmp_206 = sub i64 %p_shl18, %p_shl19
  %tmp_207 = add i64 %tmp_206, %tmp_40
  %tmp_208 = trunc i64 %tmp_207 to i11
  %p_shl24_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_208, i4 0)
  %tmp_209 = trunc i64 %tmp_207 to i14
  %p_shl25_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_209, i1 false)
  %tmp_210 = sub i15 %p_shl24_cast, %p_shl25_cast
  %tmp_211 = add i15 %tmp_210, %tmp_60_cast
  %tmp_215_cast = zext i15 %tmp_211 to i64
  %pool_dot_V_addr_2 = getelementptr [9408 x i32]* @pool_dot_V, i64 0, i64 %tmp_215_cast
  %weight = load i8* %conv_weight_addr_1, align 1
  %tmp_212 = trunc i8 %weight to i6
  %tmp_213 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight, i32 7)
  %tmp_214 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight, i32 6)
  %rev3 = xor i1 %tmp_214, true
  %sh_3 = zext i6 %tmp_212 to i32
  %pool_dot_V_load_1 = load i32* %pool_dot_V_addr_2, align 4
  %p_Val2_31 = shl i32 %pool_dot_V_load_1, %sh_3
  %p_Val2_33 = load i32* %conv_dot_V_addr_2, align 4
  %p_Val2_34 = sub i32 %p_Val2_33, %p_Val2_31
  %p_Val2_35 = ashr i32 %pool_dot_V_load_1, %sh_3
  %p_Val2_36 = sub i32 %p_Val2_33, %p_Val2_35
  %sel_tmp36 = xor i1 %tmp_213, true
  %sel_tmp37 = and i1 %rev3, %sel_tmp36
  %sel_tmp40_v = select i1 %sel_tmp37, i32 %p_Val2_31, i32 %p_Val2_35
  %sel_tmp38 = add i32 %sel_tmp40_v, %p_Val2_33
  %sel_tmp39 = and i1 %tmp_213, %tmp_214
  %sel_tmp40 = select i1 %sel_tmp39, i32 %p_Val2_36, i32 %sel_tmp38
  %sel_tmp41 = and i1 %tmp_213, %rev3
  %storemerge5 = select i1 %sel_tmp41, i32 %p_Val2_34, i32 %sel_tmp40
  store i32 %storemerge5, i32* %conv_dot_V_addr_2, align 4
  br label %.preheader707

._crit_edge732:                                   ; preds = %.loopexit
  %p_Val2_14 = load i32* %conv_dot_V_addr_2, align 4
  %tmp_161 = trunc i32 %p_Val2_14 to i31
  %p_Val2_6 = add i32 %p_Val2_14, %p_Val2_15
  %p_Val2_6_cast = add i31 %tmp_28, %tmp_161
  %tmp_162 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %p_Val2_6_31 = select i1 %tmp_162, i31 0, i31 %p_Val2_6_cast
  %p_Val2_6_cast_32 = zext i31 %p_Val2_6_31 to i32
  store i32 %p_Val2_6_cast_32, i32* %conv_dot_V_addr_2, align 4
  br label %.preheader709

.preheader706.loopexit:                           ; preds = %.preheader705
  br label %.preheader706

.preheader706:                                    ; preds = %.preheader706.loopexit, %.preheader706.preheader
  %i = phi i5 [ 0, %.preheader706.preheader ], [ %i_1, %.preheader706.loopexit ]
  %max_value_6_load = load double* %max_value_6
  %exitcond7 = icmp eq i5 %i, -16
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_1 = add i5 %i, 1
  br i1 %exitcond7, label %.preheader702.preheader, label %.preheader705.preheader

.preheader702.preheader:                          ; preds = %.preheader706
  br label %.preheader702

.preheader705.preheader:                          ; preds = %.preheader706
  %p_shl12 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %i, i5 0)
  %p_shl13 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %i, i2 0)
  %tmp_60 = sub i64 %p_shl12, %p_shl13
  %p_shl14 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i, i4 0)
  %p_shl15 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i, i1 false)
  %tmp_61 = sub i64 %p_shl14, %p_shl15
  br label %.preheader705

.preheader705.loopexit:                           ; preds = %.preheader704
  br label %.preheader705

.preheader705:                                    ; preds = %.preheader705.loopexit, %.preheader705.preheader
  %j = phi i3 [ 0, %.preheader705.preheader ], [ %j_1, %.preheader705.loopexit ]
  %exitcond12 = icmp eq i3 %j, -3
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_1 = add i3 %j, 1
  br i1 %exitcond12, label %.preheader706.loopexit, label %.preheader704.preheader

.preheader704.preheader:                          ; preds = %.preheader705
  %tmp_20 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j, i1 false)
  %tmp_21 = zext i4 %tmp_20 to i64
  %tmp_95 = add i64 %tmp_21, %tmp_60
  %tmp_99 = trunc i64 %tmp_95 to i12
  %p_shl36_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_99, i5 0)
  %tmp_102 = trunc i64 %tmp_95 to i15
  %p_shl37_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_102, i2 0)
  %tmp_107 = sub i17 %p_shl36_cast, %p_shl37_cast
  %tmp_22 = zext i3 %j to i64
  %tmp_108 = add i64 %tmp_22, %tmp_61
  %tmp_109 = trunc i64 %tmp_108 to i11
  %p_shl34_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_109, i4 0)
  %tmp_110 = trunc i64 %tmp_108 to i14
  %p_shl35_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_110, i1 false)
  %tmp_111 = sub i15 %p_shl34_cast, %p_shl35_cast
  br label %.preheader704

.preheader704:                                    ; preds = %_ifconv51, %.preheader704.preheader
  %k = phi i3 [ %k_2, %_ifconv51 ], [ 0, %.preheader704.preheader ]
  %exitcond17 = icmp eq i3 %k, -3
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_2 = add i3 %k, 1
  br i1 %exitcond17, label %.preheader705.loopexit, label %_ifconv49

_ifconv49:                                        ; preds = %.preheader704
  %tmp_32 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %k, i1 false)
  %tmp_33_cast = zext i4 %tmp_32 to i17
  %tmp_160 = add i17 %tmp_33_cast, %tmp_107
  %tmp_186_cast = zext i17 %tmp_160 to i64
  %conv_dot_V_addr_3 = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_186_cast
  %conv_dot_V_load_2 = load i32* %conv_dot_V_addr_3, align 4
  %tmp_34 = icmp eq i32 %conv_dot_V_load_2, 0
  %dp_3 = sitofp i32 %conv_dot_V_load_2 to double
  %res_V = bitcast double %dp_3 to i64
  %exp_V_2 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V, i32 52, i32 62)
  %exp_V_17 = add i11 %exp_V_2, -22
  %p_Result_3 = call i64 @llvm.part.set.i64.i11(i64 %res_V, i11 %exp_V_17, i32 52, i32 62) nounwind
  %dp_2 = bitcast i64 %p_Result_3 to double
  %v_assign_1_ph = select i1 %tmp_34, double 0.000000e+00, double %dp_2
  br label %to_double.exit835

to_double.exit835.loopexit:                       ; preds = %.preheader703
  br label %to_double.exit835

to_double.exit835:                                ; preds = %to_double.exit835.loopexit, %_ifconv49
  %v_assign_1 = phi double [ %v_assign_1_ph, %_ifconv49 ], [ %op1_assign_1, %to_double.exit835.loopexit ]
  %l = phi i2 [ 0, %_ifconv49 ], [ %l_1, %to_double.exit835.loopexit ]
  %l_cast = zext i2 %l to i4
  %exitcond27 = icmp eq i2 %l, -2
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %l_1 = add i2 %l, 1
  br i1 %exitcond27, label %_ifconv51, label %.preheader703.preheader

.preheader703.preheader:                          ; preds = %to_double.exit835
  %tmp_78 = add i4 %l_cast, %tmp_20
  %tmp_79 = zext i4 %tmp_78 to i64
  %tmp_178 = add i64 %tmp_60, %tmp_79
  %tmp_183 = trunc i64 %tmp_178 to i12
  %p_shl38_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_183, i5 0)
  %tmp_184 = trunc i64 %tmp_178 to i15
  %p_shl39_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_184, i2 0)
  %tmp_185 = sub i17 %p_shl38_cast, %p_shl39_cast
  br label %.preheader703

.preheader703:                                    ; preds = %_ifconv46, %.preheader703.preheader
  %op1_assign_1 = phi double [ %max_value_s, %_ifconv46 ], [ %v_assign_1, %.preheader703.preheader ]
  %m = phi i2 [ %m_1, %_ifconv46 ], [ 0, %.preheader703.preheader ]
  %m_cast = zext i2 %m to i4
  %exitcond28 = icmp eq i2 %m, -2
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %m_1 = add i2 %m, 1
  br i1 %exitcond28, label %to_double.exit835.loopexit, label %_ifconv46

_ifconv46:                                        ; preds = %.preheader703
  %tmp_94 = add i4 %m_cast, %tmp_32
  %tmp_95_cast = zext i4 %tmp_94 to i17
  %tmp_195 = add i17 %tmp_185, %tmp_95_cast
  %tmp_202_cast = zext i17 %tmp_195 to i64
  %conv_dot_V_addr_5 = getelementptr [37632 x i32]* @conv_dot_V, i64 0, i64 %tmp_202_cast
  %conv_dot_V_load_6 = load i32* %conv_dot_V_addr_5, align 4
  %tmp_96 = icmp eq i32 %conv_dot_V_load_6, 0
  %dp_6 = sitofp i32 %conv_dot_V_load_6 to double
  %res_V_18 = bitcast double %dp_6 to i64
  %exp_V_7 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_18, i32 52, i32 62)
  %exp_V_18 = add i11 -22, %exp_V_7
  %p_Result_4 = call i64 @llvm.part.set.i64.i11(i64 %res_V_18, i11 %exp_V_18, i32 52, i32 62) nounwind
  %dp_7 = bitcast i64 %p_Result_4 to double
  %p_0_i2 = select i1 %tmp_96, double 0.000000e+00, double %dp_7
  %p_0_i2_to_int = bitcast double %p_0_i2 to i64
  %tmp_113 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i2_to_int, i32 52, i32 62)
  %tmp_196 = trunc i64 %p_0_i2_to_int to i52
  %op1_assign_1_to_int = bitcast double %op1_assign_1 to i64
  %tmp_115 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %op1_assign_1_to_int, i32 52, i32 62)
  %tmp_197 = trunc i64 %op1_assign_1_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_113, -1
  %notrhs2 = icmp eq i52 %tmp_196, 0
  %tmp_117 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_115, -1
  %notrhs3 = icmp eq i52 %tmp_197, 0
  %tmp_118 = or i1 %notrhs3, %notlhs3
  %tmp_119 = and i1 %tmp_117, %tmp_118
  %tmp_120 = fcmp ogt double %p_0_i2, %op1_assign_1
  %tmp_121 = and i1 %tmp_119, %tmp_120
  %tmp_122 = xor i1 %tmp_121, true
  %brmerge2 = or i1 %tmp_96, %tmp_122
  %op1_assign_1_mux = select i1 %tmp_121, double 0.000000e+00, double %op1_assign_1
  %max_value_s = select i1 %brmerge2, double %op1_assign_1_mux, double %dp_7
  br label %.preheader703

_ifconv51:                                        ; preds = %to_double.exit835
  %tmp_71_cast = zext i3 %k to i15
  %tmp_176 = add i15 %tmp_71_cast, %tmp_111
  %tmp_193_cast = zext i15 %tmp_176 to i64
  %pool_dot_V_addr_3 = getelementptr [9408 x i32]* @pool_dot_V, i64 0, i64 %tmp_193_cast
  %ireg_V_1 = bitcast double %v_assign_1 to i64
  %tmp_177 = trunc i64 %ireg_V_1 to i63
  %isneg_1 = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V_1, i32 63)
  %exp_tmp_V_1 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V_1, i32 52, i32 62)
  %tmp_72 = zext i11 %exp_tmp_V_1 to i12
  %tmp_179 = trunc i64 %ireg_V_1 to i52
  %tmp_75 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_179)
  %p_Result_5 = zext i53 %tmp_75 to i54
  %man_V_4 = sub i54 0, %p_Result_5
  %man_V_5 = select i1 %isneg_1, i54 %man_V_4, i54 %p_Result_5
  %tmp_77 = icmp eq i63 %tmp_177, 0
  %F2_1 = sub i12 1075, %tmp_72
  %tmp_88 = icmp sgt i12 %F2_1, 22
  %tmp_89 = add i12 -22, %F2_1
  %tmp_90 = sub i12 22, %F2_1
  %sh_amt_1 = select i1 %tmp_88, i12 %tmp_89, i12 %tmp_90
  %sh_amt_1_cast = sext i12 %sh_amt_1 to i32
  %tmp_91 = icmp eq i12 %F2_1, 22
  %tmp_180 = trunc i54 %man_V_5 to i32
  %tmp_97 = icmp ult i12 %sh_amt_1, 54
  %tmp_181 = call i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12 %sh_amt_1, i32 5, i32 11)
  %icmp1 = icmp eq i7 %tmp_181, 0
  %tmp_100 = zext i32 %sh_amt_1_cast to i54
  %tmp_101 = ashr i54 %man_V_5, %tmp_100
  %tmp_182 = trunc i54 %tmp_101 to i32
  %storemerge7 = select i1 %isneg_1, i32 -1, i32 0
  %tmp_103 = shl i32 %tmp_180, %sh_amt_1_cast
  %sel_tmp21 = xor i1 %tmp_77, true
  %sel_tmp22 = and i1 %tmp_91, %sel_tmp21
  %sel_tmp58_demorgan = or i1 %tmp_77, %tmp_91
  %sel_tmp23 = xor i1 %sel_tmp58_demorgan, true
  %sel_tmp24 = and i1 %tmp_88, %sel_tmp23
  %sel_tmp25 = xor i1 %tmp_97, true
  %sel_tmp26 = and i1 %sel_tmp24, %sel_tmp25
  %sel_tmp27 = and i1 %sel_tmp24, %tmp_97
  %sel_tmp73_demorgan = or i1 %sel_tmp58_demorgan, %tmp_88
  %sel_tmp28 = xor i1 %sel_tmp73_demorgan, true
  %sel_tmp29 = and i1 %icmp1, %sel_tmp28
  %newSel4 = select i1 %sel_tmp29, i32 %tmp_103, i32 %tmp_182
  %or_cond3 = or i1 %sel_tmp29, %sel_tmp27
  %newSel5 = select i1 %sel_tmp26, i32 %storemerge7, i32 %tmp_180
  %or_cond4 = or i1 %sel_tmp26, %sel_tmp22
  %newSel6 = select i1 %or_cond3, i32 %newSel4, i32 %newSel5
  %or_cond5 = or i1 %or_cond3, %or_cond4
  %newSel7 = select i1 %or_cond5, i32 %newSel6, i32 0
  store i32 %newSel7, i32* %pool_dot_V_addr_3, align 4
  store double %v_assign_1, double* %max_value_6
  br label %.preheader704

.preheader702.loopexit:                           ; preds = %.preheader701
  br label %.preheader702

.preheader702:                                    ; preds = %.preheader702.preheader, %.preheader702.loopexit
  %i1 = phi i5 [ %i_2, %.preheader702.loopexit ], [ 0, %.preheader702.preheader ]
  %phi_mul = phi i9 [ %next_mul, %.preheader702.loopexit ], [ 0, %.preheader702.preheader ]
  %next_mul = add i9 %phi_mul, 25
  %exitcond11 = icmp eq i5 %i1, -16
  %empty_38 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_2 = add i5 %i1, 1
  br i1 %exitcond11, label %.preheader699.preheader, label %.preheader701.preheader

.preheader699.preheader:                          ; preds = %.preheader702
  br label %.preheader699

.preheader701.preheader:                          ; preds = %.preheader702
  %p_shl16 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i1, i4 0)
  %p_shl17 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i1, i1 false)
  %tmp_93 = sub i64 %p_shl16, %p_shl17
  br label %.preheader701

.preheader701.loopexit:                           ; preds = %.preheader700
  br label %.preheader701

.preheader701:                                    ; preds = %.preheader701.loopexit, %.preheader701.preheader
  %j1 = phi i3 [ 0, %.preheader701.preheader ], [ %j_2, %.preheader701.loopexit ]
  %j1_cast = zext i3 %j1 to i5
  %exitcond16 = icmp eq i3 %j1, -3
  %empty_39 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_2 = add i3 %j1, 1
  br i1 %exitcond16, label %.preheader702.loopexit, label %.preheader700.preheader

.preheader700.preheader:                          ; preds = %.preheader701
  %p_shl = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j1, i2 0)
  %tmp_29 = zext i3 %j1 to i64
  %tmp_156 = add i64 %tmp_29, %tmp_93
  %tmp_157 = trunc i64 %tmp_156 to i11
  %p_shl42_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_157, i4 0)
  %tmp_158 = trunc i64 %tmp_156 to i14
  %p_shl43_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_158, i1 false)
  %tmp_159 = sub i15 %p_shl42_cast, %p_shl43_cast
  %tmp109 = add i5 %p_shl, %j1_cast
  %tmp112_cast = zext i5 %tmp109 to i9
  br label %.preheader700

.preheader700:                                    ; preds = %3, %.preheader700.preheader
  %k1 = phi i3 [ %k_1, %3 ], [ 0, %.preheader700.preheader ]
  %k1_cast = zext i3 %k1 to i9
  %exitcond23 = icmp eq i3 %k1, -3
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_1 = add i3 %k1, 1
  br i1 %exitcond23, label %.preheader701.loopexit, label %3

; <label>:3                                       ; preds = %.preheader700
  %tmp110 = add i9 %k1_cast, %phi_mul
  %tmp_54 = add i9 %tmp112_cast, %tmp110
  %tmp_55 = zext i9 %tmp_54 to i64
  %tmp_56_cast = zext i3 %k1 to i15
  %tmp_175 = add i15 %tmp_159, %tmp_56_cast
  %tmp_192_cast = zext i15 %tmp_175 to i64
  %pool_dot_V_addr = getelementptr [9408 x i32]* @pool_dot_V, i64 0, i64 %tmp_192_cast
  %pool_dot_V_load = load i32* %pool_dot_V_addr, align 4
  %fc_in_V_addr = getelementptr [400 x i32]* @fc_in_V, i64 0, i64 %tmp_55
  store i32 %pool_dot_V_load, i32* %fc_in_V_addr, align 4
  br label %.preheader700

.preheader699:                                    ; preds = %.preheader699.preheader, %._crit_edge734
  %col4 = phi i7 [ %col_4, %._crit_edge734 ], [ 0, %.preheader699.preheader ]
  %exitcond15 = icmp eq i7 %col4, -8
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %col_4 = add i7 %col4, 1
  br i1 %exitcond15, label %.preheader698.preheader, label %4

.preheader698.preheader:                          ; preds = %.preheader699
  br label %.preheader698

; <label>:4                                       ; preds = %.preheader699
  %tmp_15 = zext i7 %col4 to i64
  %tmp_15_cast1 = zext i7 %col4 to i19
  %tmp_15_cast = zext i7 %col4 to i8
  %tmp_155 = add i8 %tmp_15_cast, 120
  %tmp_181_cast = zext i8 %tmp_155 to i64
  %fc_bias_V_addr = getelementptr [480 x i32]* @fc_bias_V, i64 0, i64 %tmp_181_cast
  %fc_dot_V_addr = getelementptr [3 x [120 x i32]]* @fc_dot_V, i64 0, i64 1, i64 %tmp_15
  br label %5

; <label>:5                                       ; preds = %_ifconv76, %4
  %p_Val2_18 = phi i32 [ 0, %4 ], [ %storemerge3, %_ifconv76 ]
  %row2 = phi i9 [ 0, %4 ], [ %row_4, %_ifconv76 ]
  %phi_mul1 = phi i18 [ 0, %4 ], [ %next_mul1, %_ifconv76 ]
  %phi_mul44_cast = zext i18 %phi_mul1 to i19
  store i32 %p_Val2_18, i32* %fc_dot_V_addr, align 4
  %exitcond22 = icmp eq i9 %row2, -112
  %empty_42 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 400, i64 400, i64 400) nounwind
  %row_4 = add i9 %row2, 1
  br i1 %exitcond22, label %._crit_edge734, label %_ifconv76

_ifconv76:                                        ; preds = %5
  %tmp_35 = zext i9 %row2 to i64
  %next_mul1 = add i18 400, %phi_mul1
  %tmp_170 = add i19 160000, %phi_mul44_cast
  %tmp_171 = add i19 %tmp_170, %tmp_15_cast1
  %tmp_191_cast = zext i19 %tmp_171 to i64
  %fc_weight_addr = getelementptr [640000 x i8]* @fc_weight, i64 0, i64 %tmp_191_cast
  %weight_1 = load i8* %fc_weight_addr, align 1
  %tmp_172 = trunc i8 %weight_1 to i6
  %tmp_173 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_1, i32 7)
  %tmp_174 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_1, i32 6)
  %rev1 = xor i1 %tmp_174, true
  %sh_1 = zext i6 %tmp_172 to i32
  %fc_in_V_addr_1 = getelementptr [400 x i32]* @fc_in_V, i64 0, i64 %tmp_35
  %fc_in_V_load = load i32* %fc_in_V_addr_1, align 4
  %p_Val2_16 = shl i32 %fc_in_V_load, %sh_1
  %p_Val2_17 = sub i32 %p_Val2_18, %p_Val2_16
  %p_Val2_22 = ashr i32 %fc_in_V_load, %sh_1
  %p_Val2_23 = sub i32 %p_Val2_18, %p_Val2_22
  %sel_tmp15 = xor i1 %tmp_173, true
  %sel_tmp16 = and i1 %rev1, %sel_tmp15
  %sel_tmp79_v = select i1 %sel_tmp16, i32 %p_Val2_16, i32 %p_Val2_22
  %sel_tmp17 = add i32 %sel_tmp79_v, %p_Val2_18
  %sel_tmp18 = and i1 %tmp_173, %tmp_174
  %sel_tmp19 = select i1 %sel_tmp18, i32 %p_Val2_23, i32 %sel_tmp17
  %sel_tmp20 = and i1 %tmp_173, %rev1
  %storemerge3 = select i1 %sel_tmp20, i32 %p_Val2_17, i32 %sel_tmp19
  br label %5

._crit_edge734:                                   ; preds = %5
  %p_Val2_21 = load i32* %fc_bias_V_addr, align 4
  %tmp_167 = trunc i32 %p_Val2_21 to i31
  %tmp_168 = trunc i32 %p_Val2_18 to i31
  %p_Val2_s_43 = add i32 %p_Val2_18, %p_Val2_21
  %p_Val2_cast = add i31 %tmp_167, %tmp_168
  %tmp_169 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s_43, i32 31)
  %p_Val2_s_44 = select i1 %tmp_169, i31 0, i31 %p_Val2_cast
  %p_Val2_cast_45 = zext i31 %p_Val2_s_44 to i32
  store i32 %p_Val2_cast_45, i32* %fc_dot_V_addr, align 4
  br label %.preheader699

.preheader698:                                    ; preds = %.preheader698.preheader, %._crit_edge735
  %col5 = phi i7 [ %col_5, %._crit_edge735 ], [ 0, %.preheader698.preheader ]
  %exitcond20 = icmp eq i7 %col5, -44
  %empty_46 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %col_5 = add i7 %col5, 1
  br i1 %exitcond20, label %.preheader.preheader, label %6

.preheader.preheader:                             ; preds = %.preheader698
  br label %.preheader

; <label>:6                                       ; preds = %.preheader698
  %tmp_23 = zext i7 %col5 to i64
  %tmp_23_cast1 = zext i7 %col5 to i19
  %tmp_23_cast = zext i7 %col5 to i9
  %tmp_166 = add i9 %tmp_23_cast, 240
  %tmp_188_cast = zext i9 %tmp_166 to i64
  %fc_bias_V_addr_1 = getelementptr [480 x i32]* @fc_bias_V, i64 0, i64 %tmp_188_cast
  %fc_dot_V_addr_1 = getelementptr [3 x [120 x i32]]* @fc_dot_V, i64 0, i64 2, i64 %tmp_23
  br label %7

; <label>:7                                       ; preds = %_ifconv85, %6
  %p_Val2_25 = phi i32 [ 0, %6 ], [ %storemerge4, %_ifconv85 ]
  %row4 = phi i7 [ 0, %6 ], [ %row_5, %_ifconv85 ]
  %phi_mul2 = phi i16 [ 0, %6 ], [ %next_mul2, %_ifconv85 ]
  %phi_mul46_cast = zext i16 %phi_mul2 to i19
  store i32 %p_Val2_25, i32* %fc_dot_V_addr_1, align 4
  %exitcond26 = icmp eq i7 %row4, -8
  %empty_47 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %row_5 = add i7 %row4, 1
  br i1 %exitcond26, label %._crit_edge735, label %_ifconv85

_ifconv85:                                        ; preds = %7
  %tmp_57 = zext i7 %row4 to i64
  %next_mul2 = add i16 400, %phi_mul2
  %tmp_190 = add i19 -204288, %phi_mul46_cast
  %tmp_191 = add i19 %tmp_190, %tmp_23_cast1
  %tmp_201_cast = zext i19 %tmp_191 to i64
  %fc_weight_addr_1 = getelementptr [640000 x i8]* @fc_weight, i64 0, i64 %tmp_201_cast
  %weight_2 = load i8* %fc_weight_addr_1, align 1
  %tmp_192 = trunc i8 %weight_2 to i6
  %tmp_193 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_2, i32 7)
  %tmp_194 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_2, i32 6)
  %rev2 = xor i1 %tmp_194, true
  %sh_2 = zext i6 %tmp_192 to i32
  %fc_dot_V_addr_3 = getelementptr [3 x [120 x i32]]* @fc_dot_V, i64 0, i64 1, i64 %tmp_57
  %fc_dot_V_load = load i32* %fc_dot_V_addr_3, align 4
  %p_Val2_27 = shl i32 %fc_dot_V_load, %sh_2
  %p_Val2_28 = sub i32 %p_Val2_25, %p_Val2_27
  %p_Val2_29 = ashr i32 %fc_dot_V_load, %sh_2
  %p_Val2_30 = sub i32 %p_Val2_25, %p_Val2_29
  %sel_tmp30 = xor i1 %tmp_193, true
  %sel_tmp31 = and i1 %rev2, %sel_tmp30
  %sel_tmp88_v = select i1 %sel_tmp31, i32 %p_Val2_27, i32 %p_Val2_29
  %sel_tmp32 = add i32 %sel_tmp88_v, %p_Val2_25
  %sel_tmp33 = and i1 %tmp_193, %tmp_194
  %sel_tmp34 = select i1 %sel_tmp33, i32 %p_Val2_30, i32 %sel_tmp32
  %sel_tmp35 = and i1 %tmp_193, %rev2
  %storemerge4 = select i1 %sel_tmp35, i32 %p_Val2_28, i32 %sel_tmp34
  br label %7

._crit_edge735:                                   ; preds = %7
  %p_Val2_26 = load i32* %fc_bias_V_addr_1, align 4
  %tmp_187 = trunc i32 %p_Val2_26 to i31
  %tmp_188 = trunc i32 %p_Val2_25 to i31
  %p_Val2_1 = add i32 %p_Val2_25, %p_Val2_26
  %p_Val2_1_cast = add i31 %tmp_187, %tmp_188
  %tmp_189 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %p_Val2_1_48 = select i1 %tmp_189, i31 0, i31 %p_Val2_1_cast
  %p_Val2_1_cast_49 = zext i31 %p_Val2_1_48 to i32
  store i32 %p_Val2_1_cast_49, i32* %fc_dot_V_addr_1, align 4
  br label %.preheader698

.preheader:                                       ; preds = %.preheader.preheader, %_ifconv94
  %d_assign_1 = phi double [ %max_value_4, %_ifconv94 ], [ %max_value_6_load, %.preheader.preheader ]
  %max_index = phi i32 [ %max_index_2, %_ifconv94 ], [ undef, %.preheader.preheader ]
  %max_index_1 = phi i4 [ %col_6, %_ifconv94 ], [ 0, %.preheader.preheader ]
  %max_index_1_cast = zext i4 %max_index_1 to i32
  %exitcond21 = icmp eq i4 %max_index_1, -6
  %empty_50 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %col_6 = add i4 %max_index_1, 1
  br i1 %exitcond21, label %10, label %8

; <label>:8                                       ; preds = %.preheader
  %tmp_30 = zext i4 %max_index_1 to i64
  %tmp_30_cast = zext i4 %max_index_1 to i9
  %tmp_186 = add i9 %tmp_30_cast, -152
  %tmp_198_cast = zext i9 %tmp_186 to i64
  %fc_bias_V_addr_2 = getelementptr [480 x i32]* @fc_bias_V, i64 0, i64 %tmp_198_cast
  %fc_dot_V_addr_2 = getelementptr [3 x [120 x i32]]* @fc_dot_V, i64 1, i64 0, i64 %tmp_30
  br label %9

; <label>:9                                       ; preds = %"operator<<.exit", %8
  %p_Val2_37 = phi i32 [ 0, %8 ], [ %p_Val2_19, %"operator<<.exit" ]
  %row5 = phi i7 [ 0, %8 ], [ %row_6, %"operator<<.exit" ]
  %phi_mul3 = phi i16 [ 0, %8 ], [ %next_mul3, %"operator<<.exit" ]
  %phi_mul48_cast_cast = zext i16 %phi_mul3 to i17
  store i32 %p_Val2_37, i32* %fc_dot_V_addr_2, align 4
  %exitcond = icmp eq i7 %row5, -44
  %empty_51 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %row_6 = add i7 %row5, 1
  br i1 %exitcond, label %_ifconv94, label %"operator<<.exit"

"operator<<.exit":                                ; preds = %9
  %tmp_67 = zext i7 %row5 to i64
  %next_mul3 = add i16 400, %phi_mul3
  %tmp_217 = add i17 -44288, %phi_mul48_cast_cast
  %tmp_219 = call i13 @_ssdm_op_PartSelect.i13.i17.i32.i32(i17 %tmp_217, i32 4, i32 16)
  %tmp_220 = call i17 @_ssdm_op_BitConcatenate.i17.i13.i4(i13 %tmp_219, i4 %max_index_1)
  %tmp_222 = sext i17 %tmp_220 to i19
  %tmp_221 = zext i19 %tmp_222 to i64
  %fc_weight_addr_2 = getelementptr [640000 x i8]* @fc_weight, i64 0, i64 %tmp_221
  %weight_3 = load i8* %fc_weight_addr_2, align 1
  %tmp_223 = trunc i8 %weight_3 to i6
  %tmp_224 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_3, i32 7)
  %fc_dot_V_addr_4 = getelementptr [3 x [120 x i32]]* @fc_dot_V, i64 0, i64 2, i64 %tmp_67
  %tmp_225 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %weight_3, i32 6)
  %tmp_117_i_cast = zext i6 %tmp_223 to i7
  %tmp_118_i = sub i7 0, %tmp_117_i_cast
  %i_op_assign = select i1 %tmp_225, i7 %tmp_118_i, i7 %tmp_117_i_cast
  %tmp_226 = trunc i7 %i_op_assign to i6
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %i_op_assign, i32 6)
  %tmp_68_cast = sub i6 0, %tmp_226
  %sh_assign_1 = select i1 %isNeg, i6 %tmp_68_cast, i6 %tmp_226
  %sh_assign_1_cast = zext i6 %sh_assign_1 to i32
  %fc_dot_V_load_2 = load i32* %fc_dot_V_addr_4, align 4
  %tmp_69 = shl i32 %fc_dot_V_load_2, %sh_assign_1_cast
  %tmp_70 = ashr i32 %fc_dot_V_load_2, %sh_assign_1_cast
  %storemerge6 = select i1 %isNeg, i32 %tmp_70, i32 %tmp_69
  %mt = sub i32 0, %storemerge6
  %p_Val2_5 = select i1 %tmp_224, i32 %mt, i32 %storemerge6
  %p_Val2_19 = add i32 %p_Val2_37, %p_Val2_5
  br label %9

_ifconv94:                                        ; preds = %9
  %p_Val2_38 = load i32* %fc_bias_V_addr_2, align 4
  %p_Val2_4 = add i32 %p_Val2_37, %p_Val2_38
  store i32 %p_Val2_4, i32* %fc_dot_V_addr_2, align 4
  %tmp_66 = icmp eq i4 %max_index_1, 0
  %fc_dot_V_load_1 = load i32* getelementptr inbounds ([3 x [120 x i32]]* @fc_dot_V, i64 1, i64 0, i64 0), align 4
  %tmp_86 = icmp eq i32 %p_Val2_4, 0
  %dp_8 = sitofp i32 %fc_dot_V_load_1 to double
  %res_V_19 = bitcast double %dp_8 to i64
  %exp_V_8 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_19, i32 52, i32 62)
  %exp_V_19 = add i11 -22, %exp_V_8
  %p_Result_6 = call i64 @llvm.part.set.i64.i11(i64 %res_V_19, i11 %exp_V_19, i32 52, i32 62) nounwind
  %dp_9 = bitcast i64 %p_Result_6 to double
  %dp_10 = sitofp i32 %p_Val2_4 to double
  %res_V_20 = bitcast double %dp_10 to i64
  %exp_V_12 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %res_V_20, i32 52, i32 62)
  %exp_V_20 = add i11 -22, %exp_V_12
  %p_Result_7 = call i64 @llvm.part.set.i64.i11(i64 %res_V_20, i11 %exp_V_20, i32 52, i32 62) nounwind
  %dp_11 = bitcast i64 %p_Result_7 to double
  %p_0_i = select i1 %tmp_86, double 0.000000e+00, double %dp_11
  %p_0_i_to_int = bitcast double %p_0_i to i64
  %tmp_123 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %p_0_i_to_int, i32 52, i32 62)
  %tmp_215 = trunc i64 %p_0_i_to_int to i52
  %d_assign_1_to_int = bitcast double %d_assign_1 to i64
  %tmp_125 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %d_assign_1_to_int, i32 52, i32 62)
  %tmp_216 = trunc i64 %d_assign_1_to_int to i52
  %notlhs4 = icmp ne i11 %tmp_123, -1
  %notrhs4 = icmp eq i52 %tmp_215, 0
  %tmp_127 = or i1 %notrhs4, %notlhs4
  %notlhs5 = icmp ne i11 %tmp_125, -1
  %notrhs5 = icmp eq i52 %tmp_216, 0
  %tmp_128 = or i1 %notrhs5, %notlhs5
  %tmp_129 = and i1 %tmp_127, %tmp_128
  %tmp_130 = fcmp ogt double %p_0_i, %d_assign_1
  %tmp_131 = and i1 %tmp_129, %tmp_130
  %tmp_132 = xor i1 %tmp_131, true
  %brmerge = or i1 %tmp_86, %tmp_132
  %d_assign_3_mux = select i1 %tmp_131, double 0.000000e+00, double %d_assign_1
  %max_index_mux = select i1 %tmp_131, i32 %max_index_1_cast, i32 %max_index
  %sel_tmp42 = xor i1 %tmp_66, true
  %sel_tmp43 = and i1 %brmerge, %sel_tmp42
  %sel_tmp44 = select i1 %sel_tmp43, double %d_assign_3_mux, double %dp_11
  %sel_tmp45 = icmp ne i32 %fc_dot_V_load_1, 0
  %sel_tmp46 = and i1 %tmp_66, %sel_tmp45
  %sel_tmp47 = select i1 %sel_tmp46, double %dp_9, double %sel_tmp44
  %tmp_218 = trunc i32 %fc_dot_V_load_1 to i4
  %tmp_134 = or i4 %tmp_218, %max_index_1
  %tmp_135 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %fc_dot_V_load_1, i32 4, i32 31)
  %tmp_136 = call i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28 %tmp_135, i4 %tmp_134)
  %tmp_137 = icmp eq i32 %tmp_136, 0
  %max_value_4 = select i1 %tmp_137, double 0.000000e+00, double %sel_tmp47
  %sel_tmp48 = select i1 %sel_tmp43, i32 %max_index_mux, i32 %max_index_1_cast
  %tmp_138 = or i1 %tmp_137, %sel_tmp46
  %max_index_2 = select i1 %tmp_138, i32 0, i32 %sel_tmp48
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

define weak i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_52 = trunc i12 %empty to i7
  ret i7 %empty_52
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i62 @_ssdm_op_PartSelect.i62.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i54.i32.i32(i54, i32, i32) nounwind readnone

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_53 = trunc i32 %empty to i28
  ret i28 %empty_53
}

declare i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i13 @_ssdm_op_PartSelect.i13.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_54 = trunc i17 %empty to i13
  ret i13 %empty_54
}

declare i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_55 = trunc i64 %empty to i11
  ret i11 %empty_55
}

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_56 = shl i8 1, %empty
  %empty_57 = and i8 %0, %empty_56
  %empty_58 = icmp ne i8 %empty_57, 0
  ret i1 %empty_58
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_59 = shl i7 1, %empty
  %empty_60 = and i7 %0, %empty_59
  %empty_61 = icmp ne i7 %empty_60, 0
  ret i1 %empty_61
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_62 = shl i64 1, %empty
  %empty_63 = and i64 %0, %empty_62
  %empty_64 = icmp ne i64 %empty_63, 0
  ret i1 %empty_64
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_65 = and i32 %0, %empty
  %empty_66 = icmp ne i32 %empty_65, 0
  ret i1 %empty_66
}

declare i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62, i2) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61, i3) nounwind readnone {
entry:
  %empty = zext i61 %0 to i64
  %empty_67 = zext i3 %1 to i64
  %empty_68 = shl i64 %empty, 3
  %empty_69 = or i64 %empty_68, %empty_67
  ret i64 %empty_69
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60, i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %1 to i4
  %empty_70 = zext i1 %2 to i4
  %empty_71 = shl i4 %empty, 1
  %empty_72 = or i4 %empty_71, %empty_70
  %empty_73 = zext i60 %0 to i64
  %empty_74 = zext i4 %empty_72 to i64
  %empty_75 = shl i64 %empty_73, 4
  %empty_76 = or i64 %empty_75, %empty_74
  ret i64 %empty_76
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59, i5) nounwind readnone {
entry:
  %empty = zext i59 %0 to i64
  %empty_77 = zext i5 %1 to i64
  %empty_78 = shl i64 %empty, 5
  %empty_79 = or i64 %empty_78, %empty_77
  ret i64 %empty_79
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59, i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %1 to i5
  %empty_80 = zext i2 %2 to i5
  %empty_81 = shl i5 %empty, 2
  %empty_82 = or i5 %empty_81, %empty_80
  %empty_83 = zext i59 %0 to i64
  %empty_84 = zext i5 %empty_82 to i64
  %empty_85 = shl i64 %empty_83, 5
  %empty_86 = or i64 %empty_85, %empty_84
  ret i64 %empty_86
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58, i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %1 to i6
  %empty_87 = zext i1 %2 to i6
  %empty_88 = shl i6 %empty, 1
  %empty_89 = or i6 %empty_88, %empty_87
  %empty_90 = zext i58 %0 to i64
  %empty_91 = zext i6 %empty_89 to i64
  %empty_92 = shl i64 %empty_90, 6
  %empty_93 = or i64 %empty_92, %empty_91
  ret i64 %empty_93
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57, i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %1 to i7
  %empty_94 = zext i2 %2 to i7
  %empty_95 = shl i7 %empty, 2
  %empty_96 = or i7 %empty_95, %empty_94
  %empty_97 = zext i57 %0 to i64
  %empty_98 = zext i7 %empty_96 to i64
  %empty_99 = shl i64 %empty_97, 7
  %empty_100 = or i64 %empty_99, %empty_98
  ret i64 %empty_100
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57, i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %1 to i7
  %empty_101 = zext i4 %2 to i7
  %empty_102 = shl i7 %empty, 4
  %empty_103 = or i7 %empty_102, %empty_101
  %empty_104 = zext i57 %0 to i64
  %empty_105 = zext i7 %empty_103 to i64
  %empty_106 = shl i64 %empty_104, 7
  %empty_107 = or i64 %empty_106, %empty_105
  ret i64 %empty_107
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56, i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %1 to i8
  %empty_108 = zext i3 %2 to i8
  %empty_109 = shl i8 %empty, 3
  %empty_110 = or i8 %empty_109, %empty_108
  %empty_111 = zext i56 %0 to i64
  %empty_112 = zext i8 %empty_110 to i64
  %empty_113 = shl i64 %empty_111, 8
  %empty_114 = or i64 %empty_113, %empty_112
  ret i64 %empty_114
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56, i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %1 to i8
  %empty_115 = zext i5 %2 to i8
  %empty_116 = shl i8 %empty, 5
  %empty_117 = or i8 %empty_116, %empty_115
  %empty_118 = zext i56 %0 to i64
  %empty_119 = zext i8 %empty_117 to i64
  %empty_120 = shl i64 %empty_118, 8
  %empty_121 = or i64 %empty_120, %empty_119
  ret i64 %empty_121
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55, i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %1 to i9
  %empty_122 = zext i4 %2 to i9
  %empty_123 = shl i9 %empty, 4
  %empty_124 = or i9 %empty_123, %empty_122
  %empty_125 = zext i55 %0 to i64
  %empty_126 = zext i9 %empty_124 to i64
  %empty_127 = shl i64 %empty_125, 9
  %empty_128 = or i64 %empty_127, %empty_126
  ret i64 %empty_128
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54, i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %1 to i10
  %empty_129 = zext i5 %2 to i10
  %empty_130 = shl i10 %empty, 5
  %empty_131 = or i10 %empty_130, %empty_129
  %empty_132 = zext i54 %0 to i64
  %empty_133 = zext i10 %empty_131 to i64
  %empty_134 = shl i64 %empty_132, 10
  %empty_135 = or i64 %empty_134, %empty_133
  ret i64 %empty_135
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_136 = zext i52 %1 to i53
  %empty_137 = shl i53 %empty, 52
  %empty_138 = or i53 %empty_137, %empty_136
  ret i53 %empty_138
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_139 = zext i1 %1 to i5
  %empty_140 = shl i5 %empty, 1
  %empty_141 = or i5 %empty_140, %empty_139
  ret i5 %empty_141
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_142 = zext i2 %1 to i5
  %empty_143 = shl i5 %empty, 2
  %empty_144 = or i5 %empty_143, %empty_142
  ret i5 %empty_144
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_145 = zext i1 %1 to i4
  %empty_146 = shl i4 %empty, 1
  %empty_147 = or i4 %empty_146, %empty_145
  ret i4 %empty_147
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i28.i4(i28, i4) nounwind readnone {
entry:
  %empty = zext i28 %0 to i32
  %empty_148 = zext i4 %1 to i32
  %empty_149 = shl i32 %empty, 4
  %empty_150 = or i32 %empty_149, %empty_148
  ret i32 %empty_150
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15, i2) nounwind readnone {
entry:
  %empty = zext i15 %0 to i17
  %empty_151 = zext i2 %1 to i17
  %empty_152 = shl i17 %empty, 2
  %empty_153 = or i17 %empty_152, %empty_151
  ret i17 %empty_153
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i13.i4(i13, i4) nounwind readnone {
entry:
  %empty = zext i13 %0 to i17
  %empty_154 = zext i4 %1 to i17
  %empty_155 = shl i17 %empty, 4
  %empty_156 = or i17 %empty_155, %empty_154
  ret i17 %empty_156
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12, i5) nounwind readnone {
entry:
  %empty = zext i12 %0 to i17
  %empty_157 = zext i5 %1 to i17
  %empty_158 = shl i17 %empty, 5
  %empty_159 = or i17 %empty_158, %empty_157
  ret i17 %empty_159
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_160 = zext i1 %1 to i15
  %empty_161 = shl i15 %empty, 1
  %empty_162 = or i15 %empty_161, %empty_160
  ret i15 %empty_162
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11, i4) nounwind readnone {
entry:
  %empty = zext i11 %0 to i15
  %empty_163 = zext i4 %1 to i15
  %empty_164 = shl i15 %empty, 4
  %empty_165 = or i15 %empty_164, %empty_163
  ret i15 %empty_165
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone {
entry:
  %empty = zext i12 %0 to i14
  %empty_166 = zext i2 %1 to i14
  %empty_167 = shl i14 %empty, 2
  %empty_168 = or i14 %empty_167, %empty_166
  ret i14 %empty_168
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_169 = zext i5 %1 to i10
  %empty_170 = shl i10 %empty, 5
  %empty_171 = or i10 %empty_170, %empty_169
  ret i10 %empty_171
}

declare void @_GLOBAL__I_a7() nounwind section ".text.startup"

declare void @_GLOBAL__I_a62() nounwind section ".text.startup"

declare void @_GLOBAL__I_a11547() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !10, !10, !16, !19, !25, !25, !10, !27, !10, !10, !10, !30, !10, !10, !10, !32, !32, !34, !34, !10, !35, !35, !10, !10, !37, !37, !35, !39, !42, !10, !10, !10, !10, !10, !43, !43, !10, !46, !25, !25, !49, !51, !10, !10, !10, !53, !53, !7, !10, !25, !25, !10, !55, !10, !10, !10, !57, !57, !59, !59, !61, !10, !10, !10, !63, !65, !10, !10, !10, !67, !67, !68, !68, !70, !10, !10, !10, !10, !10, !10, !10, !10, !10, !72, !10, !75, !77, !77, !78, !80, !80, !42, !42, !35, !35, !10, !10, !81, !81, !83, !85, !85, !10, !87, !89, !10, !42, !42, !83, !87, !89, !91, !91, !92, !80, !80, !94, !10, !96, !102, !108, !108, !10, !53, !53, !7, !10, !25, !25, !10, !55, !10, !10, !10, !57, !57, !59, !59, !61, !10, !10, !10, !63, !25, !25, !65, !10, !10, !10, !67, !67, !68, !68, !70, !10, !10, !10, !10, !10, !10, !30, !10, !10, !10, !10, !91, !91, !92, !77, !77, !80, !80, !35, !94, !111, !115, !119, !119, !119, !119, !119, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !53, !53, !7, !10, !25, !25, !10, !55, !10, !10, !10, !57, !57, !59, !59, !61, !10, !10, !10, !63, !25, !25, !10, !65, !10, !10, !10, !67, !67, !68, !68, !70, !10, !10, !10, !10, !10, !30, !10, !10, !10, !10, !91, !91, !92, !77, !77, !80, !80, !126, !53, !53, !7, !30, !91, !91, !92, !80, !80, !128, !53, !53, !7, !30, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !130, !130, !130, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !130, !130, !130, !10, !130, !130, !130, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !10, !135, !135, !135, !135, !138, !138, !138, !138, !140, !140, !140, !140, !135, !135, !135, !135, !138, !138, !138, !138, !140, !140, !140, !140, !141, !144, !10, !10, !10, !147, !25, !25, !10, !150, !150, !152, !10, !10, !10, !154, !154, !10, !10, !156, !77, !77, !10, !78, !158, !158, !10, !160, !160, !162, !160, !160, !162, !164, !25, !25, !170, !10, !10, !10, !172, !25, !25, !10, !10, !10, !63, !25, !25, !65, !10, !10, !10, !67, !67, !68, !68, !51, !10, !10, !162, !162, !10, !174, !175, !176, !176, !179, !179, !181, !181, !184, !186, !186, !10, !10, !10, !10, !188, !190, !190, !10, !10, !179, !191, !191, !91, !91, !92, !80, !80, !193, !195, !195, !193, !197, !197, !199, !201, !201, !10, !10, !202, !204, !204, !179, !179, !205, !205, !199, !202, !204, !204, !10, !179, !207, !207, !209, !210, !210, !212, !10, !174, !209, !214, !214, !216, !216, !10, !10, !10, !10, !10, !10, !10, !10, !141, !218, !10, !10, !10, !147, !220, !220, !222, !10, !154, !154, !10, !10, !224, !78, !226, !226, !10, !228, !228, !230, !228, !228, !230, !164, !232, !10, !10, !10, !234, !25, !25, !51, !10, !10, !230, !230, !195, !195, !193, !141, !236, !10, !10, !10, !147, !25, !25, !10, !238, !238, !240, !10, !154, !154, !10, !10, !242, !78, !244, !244, !10, !246, !246, !248, !246, !246, !248, !164, !250, !10, !10, !10, !252, !25, !25, !51, !10, !10, !248, !248, !195, !195, !193, !141, !254, !10, !10, !10, !147, !25, !25, !10, !256, !256, !258, !10, !154, !154, !10, !10, !260, !78, !262, !262, !10, !264, !264, !266, !264, !264, !266, !164, !268, !10, !10, !10, !270, !25, !25, !51, !10, !10, !266, !266, !195, !195, !193, !272, !274, !10, !276, !276, !278, !276, !276, !278, !280, !10, !10, !10, !282, !25, !25, !10, !284, !286, !288, !288, !51, !10, !10, !278, !278, !10, !174, !175, !289, !289, !179, !179, !291, !291, !293, !295, !295, !10, !10, !10, !10, !296, !298, !298, !10, !10, !179, !299, !299, !91, !91, !92, !80, !80, !301, !303, !303, !301, !305, !305, !306, !308, !308, !10, !10, !309, !311, !311, !179, !179, !312, !312, !306, !309, !311, !311, !179, !314, !314, !209, !316, !316, !318, !10, !320, !320, !10, !10, !10, !10, !272, !321, !323, !323, !325, !323, !323, !325, !327, !10, !10, !10, !329, !25, !25, !51, !10, !10, !325, !325, !303, !303, !301, !272, !331, !333, !333, !335, !333, !333, !335, !337, !10, !10, !10, !339, !25, !25, !51, !10, !10, !335, !335, !303, !303, !301, !272, !341, !343, !343, !345, !343, !343, !345, !347, !10, !10, !10, !349, !25, !25, !51, !10, !10, !345, !345, !303, !303, !301, !351, !353, !10, !355, !27, !357, !357, !359, !357, !357, !359, !361, !10, !10, !10, !363, !25, !25, !10, !365, !366, !368, !368, !51, !10, !10, !359, !359, !10, !174, !175, !370, !370, !179, !179, !372, !372, !374, !376, !376, !10, !10, !10, !377, !379, !379, !10, !179, !380, !380, !91, !91, !92, !80, !80, !382, !384, !384, !382, !386, !386, !387, !389, !389, !10, !10, !390, !392, !392, !179, !179, !393, !393, !387, !390, !392, !392, !10, !179, !395, !395, !209, !397, !397, !399, !10, !401, !401, !10, !10, !10, !10, !10, !351, !403, !405, !405, !407, !405, !405, !407, !409, !10, !10, !411, !25, !25, !51, !10, !10, !407, !407, !384, !384, !382, !351, !413, !415, !415, !417, !415, !415, !417, !419, !10, !10, !10, !421, !25, !25, !51, !10, !10, !417, !417, !384, !384, !382, !351, !423, !425, !425, !427, !425, !425, !427, !429, !10, !10, !10, !431, !25, !25, !51, !10, !10, !427, !427, !384, !384, !382, !141, !433, !10, !10, !10, !10, !435, !435, !437, !437, !439, !441, !441, !10, !174, !209, !443, !443, !154, !154, !10, !445, !78, !447, !447, !10, !160, !160, !162, !160, !160, !162, !164, !141, !449, !10, !10, !10, !10, !451, !451, !80, !80, !453, !455, !455, !10, !174, !209, !457, !457, !154, !154, !10, !459, !78, !461, !461, !10, !228, !228, !230, !10, !228, !228, !230, !164, !141, !463, !10, !10, !10, !10, !465, !465, !467, !467, !469, !471, !471, !10, !174, !209, !473, !473, !154, !154, !10, !475, !78, !477, !477, !10, !246, !246, !248, !10, !246, !246, !248, !164, !141, !479, !10, !10, !10, !10, !481, !481, !483, !483, !485, !487, !487, !10, !174, !209, !489, !489, !154, !154, !10, !491, !78, !493, !493, !10, !264, !264, !266, !10, !264, !264, !266, !164, !272, !495, !276, !276, !278, !276, !276, !278, !272, !497, !323, !323, !325, !323, !323, !325, !272, !499, !333, !333, !335, !333, !333, !335, !272, !501, !343, !343, !345, !343, !343, !345, !351, !503, !357, !357, !359, !357, !357, !359, !351, !505, !405, !405, !407, !405, !405, !407, !351, !507, !415, !415, !417, !415, !415, !417, !351, !509, !425, !425, !427, !425, !425, !427, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !53, !53, !7, !10, !55, !10, !10, !10, !57, !57, !59, !59, !61, !10, !10, !10, !70, !10, !10, !10, !10, !30, !10, !91, !91, !92, !80, !80, !126, !53, !53, !7, !30, !91, !91, !92, !80, !80, !128, !53, !53, !7, !30, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !130, !130, !130, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !130, !130, !130, !10, !130, !130, !130, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121, !10, !121, !121, !121}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!511, !518, !525, !533, !540, !548, !553, !558, !565, !571, !578, !584, !589, !597, !604, !610, !615, !616, !617, !618, !619, !620, !621}

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
!32 = metadata !{null, metadata !1, metadata !2, metadata !33, metadata !4, metadata !29, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<40, 18, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !33, metadata !4, metadata !26, metadata !6}
!35 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !26, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !26, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<41, 19, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!39 = metadata !{null, metadata !20, metadata !21, metadata !40, metadata !23, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"char", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !29, metadata !6}
!43 = metadata !{null, metadata !1, metadata !2, metadata !44, metadata !4, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"char"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!46 = metadata !{null, metadata !20, metadata !21, metadata !47, metadata !23, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"char"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !29, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, true> &"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !54, metadata !6}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!55 = metadata !{null, metadata !20, metadata !21, metadata !56, metadata !23, metadata !24, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !58, metadata !4, metadata !26, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !26, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !29, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!63 = metadata !{null, metadata !20, metadata !21, metadata !64, metadata !23, metadata !48, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!65 = metadata !{null, metadata !20, metadata !21, metadata !66, metadata !23, metadata !24, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!67 = metadata !{null, metadata !1, metadata !2, metadata !28, metadata !4, metadata !26, metadata !6}
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !26, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !29, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!72 = metadata !{null, metadata !20, metadata !21, metadata !73, metadata !23, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"op1", metadata !"op2"}
!75 = metadata !{null, metadata !20, metadata !21, metadata !76, metadata !23, metadata !48, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"int"}
!77 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !45, metadata !6}
!78 = metadata !{null, metadata !1, metadata !2, metadata !79, metadata !4, metadata !29, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!80 = metadata !{null, metadata !1, metadata !2, metadata !79, metadata !4, metadata !26, metadata !6}
!81 = metadata !{null, metadata !1, metadata !2, metadata !82, metadata !4, metadata !26, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 11, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!83 = metadata !{null, metadata !20, metadata !21, metadata !84, metadata !23, metadata !48, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 10, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &", metadata !"uchar"}
!85 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !26, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !29, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !52, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !54, metadata !6}
!92 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !93, metadata !6}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !26, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 10, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!96 = metadata !{null, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !6}
!97 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!98 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!100 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"num", metadata !"row", metadata !"column"}
!102 = metadata !{null, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !6}
!103 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!104 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!106 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"channel", metadata !"sample", metadata !"row", metadata !"column"}
!108 = metadata !{null, metadata !20, metadata !21, metadata !109, metadata !23, metadata !110, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"row"}
!111 = metadata !{null, metadata !112, metadata !98, metadata !113, metadata !100, metadata !114, metadata !6}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"struct timespec", metadata !"struct timespec"}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"name", metadata !"start_time", metadata !"end_time"}
!115 = metadata !{null, metadata !116, metadata !21, metadata !117, metadata !23, metadata !118, metadata !6}
!116 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"uchar", metadata !"uchar*"}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!119 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !120, metadata !6}
!120 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!121 = metadata !{null, metadata !122, metadata !2, metadata !123, metadata !124, metadata !125, metadata !6}
!122 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!124 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!126 = metadata !{null, metadata !1, metadata !2, metadata !127, metadata !4, metadata !26, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!128 = metadata !{null, metadata !1, metadata !2, metadata !129, metadata !4, metadata !26, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!130 = metadata !{null, metadata !131, metadata !21, metadata !132, metadata !133, metadata !134, metadata !6}
!131 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!133 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!135 = metadata !{null, metadata !1, metadata !2, metadata !136, metadata !4, metadata !137, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!137 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!138 = metadata !{null, metadata !1, metadata !2, metadata !139, metadata !4, metadata !137, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!140 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !137, metadata !6}
!141 = metadata !{null, metadata !20, metadata !21, metadata !142, metadata !23, metadata !143, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!144 = metadata !{null, metadata !97, metadata !98, metadata !145, metadata !100, metadata !146, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!146 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!147 = metadata !{null, metadata !1, metadata !2, metadata !148, metadata !4, metadata !149, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!149 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!150 = metadata !{null, metadata !1, metadata !2, metadata !151, metadata !4, metadata !26, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!152 = metadata !{null, metadata !1, metadata !2, metadata !153, metadata !4, metadata !26, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!154 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !155, metadata !6}
!155 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!156 = metadata !{null, metadata !20, metadata !21, metadata !157, metadata !23, metadata !48, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!158 = metadata !{null, metadata !1, metadata !2, metadata !159, metadata !4, metadata !26, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!160 = metadata !{null, metadata !1, metadata !2, metadata !161, metadata !4, metadata !26, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!162 = metadata !{null, metadata !1, metadata !2, metadata !163, metadata !4, metadata !26, metadata !6}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!164 = metadata !{null, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !6}
!165 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!166 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!168 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!169 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!170 = metadata !{null, metadata !20, metadata !21, metadata !171, metadata !23, metadata !24, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!172 = metadata !{null, metadata !1, metadata !2, metadata !173, metadata !4, metadata !29, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!174 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !155, metadata !6}
!175 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !5, metadata !6}
!176 = metadata !{null, metadata !131, metadata !21, metadata !177, metadata !23, metadata !178, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!178 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!179 = metadata !{null, metadata !20, metadata !21, metadata !109, metadata !23, metadata !180, metadata !6}
!180 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!181 = metadata !{null, metadata !112, metadata !98, metadata !182, metadata !100, metadata !183, metadata !6}
!182 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!183 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!184 = metadata !{null, metadata !1, metadata !2, metadata !185, metadata !4, metadata !155, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !185, metadata !4, metadata !187, metadata !6}
!187 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!188 = metadata !{null, metadata !1, metadata !2, metadata !189, metadata !4, metadata !155, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!190 = metadata !{null, metadata !1, metadata !2, metadata !189, metadata !4, metadata !26, metadata !6}
!191 = metadata !{null, metadata !112, metadata !98, metadata !192, metadata !100, metadata !183, metadata !6}
!192 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!193 = metadata !{null, metadata !1, metadata !2, metadata !194, metadata !4, metadata !26, metadata !6}
!194 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!195 = metadata !{null, metadata !1, metadata !2, metadata !196, metadata !4, metadata !26, metadata !6}
!196 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!197 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !198, metadata !6}
!198 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!199 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !155, metadata !6}
!200 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!201 = metadata !{null, metadata !1, metadata !2, metadata !200, metadata !4, metadata !187, metadata !6}
!202 = metadata !{null, metadata !1, metadata !2, metadata !203, metadata !4, metadata !155, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!204 = metadata !{null, metadata !1, metadata !2, metadata !203, metadata !4, metadata !26, metadata !6}
!205 = metadata !{null, metadata !112, metadata !98, metadata !206, metadata !100, metadata !183, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!207 = metadata !{null, metadata !112, metadata !98, metadata !208, metadata !100, metadata !183, metadata !6}
!208 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!209 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!210 = metadata !{null, metadata !131, metadata !21, metadata !211, metadata !23, metadata !178, metadata !6}
!211 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!212 = metadata !{null, metadata !1, metadata !2, metadata !213, metadata !4, metadata !155, metadata !6}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!214 = metadata !{null, metadata !131, metadata !21, metadata !215, metadata !23, metadata !178, metadata !6}
!215 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!216 = metadata !{null, metadata !1, metadata !2, metadata !217, metadata !4, metadata !155, metadata !6}
!217 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!218 = metadata !{null, metadata !97, metadata !98, metadata !219, metadata !100, metadata !146, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!220 = metadata !{null, metadata !1, metadata !2, metadata !221, metadata !4, metadata !26, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!222 = metadata !{null, metadata !1, metadata !2, metadata !223, metadata !4, metadata !26, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!224 = metadata !{null, metadata !20, metadata !21, metadata !225, metadata !23, metadata !48, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!226 = metadata !{null, metadata !1, metadata !2, metadata !227, metadata !4, metadata !26, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!228 = metadata !{null, metadata !1, metadata !2, metadata !229, metadata !4, metadata !26, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!230 = metadata !{null, metadata !1, metadata !2, metadata !231, metadata !4, metadata !26, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!232 = metadata !{null, metadata !20, metadata !21, metadata !233, metadata !23, metadata !24, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!234 = metadata !{null, metadata !1, metadata !2, metadata !235, metadata !4, metadata !29, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!236 = metadata !{null, metadata !97, metadata !98, metadata !237, metadata !100, metadata !146, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!238 = metadata !{null, metadata !1, metadata !2, metadata !239, metadata !4, metadata !26, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!240 = metadata !{null, metadata !1, metadata !2, metadata !241, metadata !4, metadata !26, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!242 = metadata !{null, metadata !20, metadata !21, metadata !243, metadata !23, metadata !48, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!244 = metadata !{null, metadata !1, metadata !2, metadata !245, metadata !4, metadata !26, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!246 = metadata !{null, metadata !1, metadata !2, metadata !247, metadata !4, metadata !26, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!248 = metadata !{null, metadata !1, metadata !2, metadata !249, metadata !4, metadata !26, metadata !6}
!249 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!250 = metadata !{null, metadata !20, metadata !21, metadata !251, metadata !23, metadata !24, metadata !6}
!251 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!252 = metadata !{null, metadata !1, metadata !2, metadata !253, metadata !4, metadata !29, metadata !6}
!253 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!254 = metadata !{null, metadata !97, metadata !98, metadata !255, metadata !100, metadata !146, metadata !6}
!255 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!256 = metadata !{null, metadata !1, metadata !2, metadata !257, metadata !4, metadata !26, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!258 = metadata !{null, metadata !1, metadata !2, metadata !259, metadata !4, metadata !26, metadata !6}
!259 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!260 = metadata !{null, metadata !20, metadata !21, metadata !261, metadata !23, metadata !48, metadata !6}
!261 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!262 = metadata !{null, metadata !1, metadata !2, metadata !263, metadata !4, metadata !26, metadata !6}
!263 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!264 = metadata !{null, metadata !1, metadata !2, metadata !265, metadata !4, metadata !26, metadata !6}
!265 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!266 = metadata !{null, metadata !1, metadata !2, metadata !267, metadata !4, metadata !26, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!268 = metadata !{null, metadata !20, metadata !21, metadata !269, metadata !23, metadata !24, metadata !6}
!269 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!270 = metadata !{null, metadata !1, metadata !2, metadata !271, metadata !4, metadata !29, metadata !6}
!271 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!272 = metadata !{null, metadata !20, metadata !21, metadata !273, metadata !23, metadata !143, metadata !6}
!273 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!274 = metadata !{null, metadata !97, metadata !98, metadata !275, metadata !100, metadata !146, metadata !6}
!275 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!276 = metadata !{null, metadata !1, metadata !2, metadata !277, metadata !4, metadata !26, metadata !6}
!277 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!278 = metadata !{null, metadata !1, metadata !2, metadata !279, metadata !4, metadata !26, metadata !6}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!280 = metadata !{null, metadata !20, metadata !21, metadata !281, metadata !23, metadata !24, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!282 = metadata !{null, metadata !1, metadata !2, metadata !283, metadata !4, metadata !29, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!284 = metadata !{null, metadata !20, metadata !21, metadata !285, metadata !23, metadata !48, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!286 = metadata !{null, metadata !20, metadata !21, metadata !287, metadata !23, metadata !24, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!288 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !26, metadata !6}
!289 = metadata !{null, metadata !131, metadata !21, metadata !290, metadata !23, metadata !178, metadata !6}
!290 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!291 = metadata !{null, metadata !112, metadata !98, metadata !292, metadata !100, metadata !183, metadata !6}
!292 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!293 = metadata !{null, metadata !1, metadata !2, metadata !294, metadata !4, metadata !155, metadata !6}
!294 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!295 = metadata !{null, metadata !1, metadata !2, metadata !294, metadata !4, metadata !187, metadata !6}
!296 = metadata !{null, metadata !1, metadata !2, metadata !297, metadata !4, metadata !155, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!298 = metadata !{null, metadata !1, metadata !2, metadata !297, metadata !4, metadata !26, metadata !6}
!299 = metadata !{null, metadata !112, metadata !98, metadata !300, metadata !100, metadata !183, metadata !6}
!300 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!301 = metadata !{null, metadata !1, metadata !2, metadata !302, metadata !4, metadata !26, metadata !6}
!302 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!303 = metadata !{null, metadata !1, metadata !2, metadata !304, metadata !4, metadata !26, metadata !6}
!304 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!305 = metadata !{null, metadata !1, metadata !2, metadata !139, metadata !4, metadata !198, metadata !6}
!306 = metadata !{null, metadata !1, metadata !2, metadata !307, metadata !4, metadata !155, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!308 = metadata !{null, metadata !1, metadata !2, metadata !307, metadata !4, metadata !187, metadata !6}
!309 = metadata !{null, metadata !1, metadata !2, metadata !310, metadata !4, metadata !155, metadata !6}
!310 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!311 = metadata !{null, metadata !1, metadata !2, metadata !310, metadata !4, metadata !26, metadata !6}
!312 = metadata !{null, metadata !112, metadata !98, metadata !313, metadata !100, metadata !183, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!314 = metadata !{null, metadata !112, metadata !98, metadata !315, metadata !100, metadata !183, metadata !6}
!315 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!316 = metadata !{null, metadata !131, metadata !21, metadata !317, metadata !23, metadata !178, metadata !6}
!317 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!318 = metadata !{null, metadata !1, metadata !2, metadata !319, metadata !4, metadata !155, metadata !6}
!319 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!320 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !155, metadata !6}
!321 = metadata !{null, metadata !97, metadata !98, metadata !322, metadata !100, metadata !146, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!323 = metadata !{null, metadata !1, metadata !2, metadata !324, metadata !4, metadata !26, metadata !6}
!324 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!325 = metadata !{null, metadata !1, metadata !2, metadata !326, metadata !4, metadata !26, metadata !6}
!326 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!327 = metadata !{null, metadata !20, metadata !21, metadata !328, metadata !23, metadata !24, metadata !6}
!328 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!329 = metadata !{null, metadata !1, metadata !2, metadata !330, metadata !4, metadata !29, metadata !6}
!330 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!331 = metadata !{null, metadata !97, metadata !98, metadata !332, metadata !100, metadata !146, metadata !6}
!332 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!333 = metadata !{null, metadata !1, metadata !2, metadata !334, metadata !4, metadata !26, metadata !6}
!334 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!335 = metadata !{null, metadata !1, metadata !2, metadata !336, metadata !4, metadata !26, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!337 = metadata !{null, metadata !20, metadata !21, metadata !338, metadata !23, metadata !24, metadata !6}
!338 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!339 = metadata !{null, metadata !1, metadata !2, metadata !340, metadata !4, metadata !29, metadata !6}
!340 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!341 = metadata !{null, metadata !97, metadata !98, metadata !342, metadata !100, metadata !146, metadata !6}
!342 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!343 = metadata !{null, metadata !1, metadata !2, metadata !344, metadata !4, metadata !26, metadata !6}
!344 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!345 = metadata !{null, metadata !1, metadata !2, metadata !346, metadata !4, metadata !26, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!347 = metadata !{null, metadata !20, metadata !21, metadata !348, metadata !23, metadata !24, metadata !6}
!348 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!349 = metadata !{null, metadata !1, metadata !2, metadata !350, metadata !4, metadata !29, metadata !6}
!350 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!351 = metadata !{null, metadata !20, metadata !21, metadata !352, metadata !23, metadata !143, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!353 = metadata !{null, metadata !97, metadata !98, metadata !354, metadata !100, metadata !146, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!355 = metadata !{null, metadata !20, metadata !21, metadata !356, metadata !23, metadata !24, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!357 = metadata !{null, metadata !1, metadata !2, metadata !358, metadata !4, metadata !26, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!359 = metadata !{null, metadata !1, metadata !2, metadata !360, metadata !4, metadata !26, metadata !6}
!360 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!361 = metadata !{null, metadata !20, metadata !21, metadata !362, metadata !23, metadata !24, metadata !6}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!363 = metadata !{null, metadata !1, metadata !2, metadata !364, metadata !4, metadata !29, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!365 = metadata !{null, metadata !20, metadata !21, metadata !356, metadata !23, metadata !48, metadata !6}
!366 = metadata !{null, metadata !20, metadata !21, metadata !367, metadata !23, metadata !24, metadata !6}
!367 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!368 = metadata !{null, metadata !1, metadata !2, metadata !369, metadata !4, metadata !26, metadata !6}
!369 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!370 = metadata !{null, metadata !131, metadata !21, metadata !371, metadata !23, metadata !178, metadata !6}
!371 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!372 = metadata !{null, metadata !112, metadata !98, metadata !373, metadata !100, metadata !183, metadata !6}
!373 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!374 = metadata !{null, metadata !1, metadata !2, metadata !375, metadata !4, metadata !155, metadata !6}
!375 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!376 = metadata !{null, metadata !1, metadata !2, metadata !375, metadata !4, metadata !187, metadata !6}
!377 = metadata !{null, metadata !1, metadata !2, metadata !378, metadata !4, metadata !155, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!379 = metadata !{null, metadata !1, metadata !2, metadata !378, metadata !4, metadata !26, metadata !6}
!380 = metadata !{null, metadata !112, metadata !98, metadata !381, metadata !100, metadata !183, metadata !6}
!381 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!382 = metadata !{null, metadata !1, metadata !2, metadata !383, metadata !4, metadata !26, metadata !6}
!383 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!384 = metadata !{null, metadata !1, metadata !2, metadata !385, metadata !4, metadata !26, metadata !6}
!385 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!386 = metadata !{null, metadata !1, metadata !2, metadata !136, metadata !4, metadata !198, metadata !6}
!387 = metadata !{null, metadata !1, metadata !2, metadata !388, metadata !4, metadata !155, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!389 = metadata !{null, metadata !1, metadata !2, metadata !388, metadata !4, metadata !187, metadata !6}
!390 = metadata !{null, metadata !1, metadata !2, metadata !391, metadata !4, metadata !155, metadata !6}
!391 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!392 = metadata !{null, metadata !1, metadata !2, metadata !391, metadata !4, metadata !26, metadata !6}
!393 = metadata !{null, metadata !112, metadata !98, metadata !394, metadata !100, metadata !183, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!395 = metadata !{null, metadata !112, metadata !98, metadata !396, metadata !100, metadata !183, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!397 = metadata !{null, metadata !131, metadata !21, metadata !398, metadata !23, metadata !178, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!399 = metadata !{null, metadata !1, metadata !2, metadata !400, metadata !4, metadata !155, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!401 = metadata !{null, metadata !1, metadata !2, metadata !402, metadata !4, metadata !155, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!403 = metadata !{null, metadata !97, metadata !98, metadata !404, metadata !100, metadata !146, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!405 = metadata !{null, metadata !1, metadata !2, metadata !406, metadata !4, metadata !26, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!407 = metadata !{null, metadata !1, metadata !2, metadata !408, metadata !4, metadata !26, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!409 = metadata !{null, metadata !20, metadata !21, metadata !410, metadata !23, metadata !24, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!411 = metadata !{null, metadata !1, metadata !2, metadata !412, metadata !4, metadata !29, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!413 = metadata !{null, metadata !97, metadata !98, metadata !414, metadata !100, metadata !146, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!415 = metadata !{null, metadata !1, metadata !2, metadata !416, metadata !4, metadata !26, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!417 = metadata !{null, metadata !1, metadata !2, metadata !418, metadata !4, metadata !26, metadata !6}
!418 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!419 = metadata !{null, metadata !20, metadata !21, metadata !420, metadata !23, metadata !24, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!421 = metadata !{null, metadata !1, metadata !2, metadata !422, metadata !4, metadata !29, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!423 = metadata !{null, metadata !97, metadata !98, metadata !424, metadata !100, metadata !146, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!425 = metadata !{null, metadata !1, metadata !2, metadata !426, metadata !4, metadata !26, metadata !6}
!426 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!427 = metadata !{null, metadata !1, metadata !2, metadata !428, metadata !4, metadata !26, metadata !6}
!428 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!429 = metadata !{null, metadata !20, metadata !21, metadata !430, metadata !23, metadata !24, metadata !6}
!430 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!431 = metadata !{null, metadata !1, metadata !2, metadata !432, metadata !4, metadata !29, metadata !6}
!432 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!433 = metadata !{null, metadata !97, metadata !98, metadata !434, metadata !100, metadata !146, metadata !6}
!434 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!435 = metadata !{null, metadata !1, metadata !2, metadata !436, metadata !4, metadata !26, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!437 = metadata !{null, metadata !1, metadata !2, metadata !438, metadata !4, metadata !26, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!439 = metadata !{null, metadata !1, metadata !2, metadata !440, metadata !4, metadata !26, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!441 = metadata !{null, metadata !1, metadata !2, metadata !442, metadata !4, metadata !26, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!443 = metadata !{null, metadata !131, metadata !21, metadata !444, metadata !23, metadata !178, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!445 = metadata !{null, metadata !20, metadata !21, metadata !446, metadata !23, metadata !48, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!447 = metadata !{null, metadata !1, metadata !2, metadata !448, metadata !4, metadata !26, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!449 = metadata !{null, metadata !97, metadata !98, metadata !450, metadata !100, metadata !146, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!451 = metadata !{null, metadata !1, metadata !2, metadata !452, metadata !4, metadata !26, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!453 = metadata !{null, metadata !1, metadata !2, metadata !454, metadata !4, metadata !26, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!455 = metadata !{null, metadata !1, metadata !2, metadata !456, metadata !4, metadata !26, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!457 = metadata !{null, metadata !131, metadata !21, metadata !458, metadata !23, metadata !178, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!459 = metadata !{null, metadata !20, metadata !21, metadata !460, metadata !23, metadata !48, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!461 = metadata !{null, metadata !1, metadata !2, metadata !462, metadata !4, metadata !26, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!463 = metadata !{null, metadata !97, metadata !98, metadata !464, metadata !100, metadata !146, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!465 = metadata !{null, metadata !1, metadata !2, metadata !466, metadata !4, metadata !26, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!467 = metadata !{null, metadata !1, metadata !2, metadata !468, metadata !4, metadata !26, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!469 = metadata !{null, metadata !1, metadata !2, metadata !470, metadata !4, metadata !26, metadata !6}
!470 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!471 = metadata !{null, metadata !1, metadata !2, metadata !472, metadata !4, metadata !26, metadata !6}
!472 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!473 = metadata !{null, metadata !131, metadata !21, metadata !474, metadata !23, metadata !178, metadata !6}
!474 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!475 = metadata !{null, metadata !20, metadata !21, metadata !476, metadata !23, metadata !48, metadata !6}
!476 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!477 = metadata !{null, metadata !1, metadata !2, metadata !478, metadata !4, metadata !26, metadata !6}
!478 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!479 = metadata !{null, metadata !97, metadata !98, metadata !480, metadata !100, metadata !146, metadata !6}
!480 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!481 = metadata !{null, metadata !1, metadata !2, metadata !482, metadata !4, metadata !26, metadata !6}
!482 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!483 = metadata !{null, metadata !1, metadata !2, metadata !484, metadata !4, metadata !26, metadata !6}
!484 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!485 = metadata !{null, metadata !1, metadata !2, metadata !486, metadata !4, metadata !26, metadata !6}
!486 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!487 = metadata !{null, metadata !1, metadata !2, metadata !488, metadata !4, metadata !26, metadata !6}
!488 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!489 = metadata !{null, metadata !131, metadata !21, metadata !490, metadata !23, metadata !178, metadata !6}
!490 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!491 = metadata !{null, metadata !20, metadata !21, metadata !492, metadata !23, metadata !48, metadata !6}
!492 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!493 = metadata !{null, metadata !1, metadata !2, metadata !494, metadata !4, metadata !26, metadata !6}
!494 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!495 = metadata !{null, metadata !97, metadata !98, metadata !496, metadata !100, metadata !146, metadata !6}
!496 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!497 = metadata !{null, metadata !97, metadata !98, metadata !498, metadata !100, metadata !146, metadata !6}
!498 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!499 = metadata !{null, metadata !97, metadata !98, metadata !500, metadata !100, metadata !146, metadata !6}
!500 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!501 = metadata !{null, metadata !97, metadata !98, metadata !502, metadata !100, metadata !146, metadata !6}
!502 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!503 = metadata !{null, metadata !97, metadata !98, metadata !504, metadata !100, metadata !146, metadata !6}
!504 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!505 = metadata !{null, metadata !97, metadata !98, metadata !506, metadata !100, metadata !146, metadata !6}
!506 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!507 = metadata !{null, metadata !97, metadata !98, metadata !508, metadata !100, metadata !146, metadata !6}
!508 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!509 = metadata !{null, metadata !97, metadata !98, metadata !510, metadata !100, metadata !146, metadata !6}
!510 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!511 = metadata !{metadata !512, i32* @shift_amount}
!512 = metadata !{metadata !513}
!513 = metadata !{i32 0, i32 31, metadata !514}
!514 = metadata !{metadata !515}
!515 = metadata !{metadata !"shift_amount", metadata !516, metadata !"int", i32 0, i32 31}
!516 = metadata !{metadata !517}
!517 = metadata !{i32 0, i32 0, i32 1}
!518 = metadata !{metadata !519, [16 x i32]* @pow_num}
!519 = metadata !{metadata !520}
!520 = metadata !{i32 0, i32 31, metadata !521}
!521 = metadata !{metadata !522}
!522 = metadata !{metadata !"pow_num", metadata !523, metadata !"int", i32 0, i32 31}
!523 = metadata !{metadata !524}
!524 = metadata !{i32 0, i32 15, i32 1}
!525 = metadata !{metadata !526, null}
!526 = metadata !{metadata !527}
!527 = metadata !{i32 0, i32 31, metadata !528}
!528 = metadata !{metadata !529}
!529 = metadata !{metadata !"pool_dot.V", metadata !530, metadata !"int32", i32 0, i32 31}
!530 = metadata !{metadata !531, metadata !524, metadata !532, metadata !532}
!531 = metadata !{i32 0, i32 2, i32 1}
!532 = metadata !{i32 0, i32 13, i32 1}
!533 = metadata !{metadata !534, [4 x i32]* @llvm_global_ctors_0}
!534 = metadata !{metadata !535}
!535 = metadata !{i32 0, i32 31, metadata !536}
!536 = metadata !{metadata !537}
!537 = metadata !{metadata !"llvm.global_ctors.0", metadata !538, metadata !"", i32 0, i32 31}
!538 = metadata !{metadata !539}
!539 = metadata !{i32 0, i32 3, i32 1}
!540 = metadata !{metadata !541, null}
!541 = metadata !{metadata !542}
!542 = metadata !{i32 0, i32 31, metadata !543}
!543 = metadata !{metadata !544}
!544 = metadata !{metadata !"in.V", metadata !545, metadata !"int32", i32 0, i32 31}
!545 = metadata !{metadata !546, metadata !546, metadata !547}
!546 = metadata !{i32 0, i32 31, i32 1}
!547 = metadata !{i32 0, i32 9999, i32 1}
!548 = metadata !{metadata !549, i32* @i_in1}
!549 = metadata !{metadata !550}
!550 = metadata !{i32 0, i32 31, metadata !551}
!551 = metadata !{metadata !552}
!552 = metadata !{metadata !"i_in1", metadata !516, metadata !"int", i32 0, i32 31}
!553 = metadata !{metadata !554, i32* @i_in0}
!554 = metadata !{metadata !555}
!555 = metadata !{i32 0, i32 31, metadata !556}
!556 = metadata !{metadata !557}
!557 = metadata !{metadata !"i_in0", metadata !516, metadata !"int", i32 0, i32 31}
!558 = metadata !{metadata !559, null}
!559 = metadata !{metadata !560}
!560 = metadata !{i32 0, i32 7, metadata !561}
!561 = metadata !{metadata !562}
!562 = metadata !{metadata !"fc_weight", metadata !563, metadata !"unsigned char", i32 0, i32 7}
!563 = metadata !{metadata !539, metadata !564, metadata !564}
!564 = metadata !{i32 0, i32 399, i32 1}
!565 = metadata !{metadata !566, [400 x i32]* @fc_in_V}
!566 = metadata !{metadata !567}
!567 = metadata !{i32 0, i32 31, metadata !568}
!568 = metadata !{metadata !569}
!569 = metadata !{metadata !"fc_in.V", metadata !570, metadata !"int32", i32 0, i32 31}
!570 = metadata !{metadata !564}
!571 = metadata !{metadata !572, [3 x [120 x i32]]* @fc_dot_V}
!572 = metadata !{metadata !573}
!573 = metadata !{i32 0, i32 31, metadata !574}
!574 = metadata !{metadata !575}
!575 = metadata !{metadata !"fc_dot.V", metadata !576, metadata !"int32", i32 0, i32 31}
!576 = metadata !{metadata !531, metadata !577}
!577 = metadata !{i32 0, i32 119, i32 1}
!578 = metadata !{metadata !579, null}
!579 = metadata !{metadata !580}
!580 = metadata !{i32 0, i32 31, metadata !581}
!581 = metadata !{metadata !582}
!582 = metadata !{metadata !"fc_bias.V", metadata !583, metadata !"int32", i32 0, i32 31}
!583 = metadata !{metadata !539, metadata !577}
!584 = metadata !{metadata !585, double* @f_in}
!585 = metadata !{metadata !586}
!586 = metadata !{i32 0, i32 63, metadata !587}
!587 = metadata !{metadata !588}
!588 = metadata !{metadata !"f_in", metadata !516, metadata !"double", i32 0, i32 63}
!589 = metadata !{metadata !590, null}
!590 = metadata !{metadata !591}
!591 = metadata !{i32 0, i32 7, metadata !592}
!592 = metadata !{metadata !593}
!593 = metadata !{metadata !"conv_weight", metadata !594, metadata !"unsigned char", i32 0, i32 7}
!594 = metadata !{metadata !531, metadata !524, metadata !595, metadata !596, metadata !596}
!595 = metadata !{i32 0, i32 5, i32 1}
!596 = metadata !{i32 0, i32 4, i32 1}
!597 = metadata !{metadata !598, null}
!598 = metadata !{metadata !599}
!599 = metadata !{i32 0, i32 31, metadata !600}
!600 = metadata !{metadata !601}
!601 = metadata !{metadata !"conv_dot.V", metadata !602, metadata !"int32", i32 0, i32 31}
!602 = metadata !{metadata !531, metadata !524, metadata !603, metadata !603}
!603 = metadata !{i32 0, i32 27, i32 1}
!604 = metadata !{metadata !605, null}
!605 = metadata !{metadata !606}
!606 = metadata !{i32 0, i32 31, metadata !607}
!607 = metadata !{metadata !608}
!608 = metadata !{metadata !"conv_bias.V", metadata !609, metadata !"int32", i32 0, i32 31}
!609 = metadata !{metadata !531, metadata !524}
!610 = metadata !{metadata !611, i8* @c_in}
!611 = metadata !{metadata !612}
!612 = metadata !{i32 0, i32 7, metadata !613}
!613 = metadata !{metadata !614}
!614 = metadata !{metadata !"c_in", metadata !516, metadata !"unsigned char", i32 0, i32 7}
!615 = metadata !{metadata !526, [9408 x i32]* @pool_dot_V}
!616 = metadata !{metadata !541, [10240000 x i32]* @in_V}
!617 = metadata !{metadata !559, [640000 x i8]* @fc_weight}
!618 = metadata !{metadata !579, [480 x i32]* @fc_bias_V}
!619 = metadata !{metadata !590, [7200 x i8]* @conv_weight}
!620 = metadata !{metadata !598, [37632 x i32]* @conv_dot_V}
!621 = metadata !{metadata !605, [48 x i32]* @conv_bias_V}
!622 = metadata !{metadata !623}
!623 = metadata !{i32 0, i32 31, metadata !624}
!624 = metadata !{metadata !625}
!625 = metadata !{metadata !"index", metadata !626, metadata !"int", i32 0, i32 31}
!626 = metadata !{metadata !627}
!627 = metadata !{i32 0, i32 0, i32 0}
!628 = metadata !{metadata !629}
!629 = metadata !{i32 0, i32 31, metadata !630}
!630 = metadata !{metadata !631}
!631 = metadata !{metadata !"return", metadata !632, metadata !"int", i32 0, i32 31}
!632 = metadata !{metadata !633}
!633 = metadata !{i32 0, i32 1, i32 0}
