; ModuleID = '/home/yagiyugo/vivado/lenet5_ap2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE.25.175.177.179 = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker.24.174.176.178*, %struct._IO_FILE.25.175.177.179*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker.24.174.176.178 = type { %struct._IO_marker.24.174.176.178*, %struct._IO_FILE.25.175.177.179*, i32 }

@pow_num = global [16 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536], align 16
@pool_dot = external global [9408 x double]
@param_dir = constant [44 x i8] c"/home/yagiyugo/vivado/lenet5_ap2/param_txt/\00", align 16
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a5, void ()* @_GLOBAL__I_a40, void ()* @_GLOBAL__I_a11547]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@lenet5_ap2_str = internal unnamed_addr constant [11 x i8] c"lenet5_ap2\00"
@in_r = external global [10240000 x double]
@fp = global %struct._IO_FILE.25.175.177.179* null, align 8
@fname = constant [256 x i8] zeroinitializer, align 16
@fix = constant [16 x i8] zeroinitializer, align 16
@fc_weight = external global [192000 x double]
@fc_in = external global [400 x double]
@fc_dot = external global [3 x [120 x double]]
@fc_bias = external global [480 x double]
@f_in = global double 0.000000e+00, align 8
@data_dir = constant [50 x i8] c"/home/yagiyugo/vivado/lenet5_ap2/mnist_test_data/\00", align 16
@conv_weight = external global [7200 x double]
@conv_dot = external global [37632 x double]
@conv_bias = external global [48 x double]

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @lenet5_ap2(i32 %index) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %index) nounwind, !map !560
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !566
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @lenet5_ap2_str) nounwind
  %index_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %index) nounwind
  %tmp = trunc i32 %index_read to i25
  br label %.loopexit59

.loopexit59.loopexit:                             ; preds = %.preheader52
  br label %.loopexit59

.loopexit59:                                      ; preds = %.loopexit59.loopexit, %0
  %channel = phi i3 [ 0, %0 ], [ %channel_1, %.loopexit59.loopexit ]
  %exitcond25 = icmp eq i3 %channel, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_1 = add i3 %channel, 1
  br i1 %exitcond25, label %.preheader48.preheader, label %.preheader52.preheader

.preheader48.preheader:                           ; preds = %.loopexit59
  %max_value = alloca double
  br label %.preheader48

.preheader52.preheader:                           ; preds = %.loopexit59
  %tmp_1 = call i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61 2, i3 %channel)
  %conv_bias_addr = getelementptr [48 x double]* @conv_bias, i64 0, i64 %tmp_1
  %p_shl3 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel, i5 0)
  %p_shl4 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel, i2 0)
  %tmp_2 = sub i64 %p_shl3, %p_shl4
  %p_shl2 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel, i1 false)
  %tmp_5 = sub i64 %p_shl3, %p_shl2
  %conv_bias_load = load double* %conv_bias_addr, align 8
  br label %.preheader52

.preheader52.loopexit:                            ; preds = %.preheader51
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.loopexit, %.preheader52.preheader
  %col = phi i5 [ 0, %.preheader52.preheader ], [ %col_1, %.preheader52.loopexit ]
  %exitcond29 = icmp eq i5 %col, -4
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %col_1 = add i5 %col, 1
  br i1 %exitcond29, label %.loopexit59.loopexit, label %.preheader51.preheader

.preheader51.preheader:                           ; preds = %.preheader52
  %tmp_4 = zext i5 %col to i64
  %tmp_12 = add i64 %tmp_2, %tmp_4
  %tmp_16 = trunc i64 %tmp_12 to i12
  %p_shl5_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_16, i5 0)
  %tmp_17 = trunc i64 %tmp_12 to i15
  %p_shl6_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_17, i2 0)
  %tmp_19 = sub i17 %p_shl5_cast, %p_shl6_cast
  br label %.preheader51

.preheader51:                                     ; preds = %._crit_edge, %.preheader51.preheader
  %row = phi i5 [ %row_1, %._crit_edge ], [ 0, %.preheader51.preheader ]
  %exitcond28 = icmp eq i5 %row, -4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 28, i64 28, i64 28) nounwind
  %row_1 = add i5 %row, 1
  br i1 %exitcond28, label %.preheader52.loopexit, label %1

; <label>:1                                       ; preds = %.preheader51
  %tmp_cast = zext i5 %row to i17
  %tmp_61 = add i17 %tmp_19, %tmp_cast
  %tmp_136_cast = zext i17 %tmp_61 to i64
  %conv_dot_addr = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_136_cast
  br label %.loopexit58

.loopexit58.loopexit:                             ; preds = %.preheader50
  br label %.loopexit58

.loopexit58:                                      ; preds = %.loopexit58.loopexit, %1
  %tmp_3 = phi double [ 0.000000e+00, %1 ], [ %tmp_18, %.loopexit58.loopexit ]
  %fil_col = phi i3 [ 0, %1 ], [ %fil_col_1, %.loopexit58.loopexit ]
  %fil_col_cast = zext i3 %fil_col to i5
  %exitcond27 = icmp eq i3 %fil_col, -3
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_1 = add i3 %fil_col, 1
  br i1 %exitcond27, label %._crit_edge, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %.loopexit58
  %tmp_15 = add i5 %col, %fil_col_cast
  %tmp_17_cast = zext i3 %fil_col to i14
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader49.preheader, %.preheader50.preheader
  %tmp_18 = phi double [ %tmp_67, %.preheader49.preheader ], [ %tmp_3, %.preheader50.preheader ]
  %fil_row = phi i3 [ %fil_row_1, %.preheader49.preheader ], [ 0, %.preheader50.preheader ]
  %fil_row_cast = zext i3 %fil_row to i5
  %exitcond26 = icmp eq i3 %fil_row, -3
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_1 = add i3 %fil_row, 1
  br i1 %exitcond26, label %.loopexit58.loopexit, label %.preheader49.preheader

.preheader49.preheader:                           ; preds = %.preheader50
  %tmp_28 = add i5 %row, %fil_row_cast
  %tmp_135 = call i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5 %tmp_15, i5 %tmp_28)
  %tmp_160_cast = zext i10 %tmp_135 to i25
  %tmp_136 = mul i25 10000, %tmp_160_cast
  %tmp_137 = add i25 %tmp, %tmp_136
  %tmp_162_cast = sext i25 %tmp_137 to i64
  %in_addr = getelementptr [10240000 x double]* @in_r, i64 0, i64 %tmp_162_cast
  %in_load = load double* %in_addr, align 8
  %tmp_30 = zext i3 %fil_row to i64
  %tmp_138 = add i64 %tmp_30, %tmp_5
  %tmp_139 = trunc i64 %tmp_138 to i14
  %tmp_140 = trunc i64 %tmp_138 to i12
  %p_shl7_cast = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_140, i2 0)
  %tmp_141 = add i14 %p_shl7_cast, %tmp_139
  %tmp_142 = add i14 %tmp_17_cast, %tmp_141
  %tmp_166_cast = zext i14 %tmp_142 to i64
  %conv_weight_addr = getelementptr [7200 x double]* @conv_weight, i64 0, i64 %tmp_166_cast
  %conv_weight_load = load double* %conv_weight_addr, align 8
  %tmp_58 = fmul double %in_load, %conv_weight_load
  %tmp_67 = fadd double %tmp_18, %tmp_58
  br label %.preheader50

._crit_edge:                                      ; preds = %.loopexit58
  %tmp_13 = fadd double %tmp_3, %conv_bias_load
  %tmp_13_to_int = bitcast double %tmp_13 to i64
  %tmp_14 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_13_to_int, i32 52, i32 62)
  %tmp_106 = trunc i64 %tmp_13_to_int to i52
  %notlhs = icmp ne i11 %tmp_14, -1
  %notrhs = icmp eq i52 %tmp_106, 0
  %tmp_39 = or i1 %notrhs, %notlhs
  %tmp_45 = fcmp olt double %tmp_13, 0.000000e+00
  %tmp_51 = and i1 %tmp_39, %tmp_45
  %storemerge = select i1 %tmp_51, double 0.000000e+00, double %tmp_13
  store double %storemerge, double* %conv_dot_addr, align 8
  br label %.preheader51

.preheader48.loopexit:                            ; preds = %.preheader47
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.loopexit, %.preheader48.preheader
  %channel1 = phi i3 [ 0, %.preheader48.preheader ], [ %channel_2, %.preheader48.loopexit ]
  %max_value_load = load double* %max_value
  %exitcond24 = icmp eq i3 %channel1, -2
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %channel_2 = add i3 %channel1, 1
  br i1 %exitcond24, label %.preheader44.preheader, label %.preheader47.preheader

.preheader44.preheader:                           ; preds = %.preheader48
  br label %.preheader44

.preheader47.preheader:                           ; preds = %.preheader48
  %p_shl1 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %channel1, i4 0)
  %p_shl5 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %channel1, i1 false)
  %tmp_6 = sub i64 %p_shl1, %p_shl5
  %p_shl8 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56 2, i3 %channel1, i5 0)
  %p_shl9 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59 2, i3 %channel1, i2 0)
  %tmp_s = sub i64 %p_shl8, %p_shl9
  br label %.preheader47

.preheader47.loopexit:                            ; preds = %.preheader46
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.loopexit, %.preheader47.preheader
  %col2 = phi i4 [ 0, %.preheader47.preheader ], [ %col_2, %.preheader47.loopexit ]
  %exitcond23 = icmp eq i4 %col2, -2
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %col_2 = add i4 %col2, 1
  br i1 %exitcond23, label %.preheader48.loopexit, label %.preheader46.preheader

.preheader46.preheader:                           ; preds = %.preheader47
  %tmp_7 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %col2, i1 false)
  %tmp_8 = zext i5 %tmp_7 to i64
  %tmp_29 = add i64 %tmp_8, %tmp_s
  %tmp_35 = trunc i64 %tmp_29 to i12
  %p_shl14_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_35, i5 0)
  %tmp_37 = trunc i64 %tmp_29 to i15
  %p_shl15_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_37, i2 0)
  %tmp_42 = sub i17 %p_shl14_cast, %p_shl15_cast
  %tmp_9 = zext i4 %col2 to i64
  %tmp_44 = add i64 %tmp_9, %tmp_6
  %tmp_48 = trunc i64 %tmp_44 to i11
  %p_shl12_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_48, i4 0)
  %tmp_55 = trunc i64 %tmp_44 to i14
  %p_shl13_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_55, i1 false)
  %tmp_57 = sub i15 %p_shl12_cast, %p_shl13_cast
  br label %.preheader46

.preheader46:                                     ; preds = %3, %.preheader46.preheader
  %row3 = phi i4 [ %row_2, %3 ], [ 0, %.preheader46.preheader ]
  %exitcond22 = icmp eq i4 %row3, -2
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 14, i64 14, i64 14) nounwind
  %row_2 = add i4 %row3, 1
  br i1 %exitcond22, label %.preheader47.loopexit, label %2

; <label>:2                                       ; preds = %.preheader46
  %tmp_11 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %row3, i1 false)
  %tmp_12_cast = zext i5 %tmp_11 to i17
  %tmp_101 = add i17 %tmp_12_cast, %tmp_42
  %tmp_143_cast = zext i17 %tmp_101 to i64
  %conv_dot_addr_1 = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_143_cast
  %max_value_2 = load double* %conv_dot_addr_1, align 8
  br label %.loopexit57

.loopexit57.loopexit:                             ; preds = %.preheader45
  br label %.loopexit57

.loopexit57:                                      ; preds = %.loopexit57.loopexit, %2
  %fil_col4 = phi i2 [ 0, %2 ], [ %fil_col_2, %.loopexit57.loopexit ]
  %max_value_3 = phi double [ %max_value_2, %2 ], [ %max_value_4, %.loopexit57.loopexit ]
  %fil_col4_cast = zext i2 %fil_col4 to i5
  %exitcond21 = icmp eq i2 %fil_col4, -2
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_col_2 = add i2 %fil_col4, 1
  br i1 %exitcond21, label %3, label %.preheader45.preheader

.preheader45.preheader:                           ; preds = %.loopexit57
  %tmp_26 = add i5 %fil_col4_cast, %tmp_7
  %tmp_27 = zext i5 %tmp_26 to i64
  %tmp_131 = add i64 %tmp_s, %tmp_27
  %tmp_132 = trunc i64 %tmp_131 to i12
  %p_shl16_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_132, i5 0)
  %tmp_133 = trunc i64 %tmp_131 to i15
  %p_shl17_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_133, i2 0)
  %tmp_134 = sub i17 %p_shl16_cast, %p_shl17_cast
  br label %.preheader45

.preheader45:                                     ; preds = %._crit_edge53, %.preheader45.preheader
  %fil_row5 = phi i2 [ %fil_row_2, %._crit_edge53 ], [ 0, %.preheader45.preheader ]
  %max_value_4 = phi double [ %max_value_5, %._crit_edge53 ], [ %max_value_3, %.preheader45.preheader ]
  %fil_row5_cast = zext i2 %fil_row5 to i5
  %exitcond20 = icmp eq i2 %fil_row5, -2
  %empty_13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %fil_row_2 = add i2 %fil_row5, 1
  br i1 %exitcond20, label %.loopexit57.loopexit, label %._crit_edge53

._crit_edge53:                                    ; preds = %.preheader45
  %tmp_43 = add i5 %fil_row5_cast, %tmp_11
  %tmp_44_cast = zext i5 %tmp_43 to i17
  %tmp_150 = add i17 %tmp_134, %tmp_44_cast
  %tmp_173_cast = zext i17 %tmp_150 to i64
  %conv_dot_addr_4 = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_173_cast
  %max_value_7 = load double* %conv_dot_addr_4, align 8
  %max_value_4_to_int = bitcast double %max_value_4 to i64
  %tmp_86 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_4_to_int, i32 52, i32 62)
  %tmp_151 = trunc i64 %max_value_4_to_int to i52
  %max_value_16_to_int = bitcast double %max_value_7 to i64
  %tmp_88 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_16_to_int, i32 52, i32 62)
  %tmp_152 = trunc i64 %max_value_16_to_int to i52
  %notlhs2 = icmp ne i11 %tmp_86, -1
  %notrhs2 = icmp eq i52 %tmp_151, 0
  %tmp_90 = or i1 %notrhs2, %notlhs2
  %notlhs3 = icmp ne i11 %tmp_88, -1
  %notrhs3 = icmp eq i52 %tmp_152, 0
  %tmp_91 = or i1 %notrhs3, %notlhs3
  %tmp_92 = and i1 %tmp_90, %tmp_91
  %tmp_93 = fcmp olt double %max_value_4, %max_value_7
  %tmp_94 = and i1 %tmp_92, %tmp_93
  %max_value_5 = select i1 %tmp_94, double %max_value_7, double %max_value_4
  br label %.preheader45

; <label>:3                                       ; preds = %.loopexit57
  %tmp_25_cast = zext i4 %row3 to i15
  %tmp_130 = add i15 %tmp_57, %tmp_25_cast
  %tmp_154_cast = zext i15 %tmp_130 to i64
  %pool_dot_addr = getelementptr [9408 x double]* @pool_dot, i64 0, i64 %tmp_154_cast
  store double %max_value_3, double* %pool_dot_addr, align 8
  store double %max_value_3, double* %max_value
  br label %.preheader46

.preheader44.loopexit:                            ; preds = %.preheader43
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.preheader, %.preheader44.loopexit
  %i = phi i5 [ %i_1, %.preheader44.loopexit ], [ 0, %.preheader44.preheader ]
  %exitcond19 = icmp eq i5 %i, -16
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_1 = add i5 %i, 1
  br i1 %exitcond19, label %.preheader39.preheader, label %.preheader43.preheader

.preheader39.preheader:                           ; preds = %.preheader44
  %max_value_1 = alloca double
  store double %max_value_load, double* %max_value_1
  br label %.preheader39

.preheader43.preheader:                           ; preds = %.preheader44
  %tmp_20 = call i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59 1, i5 %i)
  %conv_bias_addr_1 = getelementptr [48 x double]* @conv_bias, i64 0, i64 %tmp_20
  %p_shl6 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %i, i5 0)
  %p_shl7 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %i, i2 0)
  %tmp_24 = sub i64 %p_shl6, %p_shl7
  %p_shl10 = call i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56 1, i5 %i, i3 0)
  %p_shl11 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i, i1 false)
  %tmp_25 = sub i64 %p_shl10, %p_shl11
  %conv_bias_load_1 = load double* %conv_bias_addr_1, align 8
  br label %.preheader43

.preheader43.loopexit:                            ; preds = %.preheader42
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %.preheader43.preheader
  %col6 = phi i4 [ 0, %.preheader43.preheader ], [ %col_3, %.preheader43.loopexit ]
  %exitcond18 = icmp eq i4 %col6, -6
  %empty_15 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %col_3 = add i4 %col6, 1
  br i1 %exitcond18, label %.preheader44.loopexit, label %.preheader42.preheader

.preheader42.preheader:                           ; preds = %.preheader43
  %tmp_10 = zext i4 %col6 to i64
  %tmp_82 = add i64 %tmp_24, %tmp_10
  %tmp_87 = trunc i64 %tmp_82 to i12
  %p_shl22_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_87, i5 0)
  %tmp_89 = trunc i64 %tmp_82 to i15
  %p_shl23_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_89, i2 0)
  %tmp_96 = sub i17 %p_shl22_cast, %p_shl23_cast
  br label %.preheader42

.preheader42:                                     ; preds = %._crit_edge54, %.preheader42.preheader
  %row7 = phi i4 [ %row_3, %._crit_edge54 ], [ 0, %.preheader42.preheader ]
  %exitcond17 = icmp eq i4 %row7, -6
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %row_3 = add i4 %row7, 1
  br i1 %exitcond17, label %.preheader43.loopexit, label %4

; <label>:4                                       ; preds = %.preheader42
  %tmp_24_cast = zext i4 %row7 to i17
  %tmp_129 = add i17 %tmp_96, %tmp_24_cast
  %tmp_153_cast = zext i17 %tmp_129 to i64
  %conv_dot_addr_2 = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_153_cast
  br label %.loopexit56

.loopexit56.loopexit:                             ; preds = %.preheader41
  br label %.loopexit56

.loopexit56:                                      ; preds = %.loopexit56.loopexit, %4
  %tmp_31 = phi double [ 0.000000e+00, %4 ], [ %tmp_50, %.loopexit56.loopexit ]
  %fil_col8 = phi i3 [ 0, %4 ], [ %fil_col_3, %.loopexit56.loopexit ]
  %fil_col8_cast = zext i3 %fil_col8 to i4
  %exitcond16 = icmp eq i3 %fil_col8, -3
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_col_3 = add i3 %fil_col8, 1
  br i1 %exitcond16, label %._crit_edge54, label %.preheader41.preheader

.preheader41.preheader:                           ; preds = %.loopexit56
  %tmp_40 = add i4 %fil_col8_cast, %col6
  %tmp_41 = zext i4 %tmp_40 to i64
  %tmp_42_cast = zext i3 %fil_col8 to i14
  br label %.preheader41

.preheader41.loopexit:                            ; preds = %.preheader40
  br label %.preheader41

.preheader41:                                     ; preds = %.preheader41.loopexit, %.preheader41.preheader
  %tmp_50 = phi double [ %tmp_31, %.preheader41.preheader ], [ %tmp_68, %.preheader41.loopexit ]
  %fil_row9 = phi i3 [ 0, %.preheader41.preheader ], [ %fil_row_3, %.preheader41.loopexit ]
  %fil_row9_cast = zext i3 %fil_row9 to i4
  %exitcond15 = icmp eq i3 %fil_row9, -3
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %fil_row_3 = add i3 %fil_row9, 1
  br i1 %exitcond15, label %.loopexit56.loopexit, label %.preheader40.preheader

.preheader40.preheader:                           ; preds = %.preheader41
  %tmp_64 = add i4 %fil_row9_cast, %row7
  %tmp_65_cast = zext i4 %tmp_64 to i15
  %tmp_66 = zext i3 %fil_row9 to i64
  br label %.preheader40

.preheader40:                                     ; preds = %5, %.preheader40.preheader
  %tmp_68 = phi double [ %tmp_80, %5 ], [ %tmp_50, %.preheader40.preheader ]
  %n = phi i3 [ %n_1, %5 ], [ 0, %.preheader40.preheader ]
  %exitcond14 = icmp eq i3 %n, -2
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %n_1 = add i3 %n, 1
  br i1 %exitcond14, label %.preheader41.loopexit, label %5

; <label>:5                                       ; preds = %.preheader40
  %tmp_78 = zext i3 %n to i64
  %p_shl18 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57 2, i3 %n, i4 0)
  %p_shl19 = call i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60 2, i3 %n, i1 false)
  %tmp_176 = sub i64 %p_shl18, %p_shl19
  %tmp_177 = add i64 %tmp_176, %tmp_41
  %tmp_178 = trunc i64 %tmp_177 to i11
  %p_shl26_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_178, i4 0)
  %tmp_179 = trunc i64 %tmp_177 to i14
  %p_shl27_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_179, i1 false)
  %tmp_180 = sub i15 %p_shl26_cast, %p_shl27_cast
  %tmp_181 = add i15 %tmp_180, %tmp_65_cast
  %tmp_198_cast = zext i15 %tmp_181 to i64
  %pool_dot_addr_3 = getelementptr [9408 x double]* @pool_dot, i64 0, i64 %tmp_198_cast
  %tmp_182 = add i64 %tmp_25, %tmp_78
  %tmp_183 = shl i64 %tmp_182, 2
  %tmp_184 = add i64 %tmp_182, %tmp_183
  %tmp_185 = add i64 %tmp_184, %tmp_66
  %tmp_186 = trunc i64 %tmp_185 to i14
  %tmp_187 = trunc i64 %tmp_185 to i12
  %p_shl24_cast = call i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12 %tmp_187, i2 0)
  %tmp_188 = add i14 %tmp_186, %p_shl24_cast
  %tmp_189 = add i14 %tmp_188, %tmp_42_cast
  %tmp_205_cast = zext i14 %tmp_189 to i64
  %conv_weight_addr_1 = getelementptr [7200 x double]* @conv_weight, i64 0, i64 %tmp_205_cast
  %pool_dot_load_1 = load double* %pool_dot_addr_3, align 8
  %conv_weight_load_1 = load double* %conv_weight_addr_1, align 8
  %tmp_79 = fmul double %pool_dot_load_1, %conv_weight_load_1
  %tmp_80 = fadd double %tmp_68, %tmp_79
  br label %.preheader40

._crit_edge54:                                    ; preds = %.loopexit56
  %tmp_38 = fadd double %tmp_31, %conv_bias_load_1
  %tmp_38_to_int = bitcast double %tmp_38 to i64
  %tmp_77 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_38_to_int, i32 52, i32 62)
  %tmp_149 = trunc i64 %tmp_38_to_int to i52
  %notlhs1 = icmp ne i11 %tmp_77, -1
  %notrhs1 = icmp eq i52 %tmp_149, 0
  %tmp_83 = or i1 %notrhs1, %notlhs1
  %tmp_84 = fcmp olt double %tmp_38, 0.000000e+00
  %tmp_85 = and i1 %tmp_83, %tmp_84
  %storemerge1 = select i1 %tmp_85, double 0.000000e+00, double %tmp_38
  store double %storemerge1, double* %conv_dot_addr_2, align 8
  br label %.preheader42

.preheader39.loopexit:                            ; preds = %.preheader38
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.loopexit, %.preheader39.preheader
  %i1 = phi i5 [ 0, %.preheader39.preheader ], [ %i_2, %.preheader39.loopexit ]
  %max_value_1_load = load double* %max_value_1
  %exitcond13 = icmp eq i5 %i1, -16
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_2 = add i5 %i1, 1
  br i1 %exitcond13, label %.preheader35.preheader, label %.preheader38.preheader

.preheader35.preheader:                           ; preds = %.preheader39
  br label %.preheader35

.preheader38.preheader:                           ; preds = %.preheader39
  %p_shl12 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i1, i4 0)
  %p_shl13 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i1, i1 false)
  %tmp_65 = sub i64 %p_shl12, %p_shl13
  %p_shl14 = call i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54 1, i5 %i1, i5 0)
  %p_shl15 = call i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57 1, i5 %i1, i2 0)
  %tmp_76 = sub i64 %p_shl14, %p_shl15
  br label %.preheader38

.preheader38.loopexit:                            ; preds = %.preheader37
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.loopexit, %.preheader38.preheader
  %j = phi i3 [ 0, %.preheader38.preheader ], [ %j_1, %.preheader38.loopexit ]
  %exitcond12 = icmp eq i3 %j, -3
  %empty_21 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_1 = add i3 %j, 1
  br i1 %exitcond12, label %.preheader39.loopexit, label %.preheader37.preheader

.preheader37.preheader:                           ; preds = %.preheader38
  %tmp_21 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %j, i1 false)
  %tmp_22 = zext i4 %tmp_21 to i64
  %tmp_115 = add i64 %tmp_22, %tmp_76
  %tmp_117 = trunc i64 %tmp_115 to i12
  %p_shl36_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_117, i5 0)
  %tmp_123 = trunc i64 %tmp_115 to i15
  %p_shl37_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_123, i2 0)
  %tmp_124 = sub i17 %p_shl36_cast, %p_shl37_cast
  %tmp_23 = zext i3 %j to i64
  %tmp_125 = add i64 %tmp_23, %tmp_65
  %tmp_126 = trunc i64 %tmp_125 to i11
  %p_shl34_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_126, i4 0)
  %tmp_127 = trunc i64 %tmp_125 to i14
  %p_shl35_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_127, i1 false)
  %tmp_128 = sub i15 %p_shl34_cast, %p_shl35_cast
  br label %.preheader37

.preheader37:                                     ; preds = %7, %.preheader37.preheader
  %k = phi i3 [ %k_2, %7 ], [ 0, %.preheader37.preheader ]
  %exitcond11 = icmp eq i3 %k, -3
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_2 = add i3 %k, 1
  br i1 %exitcond11, label %.preheader38.loopexit, label %6

; <label>:6                                       ; preds = %.preheader37
  %tmp_36 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %k, i1 false)
  %tmp_37_cast = zext i4 %tmp_36 to i17
  %tmp_148 = add i17 %tmp_37_cast, %tmp_124
  %tmp_172_cast = zext i17 %tmp_148 to i64
  %conv_dot_addr_3 = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_172_cast
  %max_value_6 = load double* %conv_dot_addr_3, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader36
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %6
  %l = phi i2 [ 0, %6 ], [ %l_1, %.loopexit.loopexit ]
  %max_value_9 = phi double [ %max_value_6, %6 ], [ %max_value_8, %.loopexit.loopexit ]
  %l_cast = zext i2 %l to i4
  %exitcond10 = icmp eq i2 %l, -2
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %l_1 = add i2 %l, 1
  br i1 %exitcond10, label %7, label %.preheader36.preheader

.preheader36.preheader:                           ; preds = %.loopexit
  %tmp_62 = add i4 %l_cast, %tmp_21
  %tmp_63 = zext i4 %tmp_62 to i64
  %tmp_162 = add i64 %tmp_76, %tmp_63
  %tmp_163 = trunc i64 %tmp_162 to i12
  %p_shl38_cast = call i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12 %tmp_163, i5 0)
  %tmp_164 = trunc i64 %tmp_162 to i15
  %p_shl39_cast = call i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15 %tmp_164, i2 0)
  %tmp_165 = sub i17 %p_shl38_cast, %p_shl39_cast
  br label %.preheader36

.preheader36:                                     ; preds = %._crit_edge55, %.preheader36.preheader
  %m = phi i2 [ %m_1, %._crit_edge55 ], [ 0, %.preheader36.preheader ]
  %max_value_8 = phi double [ %max_value_11, %._crit_edge55 ], [ %max_value_9, %.preheader36.preheader ]
  %m_cast = zext i2 %m to i4
  %exitcond9 = icmp eq i2 %m, -2
  %empty_24 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %m_1 = add i2 %m, 1
  br i1 %exitcond9, label %.loopexit.loopexit, label %._crit_edge55

._crit_edge55:                                    ; preds = %.preheader36
  %tmp_75 = add i4 %m_cast, %tmp_36
  %tmp_76_cast = zext i4 %tmp_75 to i17
  %tmp_173 = add i17 %tmp_165, %tmp_76_cast
  %tmp_192_cast = zext i17 %tmp_173 to i64
  %conv_dot_addr_5 = getelementptr [37632 x double]* @conv_dot, i64 0, i64 %tmp_192_cast
  %max_value_10 = load double* %conv_dot_addr_5, align 8
  %max_value_10_to_int = bitcast double %max_value_8 to i64
  %tmp_105 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_10_to_int, i32 52, i32 62)
  %tmp_174 = trunc i64 %max_value_10_to_int to i52
  %max_value_18_to_int = bitcast double %max_value_10 to i64
  %tmp_107 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_18_to_int, i32 52, i32 62)
  %tmp_175 = trunc i64 %max_value_18_to_int to i52
  %notlhs6 = icmp ne i11 %tmp_105, -1
  %notrhs6 = icmp eq i52 %tmp_174, 0
  %tmp_109 = or i1 %notrhs6, %notlhs6
  %notlhs7 = icmp ne i11 %tmp_107, -1
  %notrhs7 = icmp eq i52 %tmp_175, 0
  %tmp_110 = or i1 %notrhs7, %notlhs7
  %tmp_111 = and i1 %tmp_109, %tmp_110
  %tmp_112 = fcmp olt double %max_value_8, %max_value_10
  %tmp_113 = and i1 %tmp_111, %tmp_112
  %max_value_11 = select i1 %tmp_113, double %max_value_10, double %max_value_8
  br label %.preheader36

; <label>:7                                       ; preds = %.loopexit
  %tmp_61_cast = zext i3 %k to i15
  %tmp_161 = add i15 %tmp_128, %tmp_61_cast
  %tmp_181_cast = zext i15 %tmp_161 to i64
  %pool_dot_addr_2 = getelementptr [9408 x double]* @pool_dot, i64 0, i64 %tmp_181_cast
  store double %max_value_9, double* %pool_dot_addr_2, align 8
  store double %max_value_9, double* %max_value_1
  br label %.preheader37

.preheader35.loopexit:                            ; preds = %.preheader34
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader35.preheader, %.preheader35.loopexit
  %i2 = phi i5 [ %i_3, %.preheader35.loopexit ], [ 0, %.preheader35.preheader ]
  %phi_mul = phi i9 [ %next_mul, %.preheader35.loopexit ], [ 0, %.preheader35.preheader ]
  %next_mul = add i9 %phi_mul, 25
  %exitcond8 = icmp eq i5 %i2, -16
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %i_3 = add i5 %i2, 1
  br i1 %exitcond8, label %.preheader32.preheader, label %.preheader34.preheader

.preheader32.preheader:                           ; preds = %.preheader35
  br label %.preheader32

.preheader34.preheader:                           ; preds = %.preheader35
  %p_shl16 = call i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55 1, i5 %i2, i4 0)
  %p_shl17 = call i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58 1, i5 %i2, i1 false)
  %tmp_108 = sub i64 %p_shl16, %p_shl17
  br label %.preheader34

.preheader34.loopexit:                            ; preds = %.preheader33
  br label %.preheader34

.preheader34:                                     ; preds = %.preheader34.loopexit, %.preheader34.preheader
  %j1 = phi i3 [ 0, %.preheader34.preheader ], [ %j_2, %.preheader34.loopexit ]
  %j1_cast = zext i3 %j1 to i5
  %exitcond7 = icmp eq i3 %j1, -3
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %j_2 = add i3 %j1, 1
  br i1 %exitcond7, label %.preheader35.loopexit, label %.preheader33.preheader

.preheader33.preheader:                           ; preds = %.preheader34
  %tmp_34 = zext i3 %j1 to i64
  %tmp_144 = add i64 %tmp_34, %tmp_108
  %tmp_145 = trunc i64 %tmp_144 to i11
  %p_shl42_cast = call i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11 %tmp_145, i4 0)
  %tmp_146 = trunc i64 %tmp_144 to i14
  %p_shl43_cast = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_146, i1 false)
  %tmp_147 = sub i15 %p_shl42_cast, %p_shl43_cast
  %p_shl = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %j1, i2 0)
  %tmp8 = add i5 %p_shl, %j1_cast
  %tmp8_cast = zext i5 %tmp8 to i9
  br label %.preheader33

.preheader33:                                     ; preds = %8, %.preheader33.preheader
  %k1 = phi i3 [ %k_1, %8 ], [ 0, %.preheader33.preheader ]
  %k1_cast = zext i3 %k1 to i9
  %exitcond6 = icmp eq i3 %k1, -3
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 5, i64 5, i64 5) nounwind
  %k_1 = add i3 %k1, 1
  br i1 %exitcond6, label %.preheader34.loopexit, label %8

; <label>:8                                       ; preds = %.preheader33
  %tmp_57_cast = zext i3 %k1 to i15
  %tmp_160 = add i15 %tmp_147, %tmp_57_cast
  %tmp_180_cast = zext i15 %tmp_160 to i64
  %pool_dot_addr_1 = getelementptr [9408 x double]* @pool_dot, i64 0, i64 %tmp_180_cast
  %pool_dot_load = load double* %pool_dot_addr_1, align 8
  %tmp9 = add i9 %k1_cast, %phi_mul
  %tmp_59 = add i9 %tmp8_cast, %tmp9
  %tmp_60 = zext i9 %tmp_59 to i64
  %fc_in_addr_1 = getelementptr inbounds [400 x double]* @fc_in, i64 0, i64 %tmp_60
  store double %pool_dot_load, double* %fc_in_addr_1, align 8
  br label %.preheader33

.preheader32:                                     ; preds = %.preheader32.preheader, %._crit_edge56
  %col4 = phi i7 [ %col_4, %._crit_edge56 ], [ 0, %.preheader32.preheader ]
  %exitcond5 = icmp eq i7 %col4, -8
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %col_4 = add i7 %col4, 1
  br i1 %exitcond5, label %.preheader31.preheader, label %9

.preheader31.preheader:                           ; preds = %.preheader32
  br label %.preheader31

; <label>:9                                       ; preds = %.preheader32
  %tmp_32 = zext i7 %col4 to i64
  %tmp_32_cast1 = zext i7 %col4 to i17
  %tmp_32_cast = zext i7 %col4 to i8
  %tmp_143 = add i8 %tmp_32_cast, 120
  %tmp_167_cast = zext i8 %tmp_143 to i64
  %fc_bias_addr = getelementptr [480 x double]* @fc_bias, i64 0, i64 %tmp_167_cast
  %fc_dot_addr = getelementptr inbounds [3 x [120 x double]]* @fc_dot, i64 0, i64 1, i64 %tmp_32
  br label %10

; <label>:10                                      ; preds = %11, %9
  %tmp_46 = phi double [ 0.000000e+00, %9 ], [ %tmp_54, %11 ]
  %row4 = phi i9 [ 0, %9 ], [ %row_4, %11 ]
  %exitcond4 = icmp eq i9 %row4, -112
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 400, i64 400, i64 400) nounwind
  %row_4 = add i9 %row4, 1
  br i1 %exitcond4, label %._crit_edge56, label %11

; <label>:11                                      ; preds = %10
  %tmp_52 = zext i9 %row4 to i64
  %tmp_155 = call i16 @_ssdm_op_BitConcatenate.i16.i9.i7(i9 %row4, i7 0)
  %p_shl44_cast = zext i16 %tmp_155 to i17
  %tmp_156 = call i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9 %row4, i3 0)
  %p_shl45_cast = zext i12 %tmp_156 to i17
  %tmp_157 = sub i17 %p_shl44_cast, %p_shl45_cast
  %tmp_158 = add i17 %tmp_157, 48000
  %tmp_159 = add i17 %tmp_158, %tmp_32_cast1
  %tmp_179_cast = zext i17 %tmp_159 to i64
  %fc_weight_addr = getelementptr [192000 x double]* @fc_weight, i64 0, i64 %tmp_179_cast
  %fc_in_addr = getelementptr inbounds [400 x double]* @fc_in, i64 0, i64 %tmp_52
  %fc_in_load = load double* %fc_in_addr, align 8
  %fc_weight_load = load double* %fc_weight_addr, align 8
  %tmp_53 = fmul double %fc_in_load, %fc_weight_load
  %tmp_54 = fadd double %tmp_46, %tmp_53
  br label %10

._crit_edge56:                                    ; preds = %10
  %fc_bias_load = load double* %fc_bias_addr, align 8
  %tmp_49 = fadd double %tmp_46, %fc_bias_load
  %tmp_49_to_int = bitcast double %tmp_49 to i64
  %tmp_95 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_49_to_int, i32 52, i32 62)
  %tmp_154 = trunc i64 %tmp_49_to_int to i52
  %notlhs4 = icmp ne i11 %tmp_95, -1
  %notrhs4 = icmp eq i52 %tmp_154, 0
  %tmp_97 = or i1 %notrhs4, %notlhs4
  %tmp_98 = fcmp olt double %tmp_49, 0.000000e+00
  %tmp_99 = and i1 %tmp_97, %tmp_98
  %storemerge2 = select i1 %tmp_99, double 0.000000e+00, double %tmp_49
  store double %storemerge2, double* %fc_dot_addr, align 8
  br label %.preheader32

.preheader31:                                     ; preds = %.preheader31.preheader, %._crit_edge57
  %i4 = phi i7 [ %i_4, %._crit_edge57 ], [ 0, %.preheader31.preheader ]
  %exitcond3 = icmp eq i7 %i4, -44
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %i_4 = add i7 %i4, 1
  br i1 %exitcond3, label %.preheader.preheader, label %12

.preheader.preheader:                             ; preds = %.preheader31
  br label %.preheader

; <label>:12                                      ; preds = %.preheader31
  %tmp_33 = zext i7 %i4 to i64
  %tmp_33_cast1 = zext i7 %i4 to i17
  %tmp_33_cast = zext i7 %i4 to i9
  %tmp_153 = add i9 %tmp_33_cast, 240
  %tmp_174_cast = zext i9 %tmp_153 to i64
  %fc_bias_addr_1 = getelementptr [480 x double]* @fc_bias, i64 0, i64 %tmp_174_cast
  %fc_dot_addr_1 = getelementptr inbounds [3 x [120 x double]]* @fc_dot, i64 0, i64 2, i64 %tmp_33
  br label %13

; <label>:13                                      ; preds = %14, %12
  %storemerge4 = phi double [ 0.000000e+00, %12 ], [ %tmp_71, %14 ]
  %j3 = phi i7 [ 0, %12 ], [ %j_3, %14 ]
  store double %storemerge4, double* %fc_dot_addr_1, align 8
  %exitcond2 = icmp eq i7 %j3, -8
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 120, i64 120, i64 120) nounwind
  %j_3 = add i7 %j3, 1
  br i1 %exitcond2, label %._crit_edge57, label %14

; <label>:14                                      ; preds = %13
  %tmp_69 = zext i7 %j3 to i64
  %tmp_168 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %j3, i7 0)
  %p_shl46_cast = zext i14 %tmp_168 to i15
  %tmp_169 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %j3, i3 0)
  %p_shl47_cast = zext i10 %tmp_169 to i15
  %tmp_170 = sub i15 %p_shl46_cast, %p_shl47_cast
  %tmp_189_cast = sext i15 %tmp_170 to i17
  %tmp_171 = add i17 %tmp_189_cast, -35072
  %tmp_172 = add i17 %tmp_171, %tmp_33_cast1
  %tmp_191_cast = zext i17 %tmp_172 to i64
  %fc_weight_addr_1 = getelementptr [192000 x double]* @fc_weight, i64 0, i64 %tmp_191_cast
  %fc_dot_addr_3 = getelementptr inbounds [3 x [120 x double]]* @fc_dot, i64 0, i64 1, i64 %tmp_69
  %fc_dot_load = load double* %fc_dot_addr_3, align 8
  %fc_weight_load_1 = load double* %fc_weight_addr_1, align 8
  %tmp_70 = fmul double %fc_dot_load, %fc_weight_load_1
  %tmp_71 = fadd double %storemerge4, %tmp_70
  br label %13

._crit_edge57:                                    ; preds = %13
  %fc_bias_load_1 = load double* %fc_bias_addr_1, align 8
  %tmp_56 = fadd double %storemerge4, %fc_bias_load_1
  %tmp_56_to_int = bitcast double %tmp_56 to i64
  %tmp_100 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %tmp_56_to_int, i32 52, i32 62)
  %tmp_167 = trunc i64 %tmp_56_to_int to i52
  %notlhs5 = icmp ne i11 %tmp_100, -1
  %notrhs5 = icmp eq i52 %tmp_167, 0
  %tmp_102 = or i1 %notrhs5, %notlhs5
  %tmp_103 = fcmp olt double %tmp_56, 0.000000e+00
  %tmp_104 = and i1 %tmp_102, %tmp_103
  %storemerge3 = select i1 %tmp_104, double 0.000000e+00, double %tmp_56
  store double %storemerge3, double* %fc_dot_addr_1, align 8
  br label %.preheader31

.preheader:                                       ; preds = %.preheader.preheader, %_ifconv
  %max_index_1 = phi i4 [ %i_5, %_ifconv ], [ 0, %.preheader.preheader ]
  %max_index = phi i32 [ %max_index_2, %_ifconv ], [ undef, %.preheader.preheader ]
  %max_value_s = phi double [ %max_value_12, %_ifconv ], [ %max_value_1_load, %.preheader.preheader ]
  %max_index_1_cast = zext i4 %max_index_1 to i32
  %exitcond1 = icmp eq i4 %max_index_1, -6
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10, i64 10, i64 10) nounwind
  %i_5 = add i4 %max_index_1, 1
  br i1 %exitcond1, label %18, label %15

; <label>:15                                      ; preds = %.preheader
  %tmp_47 = zext i4 %max_index_1 to i64
  %tmp_47_cast1 = zext i4 %max_index_1 to i18
  %tmp_47_cast = zext i4 %max_index_1 to i9
  %tmp_166 = add i9 %tmp_47_cast, -152
  %tmp_186_cast = zext i9 %tmp_166 to i64
  %fc_bias_addr_2 = getelementptr [480 x double]* @fc_bias, i64 0, i64 %tmp_186_cast
  %fc_dot_addr_2 = getelementptr inbounds [3 x [120 x double]]* @fc_dot, i64 1, i64 0, i64 %tmp_47
  br label %16

; <label>:16                                      ; preds = %17, %15
  %storemerge5 = phi double [ 0.000000e+00, %15 ], [ %tmp_81, %17 ]
  %j4 = phi i7 [ 0, %15 ], [ %j_4, %17 ]
  store double %storemerge5, double* %fc_dot_addr_2, align 8
  %exitcond = icmp eq i7 %j4, -44
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 84, i64 84, i64 84) nounwind
  %j_4 = add i7 %j4, 1
  br i1 %exitcond, label %_ifconv, label %17

; <label>:17                                      ; preds = %16
  %tmp_73 = zext i7 %j4 to i64
  %tmp_192 = call i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7 %j4, i7 0)
  %p_shl48_cast = zext i14 %tmp_192 to i15
  %tmp_193 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %j4, i3 0)
  %p_shl49_cast = zext i10 %tmp_193 to i15
  %tmp_194 = sub i15 %p_shl48_cast, %p_shl49_cast
  %tmp_208_cast = sext i15 %tmp_194 to i18
  %tmp_195 = add i18 %tmp_208_cast, -118144
  %tmp_196 = add i18 %tmp_195, %tmp_47_cast1
  %tmp_210_cast = zext i18 %tmp_196 to i64
  %fc_weight_addr_2 = getelementptr [192000 x double]* @fc_weight, i64 0, i64 %tmp_210_cast
  %fc_dot_addr_4 = getelementptr inbounds [3 x [120 x double]]* @fc_dot, i64 0, i64 2, i64 %tmp_73
  %fc_dot_load_1 = load double* %fc_dot_addr_4, align 8
  %fc_weight_load_2 = load double* %fc_weight_addr_2, align 8
  %tmp_74 = fmul double %fc_dot_load_1, %fc_weight_load_2
  %tmp_81 = fadd double %storemerge5, %tmp_74
  br label %16

_ifconv:                                          ; preds = %16
  %fc_bias_load_2 = load double* %fc_bias_addr_2, align 8
  %max_value_13 = fadd double %storemerge5, %fc_bias_load_2
  store double %max_value_13, double* %fc_dot_addr_2, align 8
  %tmp_72 = icmp eq i4 %max_index_1, 0
  %max_value_14 = load double* getelementptr inbounds ([3 x [120 x double]]* @fc_dot, i64 1, i64 0, i64 0), align 8
  %max_value_17_to_int = bitcast double %max_value_13 to i64
  %tmp_114 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_17_to_int, i32 52, i32 62)
  %tmp_190 = trunc i64 %max_value_17_to_int to i52
  %max_value_to_int = bitcast double %max_value_s to i64
  %tmp_116 = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %max_value_to_int, i32 52, i32 62)
  %tmp_191 = trunc i64 %max_value_to_int to i52
  %notlhs8 = icmp ne i11 %tmp_114, -1
  %notrhs8 = icmp eq i52 %tmp_190, 0
  %tmp_118 = or i1 %notrhs8, %notlhs8
  %notlhs9 = icmp ne i11 %tmp_116, -1
  %notrhs9 = icmp eq i52 %tmp_191, 0
  %tmp_119 = or i1 %notrhs9, %notlhs9
  %tmp_120 = and i1 %tmp_118, %tmp_119
  %tmp_121 = fcmp ogt double %max_value_13, %max_value_s
  %tmp_122 = and i1 %tmp_120, %tmp_121
  %sel_tmp = select i1 %tmp_72, i32 0, i32 %max_index
  %sel_tmp1 = xor i1 %tmp_72, true
  %sel_tmp2 = and i1 %tmp_122, %sel_tmp1
  %max_index_2 = select i1 %sel_tmp2, i32 %max_index_1_cast, i32 %sel_tmp
  %max_value_15 = select i1 %tmp_72, double %max_value_14, double %max_value_s
  %max_value_12 = select i1 %sel_tmp2, double %max_value_13, double %max_value_15
  br label %.preheader

; <label>:18                                      ; preds = %.preheader
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

declare i62 @_ssdm_op_PartSelect.i62.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i25 @_ssdm_op_PartSelect.i25.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i15 @_ssdm_op_PartSelect.i15.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i14 @_ssdm_op_PartSelect.i14.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i12 @_ssdm_op_PartSelect.i12.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_34 = trunc i64 %empty to i11
  ret i11 %empty_34
}

declare i64 @_ssdm_op_BitConcatenate.i64.i62.i2(i62, i2) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i61.i3(i61, i3) nounwind readnone {
entry:
  %empty = zext i61 %0 to i64
  %empty_35 = zext i3 %1 to i64
  %empty_36 = shl i64 %empty, 3
  %empty_37 = or i64 %empty_36, %empty_35
  ret i64 %empty_37
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i60.i3.i1(i60, i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %1 to i4
  %empty_38 = zext i1 %2 to i4
  %empty_39 = shl i4 %empty, 1
  %empty_40 = or i4 %empty_39, %empty_38
  %empty_41 = zext i60 %0 to i64
  %empty_42 = zext i4 %empty_40 to i64
  %empty_43 = shl i64 %empty_41, 4
  %empty_44 = or i64 %empty_43, %empty_42
  ret i64 %empty_44
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i5(i59, i5) nounwind readnone {
entry:
  %empty = zext i59 %0 to i64
  %empty_45 = zext i5 %1 to i64
  %empty_46 = shl i64 %empty, 5
  %empty_47 = or i64 %empty_46, %empty_45
  ret i64 %empty_47
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i59.i3.i2(i59, i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %1 to i5
  %empty_48 = zext i2 %2 to i5
  %empty_49 = shl i5 %empty, 2
  %empty_50 = or i5 %empty_49, %empty_48
  %empty_51 = zext i59 %0 to i64
  %empty_52 = zext i5 %empty_50 to i64
  %empty_53 = shl i64 %empty_51, 5
  %empty_54 = or i64 %empty_53, %empty_52
  ret i64 %empty_54
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i58.i5.i1(i58, i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %1 to i6
  %empty_55 = zext i1 %2 to i6
  %empty_56 = shl i6 %empty, 1
  %empty_57 = or i6 %empty_56, %empty_55
  %empty_58 = zext i58 %0 to i64
  %empty_59 = zext i6 %empty_57 to i64
  %empty_60 = shl i64 %empty_58, 6
  %empty_61 = or i64 %empty_60, %empty_59
  ret i64 %empty_61
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i5.i2(i57, i5, i2) nounwind readnone {
entry:
  %empty = zext i5 %1 to i7
  %empty_62 = zext i2 %2 to i7
  %empty_63 = shl i7 %empty, 2
  %empty_64 = or i7 %empty_63, %empty_62
  %empty_65 = zext i57 %0 to i64
  %empty_66 = zext i7 %empty_64 to i64
  %empty_67 = shl i64 %empty_65, 7
  %empty_68 = or i64 %empty_67, %empty_66
  ret i64 %empty_68
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i57.i3.i4(i57, i3, i4) nounwind readnone {
entry:
  %empty = zext i3 %1 to i7
  %empty_69 = zext i4 %2 to i7
  %empty_70 = shl i7 %empty, 4
  %empty_71 = or i7 %empty_70, %empty_69
  %empty_72 = zext i57 %0 to i64
  %empty_73 = zext i7 %empty_71 to i64
  %empty_74 = shl i64 %empty_72, 7
  %empty_75 = or i64 %empty_74, %empty_73
  ret i64 %empty_75
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i5.i3(i56, i5, i3) nounwind readnone {
entry:
  %empty = zext i5 %1 to i8
  %empty_76 = zext i3 %2 to i8
  %empty_77 = shl i8 %empty, 3
  %empty_78 = or i8 %empty_77, %empty_76
  %empty_79 = zext i56 %0 to i64
  %empty_80 = zext i8 %empty_78 to i64
  %empty_81 = shl i64 %empty_79, 8
  %empty_82 = or i64 %empty_81, %empty_80
  ret i64 %empty_82
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i56.i3.i5(i56, i3, i5) nounwind readnone {
entry:
  %empty = zext i3 %1 to i8
  %empty_83 = zext i5 %2 to i8
  %empty_84 = shl i8 %empty, 5
  %empty_85 = or i8 %empty_84, %empty_83
  %empty_86 = zext i56 %0 to i64
  %empty_87 = zext i8 %empty_85 to i64
  %empty_88 = shl i64 %empty_86, 8
  %empty_89 = or i64 %empty_88, %empty_87
  ret i64 %empty_89
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i55.i5.i4(i55, i5, i4) nounwind readnone {
entry:
  %empty = zext i5 %1 to i9
  %empty_90 = zext i4 %2 to i9
  %empty_91 = shl i9 %empty, 4
  %empty_92 = or i9 %empty_91, %empty_90
  %empty_93 = zext i55 %0 to i64
  %empty_94 = zext i9 %empty_92 to i64
  %empty_95 = shl i64 %empty_93, 9
  %empty_96 = or i64 %empty_95, %empty_94
  ret i64 %empty_96
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i54.i5.i5(i54, i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %1 to i10
  %empty_97 = zext i5 %2 to i10
  %empty_98 = shl i10 %empty, 5
  %empty_99 = or i10 %empty_98, %empty_97
  %empty_100 = zext i54 %0 to i64
  %empty_101 = zext i10 %empty_99 to i64
  %empty_102 = shl i64 %empty_100, 10
  %empty_103 = or i64 %empty_102, %empty_101
  ret i64 %empty_103
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_104 = zext i1 %1 to i5
  %empty_105 = shl i5 %empty, 1
  %empty_106 = or i5 %empty_105, %empty_104
  ret i5 %empty_106
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_107 = zext i2 %1 to i5
  %empty_108 = shl i5 %empty, 2
  %empty_109 = or i5 %empty_108, %empty_107
  ret i5 %empty_109
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_110 = zext i1 %1 to i4
  %empty_111 = shl i4 %empty, 1
  %empty_112 = or i4 %empty_111, %empty_110
  ret i4 %empty_112
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i15.i2(i15, i2) nounwind readnone {
entry:
  %empty = zext i15 %0 to i17
  %empty_113 = zext i2 %1 to i17
  %empty_114 = shl i17 %empty, 2
  %empty_115 = or i17 %empty_114, %empty_113
  ret i17 %empty_115
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i12.i5(i12, i5) nounwind readnone {
entry:
  %empty = zext i12 %0 to i17
  %empty_116 = zext i5 %1 to i17
  %empty_117 = shl i17 %empty, 5
  %empty_118 = or i17 %empty_117, %empty_116
  ret i17 %empty_118
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i9.i7(i9, i7) nounwind readnone {
entry:
  %empty = zext i9 %0 to i16
  %empty_119 = zext i7 %1 to i16
  %empty_120 = shl i16 %empty, 7
  %empty_121 = or i16 %empty_120, %empty_119
  ret i16 %empty_121
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_122 = zext i1 %1 to i15
  %empty_123 = shl i15 %empty, 1
  %empty_124 = or i15 %empty_123, %empty_122
  ret i15 %empty_124
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i11.i4(i11, i4) nounwind readnone {
entry:
  %empty = zext i11 %0 to i15
  %empty_125 = zext i4 %1 to i15
  %empty_126 = shl i15 %empty, 4
  %empty_127 = or i15 %empty_126, %empty_125
  ret i15 %empty_127
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i7.i7(i7, i7) nounwind readnone {
entry:
  %empty = zext i7 %0 to i14
  %empty_128 = zext i7 %1 to i14
  %empty_129 = shl i14 %empty, 7
  %empty_130 = or i14 %empty_129, %empty_128
  ret i14 %empty_130
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i12.i2(i12, i2) nounwind readnone {
entry:
  %empty = zext i12 %0 to i14
  %empty_131 = zext i2 %1 to i14
  %empty_132 = shl i14 %empty, 2
  %empty_133 = or i14 %empty_132, %empty_131
  ret i14 %empty_133
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i9.i3(i9, i3) nounwind readnone {
entry:
  %empty = zext i9 %0 to i12
  %empty_134 = zext i3 %1 to i12
  %empty_135 = shl i12 %empty, 3
  %empty_136 = or i12 %empty_135, %empty_134
  ret i12 %empty_136
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7, i3) nounwind readnone {
entry:
  %empty = zext i7 %0 to i10
  %empty_137 = zext i3 %1 to i10
  %empty_138 = shl i10 %empty, 3
  %empty_139 = or i10 %empty_138, %empty_137
  ret i10 %empty_139
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i5.i5(i5, i5) nounwind readnone {
entry:
  %empty = zext i5 %0 to i10
  %empty_140 = zext i5 %1 to i10
  %empty_141 = shl i10 %empty, 5
  %empty_142 = or i10 %empty_141, %empty_140
  ret i10 %empty_142
}

declare void @_GLOBAL__I_a5() nounwind section ".text.startup"

declare void @_GLOBAL__I_a40() nounwind section ".text.startup"

declare void @_GLOBAL__I_a11547() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !25, !25, !7, !31, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !40, !40, !43, !7, !45, !45, !7, !47, !7, !7, !7, !50, !50, !52, !52, !54, !7, !7, !7, !57, !45, !45, !7, !60, !7, !7, !7, !62, !62, !64, !64, !66, !7, !7, !7, !7, !7, !68, !7, !7, !7, !7, !70, !70, !71, !73, !73, !75, !75, !77, !40, !40, !43, !68, !70, !70, !71, !75, !75, !79, !40, !40, !43, !68, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !81, !81, !81, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !81, !81, !81, !7, !81, !81, !81, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !7, !86, !86, !86, !86, !89, !89, !89, !89, !91, !91, !91, !91, !86, !86, !86, !86, !89, !89, !89, !89, !91, !91, !91, !91, !92, !95, !7, !7, !7, !98, !45, !45, !7, !101, !101, !103, !7, !7, !7, !105, !105, !7, !7, !107, !73, !73, !7, !109, !110, !110, !7, !112, !112, !114, !112, !112, !114, !116, !45, !45, !122, !7, !7, !7, !124, !45, !45, !7, !7, !7, !57, !45, !45, !60, !7, !7, !7, !62, !62, !64, !64, !126, !7, !7, !114, !114, !7, !128, !130, !132, !132, !135, !135, !137, !137, !140, !142, !142, !7, !7, !7, !7, !144, !146, !146, !7, !7, !135, !147, !147, !70, !70, !71, !75, !75, !149, !151, !151, !149, !153, !153, !155, !157, !157, !7, !7, !158, !160, !160, !135, !135, !161, !161, !155, !158, !160, !160, !7, !135, !163, !163, !165, !166, !166, !168, !7, !128, !165, !170, !170, !172, !172, !7, !7, !7, !7, !7, !7, !7, !7, !92, !174, !7, !7, !7, !98, !176, !176, !178, !7, !105, !105, !7, !7, !180, !109, !182, !182, !7, !184, !184, !186, !184, !184, !186, !116, !188, !7, !7, !7, !190, !45, !45, !126, !7, !7, !186, !186, !151, !151, !149, !92, !192, !7, !7, !7, !98, !45, !45, !7, !194, !194, !196, !7, !105, !105, !7, !7, !198, !109, !200, !200, !7, !202, !202, !204, !202, !202, !204, !116, !206, !7, !7, !7, !208, !45, !45, !126, !7, !7, !204, !204, !151, !151, !149, !92, !210, !7, !7, !7, !98, !45, !45, !7, !212, !212, !214, !7, !105, !105, !7, !7, !216, !109, !218, !218, !7, !220, !220, !222, !220, !220, !222, !116, !224, !7, !7, !7, !226, !45, !45, !126, !7, !7, !222, !222, !151, !151, !149, !228, !230, !7, !232, !232, !234, !232, !232, !234, !236, !7, !7, !7, !238, !45, !45, !7, !240, !242, !244, !244, !126, !7, !7, !234, !234, !7, !128, !130, !246, !246, !135, !135, !248, !248, !250, !252, !252, !7, !7, !7, !7, !253, !255, !255, !7, !7, !135, !256, !256, !70, !70, !71, !75, !75, !258, !260, !260, !258, !262, !262, !263, !265, !265, !7, !7, !266, !268, !268, !135, !135, !269, !269, !263, !266, !268, !268, !135, !271, !271, !165, !273, !273, !275, !7, !277, !277, !7, !7, !7, !7, !228, !278, !280, !280, !282, !280, !280, !282, !284, !7, !7, !7, !286, !45, !45, !126, !7, !7, !282, !282, !260, !260, !258, !228, !288, !290, !290, !292, !290, !290, !292, !294, !7, !7, !7, !296, !45, !45, !126, !7, !7, !292, !292, !260, !260, !258, !228, !298, !300, !300, !302, !300, !300, !302, !304, !7, !7, !7, !306, !45, !45, !126, !7, !7, !302, !302, !260, !260, !258, !308, !310, !7, !312, !314, !315, !315, !317, !315, !315, !317, !319, !7, !7, !7, !321, !45, !45, !7, !323, !324, !326, !326, !126, !7, !7, !317, !317, !7, !128, !130, !328, !328, !135, !135, !330, !330, !332, !334, !334, !7, !7, !7, !335, !337, !337, !7, !135, !338, !338, !70, !70, !71, !75, !75, !340, !342, !342, !340, !344, !344, !345, !347, !347, !7, !7, !348, !350, !350, !135, !135, !351, !351, !345, !348, !350, !350, !7, !135, !353, !353, !165, !355, !355, !357, !7, !359, !359, !7, !7, !7, !7, !7, !308, !361, !363, !363, !365, !363, !363, !365, !367, !7, !7, !369, !45, !45, !126, !7, !7, !365, !365, !342, !342, !340, !308, !371, !373, !373, !375, !373, !373, !375, !377, !7, !7, !7, !379, !45, !45, !126, !7, !7, !375, !375, !342, !342, !340, !308, !381, !383, !383, !385, !383, !383, !385, !387, !7, !7, !7, !389, !45, !45, !126, !7, !7, !385, !385, !342, !342, !340, !92, !391, !7, !7, !7, !7, !393, !393, !395, !395, !397, !399, !399, !7, !128, !165, !401, !401, !105, !105, !7, !403, !109, !405, !405, !7, !112, !112, !114, !112, !112, !114, !116, !92, !407, !7, !7, !7, !7, !409, !409, !75, !75, !411, !413, !413, !7, !128, !165, !415, !415, !105, !105, !7, !417, !109, !419, !419, !7, !184, !184, !186, !7, !184, !184, !186, !116, !92, !421, !7, !7, !7, !7, !423, !423, !425, !425, !427, !429, !429, !7, !128, !165, !431, !431, !105, !105, !7, !433, !109, !435, !435, !7, !202, !202, !204, !7, !202, !202, !204, !116, !92, !437, !7, !7, !7, !7, !439, !439, !441, !441, !443, !445, !445, !7, !128, !165, !447, !447, !105, !105, !7, !449, !109, !451, !451, !7, !220, !220, !222, !7, !220, !220, !222, !116, !228, !453, !232, !232, !234, !232, !232, !234, !228, !455, !280, !280, !282, !280, !280, !282, !228, !457, !290, !290, !292, !290, !290, !292, !228, !459, !300, !300, !302, !300, !300, !302, !308, !461, !315, !315, !317, !315, !315, !317, !308, !463, !363, !363, !365, !363, !363, !365, !308, !465, !373, !373, !375, !373, !373, !375, !308, !467, !383, !383, !385, !383, !383, !385, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !40, !40, !43, !7, !47, !7, !7, !7, !50, !50, !52, !52, !54, !7, !7, !7, !66, !7, !7, !7, !7, !68, !7, !70, !70, !71, !75, !75, !77, !40, !40, !43, !68, !70, !70, !71, !75, !75, !79, !40, !40, !43, !68, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !81, !81, !81, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !81, !81, !81, !7, !81, !81, !81, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35, !7, !35, !35, !35}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!469, !476, !484, !491, !499, !507, !513, !519, !525, !532, !540, !547, !553, !554, !555, !556, !557, !558, !559}

!0 = metadata !{i32 (i32)* @lenet5_ap2, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"num", metadata !"row", metadata !"column"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"channel", metadata !"sample", metadata !"row", metadata !"column"}
!25 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !6}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"lay_num", metadata !"row"}
!31 = metadata !{null, metadata !32, metadata !15, metadata !33, metadata !17, metadata !34, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"struct timespec", metadata !"struct timespec"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"name", metadata !"start_time", metadata !"end_time"}
!35 = metadata !{null, metadata !36, metadata !2, metadata !37, metadata !38, metadata !39, metadata !6}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!38 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"str"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!43 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !44, metadata !6}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !46, metadata !6}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!47 = metadata !{null, metadata !26, metadata !27, metadata !48, metadata !29, metadata !49, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !46, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !46, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!54 = metadata !{null, metadata !1, metadata !2, metadata !55, metadata !4, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!57 = metadata !{null, metadata !26, metadata !27, metadata !58, metadata !29, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!60 = metadata !{null, metadata !26, metadata !27, metadata !61, metadata !29, metadata !49, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !46, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !46, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!66 = metadata !{null, metadata !1, metadata !2, metadata !67, metadata !4, metadata !56, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !69, metadata !6}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !42, metadata !6}
!71 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !72, metadata !6}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!73 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !74, metadata !6}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!75 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !46, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !46, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<25, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!79 = metadata !{null, metadata !1, metadata !2, metadata !80, metadata !4, metadata !46, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 0, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!81 = metadata !{null, metadata !82, metadata !27, metadata !83, metadata !84, metadata !85, metadata !6}
!82 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!84 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!86 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"half"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !88, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !88, metadata !6}
!92 = metadata !{null, metadata !26, metadata !27, metadata !93, metadata !29, metadata !94, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow"}
!95 = metadata !{null, metadata !14, metadata !15, metadata !96, metadata !17, metadata !97, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"x", metadata !"detect_overflow", metadata !""}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !100, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!100 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!101 = metadata !{null, metadata !1, metadata !2, metadata !102, metadata !4, metadata !46, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<64, 64, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!103 = metadata !{null, metadata !1, metadata !2, metadata !104, metadata !4, metadata !46, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!105 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !106, metadata !6}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!107 = metadata !{null, metadata !26, metadata !27, metadata !108, metadata !29, metadata !59, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!109 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !56, metadata !6}
!110 = metadata !{null, metadata !1, metadata !2, metadata !111, metadata !4, metadata !46, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 65, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!112 = metadata !{null, metadata !1, metadata !2, metadata !113, metadata !4, metadata !46, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<169, 116, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !46, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<169, 116, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!116 = metadata !{null, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !6}
!117 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!118 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool", metadata !"_Bool"}
!120 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"underflow", metadata !"overflow", metadata !"lD", metadata !"sign"}
!122 = metadata !{null, metadata !26, metadata !27, metadata !123, metadata !29, metadata !49, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &", metadata !"int"}
!124 = metadata !{null, metadata !1, metadata !2, metadata !125, metadata !4, metadata !56, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<169, false> &"}
!126 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !127, metadata !6}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!128 = metadata !{null, metadata !1, metadata !2, metadata !129, metadata !4, metadata !106, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!130 = metadata !{null, metadata !1, metadata !2, metadata !131, metadata !4, metadata !5, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!132 = metadata !{null, metadata !82, metadata !27, metadata !133, metadata !29, metadata !134, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!134 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!135 = metadata !{null, metadata !26, metadata !27, metadata !28, metadata !29, metadata !136, metadata !6}
!136 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!137 = metadata !{null, metadata !32, metadata !15, metadata !138, metadata !17, metadata !139, metadata !6}
!138 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<52, false>*", metadata !"int", metadata !"int"}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!140 = metadata !{null, metadata !1, metadata !2, metadata !141, metadata !4, metadata !106, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<52, false> &"}
!142 = metadata !{null, metadata !1, metadata !2, metadata !141, metadata !4, metadata !143, metadata !6}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !106, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<52, false> &"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !46, metadata !6}
!147 = metadata !{null, metadata !32, metadata !15, metadata !148, metadata !17, metadata !139, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!149 = metadata !{null, metadata !1, metadata !2, metadata !150, metadata !4, metadata !46, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!151 = metadata !{null, metadata !1, metadata !2, metadata !152, metadata !4, metadata !46, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!153 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !154, metadata !6}
!154 = metadata !{metadata !"kernel_arg_name", metadata !"f"}
!155 = metadata !{null, metadata !1, metadata !2, metadata !156, metadata !4, metadata !106, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!157 = metadata !{null, metadata !1, metadata !2, metadata !156, metadata !4, metadata !143, metadata !6}
!158 = metadata !{null, metadata !1, metadata !2, metadata !159, metadata !4, metadata !106, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!160 = metadata !{null, metadata !1, metadata !2, metadata !159, metadata !4, metadata !46, metadata !6}
!161 = metadata !{null, metadata !32, metadata !15, metadata !162, metadata !17, metadata !139, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!163 = metadata !{null, metadata !32, metadata !15, metadata !164, metadata !17, metadata !139, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<11, false>*", metadata !"int", metadata !"int"}
!165 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!166 = metadata !{null, metadata !82, metadata !27, metadata !167, metadata !29, metadata !134, metadata !6}
!167 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int"}
!168 = metadata !{null, metadata !1, metadata !2, metadata !169, metadata !4, metadata !106, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<64, false> &"}
!170 = metadata !{null, metadata !82, metadata !27, metadata !171, metadata !29, metadata !134, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1, false>*", metadata !"int"}
!172 = metadata !{null, metadata !1, metadata !2, metadata !173, metadata !4, metadata !106, metadata !6}
!173 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!174 = metadata !{null, metadata !14, metadata !15, metadata !175, metadata !17, metadata !97, metadata !6}
!175 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!176 = metadata !{null, metadata !1, metadata !2, metadata !177, metadata !4, metadata !46, metadata !6}
!177 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!178 = metadata !{null, metadata !1, metadata !2, metadata !179, metadata !4, metadata !46, metadata !6}
!179 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!180 = metadata !{null, metadata !26, metadata !27, metadata !181, metadata !29, metadata !59, metadata !6}
!181 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!182 = metadata !{null, metadata !1, metadata !2, metadata !183, metadata !4, metadata !46, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 33, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!184 = metadata !{null, metadata !1, metadata !2, metadata !185, metadata !4, metadata !46, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<137, 84, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !187, metadata !4, metadata !46, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<137, 84, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!188 = metadata !{null, metadata !26, metadata !27, metadata !189, metadata !29, metadata !49, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &", metadata !"int"}
!190 = metadata !{null, metadata !1, metadata !2, metadata !191, metadata !4, metadata !56, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<137, false> &"}
!192 = metadata !{null, metadata !14, metadata !15, metadata !193, metadata !17, metadata !97, metadata !6}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!194 = metadata !{null, metadata !1, metadata !2, metadata !195, metadata !4, metadata !46, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<16, 16, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!196 = metadata !{null, metadata !1, metadata !2, metadata !197, metadata !4, metadata !46, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!198 = metadata !{null, metadata !26, metadata !27, metadata !199, metadata !29, metadata !59, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!200 = metadata !{null, metadata !1, metadata !2, metadata !201, metadata !4, metadata !46, metadata !6}
!201 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 17, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!202 = metadata !{null, metadata !1, metadata !2, metadata !203, metadata !4, metadata !46, metadata !6}
!203 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<121, 68, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!204 = metadata !{null, metadata !1, metadata !2, metadata !205, metadata !4, metadata !46, metadata !6}
!205 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<121, 68, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!206 = metadata !{null, metadata !26, metadata !27, metadata !207, metadata !29, metadata !49, metadata !6}
!207 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &", metadata !"int"}
!208 = metadata !{null, metadata !1, metadata !2, metadata !209, metadata !4, metadata !56, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<121, false> &"}
!210 = metadata !{null, metadata !14, metadata !15, metadata !211, metadata !17, metadata !97, metadata !6}
!211 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!212 = metadata !{null, metadata !1, metadata !2, metadata !213, metadata !4, metadata !46, metadata !6}
!213 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 8, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!214 = metadata !{null, metadata !1, metadata !2, metadata !215, metadata !4, metadata !46, metadata !6}
!215 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!216 = metadata !{null, metadata !26, metadata !27, metadata !217, metadata !29, metadata !59, metadata !6}
!217 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!218 = metadata !{null, metadata !1, metadata !2, metadata !219, metadata !4, metadata !46, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 9, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!220 = metadata !{null, metadata !1, metadata !2, metadata !221, metadata !4, metadata !46, metadata !6}
!221 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<113, 60, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!222 = metadata !{null, metadata !1, metadata !2, metadata !223, metadata !4, metadata !46, metadata !6}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<113, 60, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!224 = metadata !{null, metadata !26, metadata !27, metadata !225, metadata !29, metadata !49, metadata !6}
!225 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &", metadata !"int"}
!226 = metadata !{null, metadata !1, metadata !2, metadata !227, metadata !4, metadata !56, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<113, false> &"}
!228 = metadata !{null, metadata !26, metadata !27, metadata !229, metadata !29, metadata !94, metadata !6}
!229 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool"}
!230 = metadata !{null, metadata !14, metadata !15, metadata !231, metadata !17, metadata !97, metadata !6}
!231 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!232 = metadata !{null, metadata !1, metadata !2, metadata !233, metadata !4, metadata !46, metadata !6}
!233 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<111, 87, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!234 = metadata !{null, metadata !1, metadata !2, metadata !235, metadata !4, metadata !46, metadata !6}
!235 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<111, 87, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!236 = metadata !{null, metadata !26, metadata !27, metadata !237, metadata !29, metadata !49, metadata !6}
!237 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &", metadata !"int"}
!238 = metadata !{null, metadata !1, metadata !2, metadata !239, metadata !4, metadata !56, metadata !6}
!239 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<111, false> &"}
!240 = metadata !{null, metadata !26, metadata !27, metadata !241, metadata !29, metadata !59, metadata !6}
!241 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!242 = metadata !{null, metadata !26, metadata !27, metadata !243, metadata !29, metadata !49, metadata !6}
!243 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!244 = metadata !{null, metadata !1, metadata !2, metadata !245, metadata !4, metadata !46, metadata !6}
!245 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!246 = metadata !{null, metadata !82, metadata !27, metadata !247, metadata !29, metadata !134, metadata !6}
!247 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!248 = metadata !{null, metadata !32, metadata !15, metadata !249, metadata !17, metadata !139, metadata !6}
!249 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<23, false>*", metadata !"int", metadata !"int"}
!250 = metadata !{null, metadata !1, metadata !2, metadata !251, metadata !4, metadata !106, metadata !6}
!251 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<23, false> &"}
!252 = metadata !{null, metadata !1, metadata !2, metadata !251, metadata !4, metadata !143, metadata !6}
!253 = metadata !{null, metadata !1, metadata !2, metadata !254, metadata !4, metadata !106, metadata !6}
!254 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, false> &"}
!255 = metadata !{null, metadata !1, metadata !2, metadata !254, metadata !4, metadata !46, metadata !6}
!256 = metadata !{null, metadata !32, metadata !15, metadata !257, metadata !17, metadata !139, metadata !6}
!257 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!258 = metadata !{null, metadata !1, metadata !2, metadata !259, metadata !4, metadata !46, metadata !6}
!259 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<24, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!260 = metadata !{null, metadata !1, metadata !2, metadata !261, metadata !4, metadata !46, metadata !6}
!261 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<24, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!262 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !154, metadata !6}
!263 = metadata !{null, metadata !1, metadata !2, metadata !264, metadata !4, metadata !106, metadata !6}
!264 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!265 = metadata !{null, metadata !1, metadata !2, metadata !264, metadata !4, metadata !143, metadata !6}
!266 = metadata !{null, metadata !1, metadata !2, metadata !267, metadata !4, metadata !106, metadata !6}
!267 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!268 = metadata !{null, metadata !1, metadata !2, metadata !267, metadata !4, metadata !46, metadata !6}
!269 = metadata !{null, metadata !32, metadata !15, metadata !270, metadata !17, metadata !139, metadata !6}
!270 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!271 = metadata !{null, metadata !32, metadata !15, metadata !272, metadata !17, metadata !139, metadata !6}
!272 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!273 = metadata !{null, metadata !82, metadata !27, metadata !274, metadata !29, metadata !134, metadata !6}
!274 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int"}
!275 = metadata !{null, metadata !1, metadata !2, metadata !276, metadata !4, metadata !106, metadata !6}
!276 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<32, false> &"}
!277 = metadata !{null, metadata !1, metadata !2, metadata !131, metadata !4, metadata !106, metadata !6}
!278 = metadata !{null, metadata !14, metadata !15, metadata !279, metadata !17, metadata !97, metadata !6}
!279 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!280 = metadata !{null, metadata !1, metadata !2, metadata !281, metadata !4, metadata !46, metadata !6}
!281 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<79, 55, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!282 = metadata !{null, metadata !1, metadata !2, metadata !283, metadata !4, metadata !46, metadata !6}
!283 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<79, 55, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!284 = metadata !{null, metadata !26, metadata !27, metadata !285, metadata !29, metadata !49, metadata !6}
!285 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &", metadata !"int"}
!286 = metadata !{null, metadata !1, metadata !2, metadata !287, metadata !4, metadata !56, metadata !6}
!287 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<79, false> &"}
!288 = metadata !{null, metadata !14, metadata !15, metadata !289, metadata !17, metadata !97, metadata !6}
!289 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!290 = metadata !{null, metadata !1, metadata !2, metadata !291, metadata !4, metadata !46, metadata !6}
!291 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 39, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!292 = metadata !{null, metadata !1, metadata !2, metadata !293, metadata !4, metadata !46, metadata !6}
!293 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 39, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!294 = metadata !{null, metadata !26, metadata !27, metadata !295, metadata !29, metadata !49, metadata !6}
!295 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &", metadata !"int"}
!296 = metadata !{null, metadata !1, metadata !2, metadata !297, metadata !4, metadata !56, metadata !6}
!297 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<63, false> &"}
!298 = metadata !{null, metadata !14, metadata !15, metadata !299, metadata !17, metadata !97, metadata !6}
!299 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!300 = metadata !{null, metadata !1, metadata !2, metadata !301, metadata !4, metadata !46, metadata !6}
!301 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<55, 31, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!302 = metadata !{null, metadata !1, metadata !2, metadata !303, metadata !4, metadata !46, metadata !6}
!303 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<55, 31, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!304 = metadata !{null, metadata !26, metadata !27, metadata !305, metadata !29, metadata !49, metadata !6}
!305 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &", metadata !"int"}
!306 = metadata !{null, metadata !1, metadata !2, metadata !307, metadata !4, metadata !56, metadata !6}
!307 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, false> &"}
!308 = metadata !{null, metadata !26, metadata !27, metadata !309, metadata !29, metadata !94, metadata !6}
!309 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool"}
!310 = metadata !{null, metadata !14, metadata !15, metadata !311, metadata !17, metadata !97, metadata !6}
!311 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ulong>::is_signed, _Bool>::type"}
!312 = metadata !{null, metadata !26, metadata !27, metadata !313, metadata !29, metadata !49, metadata !6}
!313 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"int"}
!314 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !56, metadata !6}
!315 = metadata !{null, metadata !1, metadata !2, metadata !316, metadata !4, metadata !46, metadata !6}
!316 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<85, 74, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!317 = metadata !{null, metadata !1, metadata !2, metadata !318, metadata !4, metadata !46, metadata !6}
!318 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<85, 74, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!319 = metadata !{null, metadata !26, metadata !27, metadata !320, metadata !29, metadata !49, metadata !6}
!320 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &", metadata !"int"}
!321 = metadata !{null, metadata !1, metadata !2, metadata !322, metadata !4, metadata !56, metadata !6}
!322 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<85, false> &"}
!323 = metadata !{null, metadata !26, metadata !27, metadata !313, metadata !29, metadata !59, metadata !6}
!324 = metadata !{null, metadata !26, metadata !27, metadata !325, metadata !29, metadata !49, metadata !6}
!325 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &", metadata !"const ap_int_base<32, true> &"}
!326 = metadata !{null, metadata !1, metadata !2, metadata !327, metadata !4, metadata !46, metadata !6}
!327 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!328 = metadata !{null, metadata !82, metadata !27, metadata !329, metadata !29, metadata !134, metadata !6}
!329 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int"}
!330 = metadata !{null, metadata !32, metadata !15, metadata !331, metadata !17, metadata !139, metadata !6}
!331 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false>*", metadata !"int", metadata !"int"}
!332 = metadata !{null, metadata !1, metadata !2, metadata !333, metadata !4, metadata !106, metadata !6}
!333 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<10, false> &"}
!334 = metadata !{null, metadata !1, metadata !2, metadata !333, metadata !4, metadata !143, metadata !6}
!335 = metadata !{null, metadata !1, metadata !2, metadata !336, metadata !4, metadata !106, metadata !6}
!336 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!337 = metadata !{null, metadata !1, metadata !2, metadata !336, metadata !4, metadata !46, metadata !6}
!338 = metadata !{null, metadata !32, metadata !15, metadata !339, metadata !17, metadata !139, metadata !6}
!339 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!340 = metadata !{null, metadata !1, metadata !2, metadata !341, metadata !4, metadata !46, metadata !6}
!341 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<11, 1, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!342 = metadata !{null, metadata !1, metadata !2, metadata !343, metadata !4, metadata !46, metadata !6}
!343 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<11, 1, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!344 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !154, metadata !6}
!345 = metadata !{null, metadata !1, metadata !2, metadata !346, metadata !4, metadata !106, metadata !6}
!346 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<16, false> &"}
!347 = metadata !{null, metadata !1, metadata !2, metadata !346, metadata !4, metadata !143, metadata !6}
!348 = metadata !{null, metadata !1, metadata !2, metadata !349, metadata !4, metadata !106, metadata !6}
!349 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!350 = metadata !{null, metadata !1, metadata !2, metadata !349, metadata !4, metadata !46, metadata !6}
!351 = metadata !{null, metadata !32, metadata !15, metadata !352, metadata !17, metadata !139, metadata !6}
!352 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int", metadata !"int"}
!353 = metadata !{null, metadata !32, metadata !15, metadata !354, metadata !17, metadata !139, metadata !6}
!354 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<5, false>*", metadata !"int", metadata !"int"}
!355 = metadata !{null, metadata !82, metadata !27, metadata !356, metadata !29, metadata !134, metadata !6}
!356 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false>*", metadata !"int"}
!357 = metadata !{null, metadata !1, metadata !2, metadata !358, metadata !4, metadata !106, metadata !6}
!358 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<16, false> &"}
!359 = metadata !{null, metadata !1, metadata !2, metadata !360, metadata !4, metadata !106, metadata !6}
!360 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!361 = metadata !{null, metadata !14, metadata !15, metadata !362, metadata !17, metadata !97, metadata !6}
!362 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uint>::is_signed, _Bool>::type"}
!363 = metadata !{null, metadata !1, metadata !2, metadata !364, metadata !4, metadata !46, metadata !6}
!364 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<53, 42, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!365 = metadata !{null, metadata !1, metadata !2, metadata !366, metadata !4, metadata !46, metadata !6}
!366 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<53, 42, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!367 = metadata !{null, metadata !26, metadata !27, metadata !368, metadata !29, metadata !49, metadata !6}
!368 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &", metadata !"int"}
!369 = metadata !{null, metadata !1, metadata !2, metadata !370, metadata !4, metadata !56, metadata !6}
!370 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<53, false> &"}
!371 = metadata !{null, metadata !14, metadata !15, metadata !372, metadata !17, metadata !97, metadata !6}
!372 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<ushort>::is_signed, _Bool>::type"}
!373 = metadata !{null, metadata !1, metadata !2, metadata !374, metadata !4, metadata !46, metadata !6}
!374 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<37, 26, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!375 = metadata !{null, metadata !1, metadata !2, metadata !376, metadata !4, metadata !46, metadata !6}
!376 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<37, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!377 = metadata !{null, metadata !26, metadata !27, metadata !378, metadata !29, metadata !49, metadata !6}
!378 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &", metadata !"int"}
!379 = metadata !{null, metadata !1, metadata !2, metadata !380, metadata !4, metadata !56, metadata !6}
!380 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<37, false> &"}
!381 = metadata !{null, metadata !14, metadata !15, metadata !382, metadata !17, metadata !97, metadata !6}
!382 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<!std::numeric_limits<uchar>::is_signed, _Bool>::type"}
!383 = metadata !{null, metadata !1, metadata !2, metadata !384, metadata !4, metadata !46, metadata !6}
!384 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<29, 18, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!385 = metadata !{null, metadata !1, metadata !2, metadata !386, metadata !4, metadata !46, metadata !6}
!386 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<29, 18, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!387 = metadata !{null, metadata !26, metadata !27, metadata !388, metadata !29, metadata !49, metadata !6}
!388 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!389 = metadata !{null, metadata !1, metadata !2, metadata !390, metadata !4, metadata !56, metadata !6}
!390 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!391 = metadata !{null, metadata !14, metadata !15, metadata !392, metadata !17, metadata !97, metadata !6}
!392 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!393 = metadata !{null, metadata !1, metadata !2, metadata !394, metadata !4, metadata !46, metadata !6}
!394 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<63, 63, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!395 = metadata !{null, metadata !1, metadata !2, metadata !396, metadata !4, metadata !46, metadata !6}
!396 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 64, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!397 = metadata !{null, metadata !1, metadata !2, metadata !398, metadata !4, metadata !46, metadata !6}
!398 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 64, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!399 = metadata !{null, metadata !1, metadata !2, metadata !400, metadata !4, metadata !46, metadata !6}
!400 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<63, 63, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!401 = metadata !{null, metadata !82, metadata !27, metadata !402, metadata !29, metadata !134, metadata !6}
!402 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int"}
!403 = metadata !{null, metadata !26, metadata !27, metadata !404, metadata !29, metadata !59, metadata !6}
!404 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!405 = metadata !{null, metadata !1, metadata !2, metadata !406, metadata !4, metadata !46, metadata !6}
!406 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 64, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!407 = metadata !{null, metadata !14, metadata !15, metadata !408, metadata !17, metadata !97, metadata !6}
!408 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!409 = metadata !{null, metadata !1, metadata !2, metadata !410, metadata !4, metadata !46, metadata !6}
!410 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<31, 31, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!411 = metadata !{null, metadata !1, metadata !2, metadata !412, metadata !4, metadata !46, metadata !6}
!412 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!413 = metadata !{null, metadata !1, metadata !2, metadata !414, metadata !4, metadata !46, metadata !6}
!414 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<31, 31, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!415 = metadata !{null, metadata !82, metadata !27, metadata !416, metadata !29, metadata !134, metadata !6}
!416 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!417 = metadata !{null, metadata !26, metadata !27, metadata !418, metadata !29, metadata !59, metadata !6}
!418 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!419 = metadata !{null, metadata !1, metadata !2, metadata !420, metadata !4, metadata !46, metadata !6}
!420 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!421 = metadata !{null, metadata !14, metadata !15, metadata !422, metadata !17, metadata !97, metadata !6}
!422 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!423 = metadata !{null, metadata !1, metadata !2, metadata !424, metadata !4, metadata !46, metadata !6}
!424 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<15, 15, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!425 = metadata !{null, metadata !1, metadata !2, metadata !426, metadata !4, metadata !46, metadata !6}
!426 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!427 = metadata !{null, metadata !1, metadata !2, metadata !428, metadata !4, metadata !46, metadata !6}
!428 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<16, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!429 = metadata !{null, metadata !1, metadata !2, metadata !430, metadata !4, metadata !46, metadata !6}
!430 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<15, 15, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!431 = metadata !{null, metadata !82, metadata !27, metadata !432, metadata !29, metadata !134, metadata !6}
!432 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true>*", metadata !"int"}
!433 = metadata !{null, metadata !26, metadata !27, metadata !434, metadata !29, metadata !59, metadata !6}
!434 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!435 = metadata !{null, metadata !1, metadata !2, metadata !436, metadata !4, metadata !46, metadata !6}
!436 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 16, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!437 = metadata !{null, metadata !14, metadata !15, metadata !438, metadata !17, metadata !97, metadata !6}
!438 = metadata !{metadata !"kernel_arg_type", metadata !"double", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!439 = metadata !{null, metadata !1, metadata !2, metadata !440, metadata !4, metadata !46, metadata !6}
!440 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<7, 7, false, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!441 = metadata !{null, metadata !1, metadata !2, metadata !442, metadata !4, metadata !46, metadata !6}
!442 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 8, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!443 = metadata !{null, metadata !1, metadata !2, metadata !444, metadata !4, metadata !46, metadata !6}
!444 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<8, 8, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!445 = metadata !{null, metadata !1, metadata !2, metadata !446, metadata !4, metadata !46, metadata !6}
!446 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<7, 7, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!447 = metadata !{null, metadata !82, metadata !27, metadata !448, metadata !29, metadata !134, metadata !6}
!448 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, true>*", metadata !"int"}
!449 = metadata !{null, metadata !26, metadata !27, metadata !450, metadata !29, metadata !59, metadata !6}
!450 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &", metadata !"int"}
!451 = metadata !{null, metadata !1, metadata !2, metadata !452, metadata !4, metadata !46, metadata !6}
!452 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<1, 8, false, (enum ap_q_mode)5, (enum ap_o_mode)0, 0> &"}
!453 = metadata !{null, metadata !14, metadata !15, metadata !454, metadata !17, metadata !97, metadata !6}
!454 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!455 = metadata !{null, metadata !14, metadata !15, metadata !456, metadata !17, metadata !97, metadata !6}
!456 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!457 = metadata !{null, metadata !14, metadata !15, metadata !458, metadata !17, metadata !97, metadata !6}
!458 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!459 = metadata !{null, metadata !14, metadata !15, metadata !460, metadata !17, metadata !97, metadata !6}
!460 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!461 = metadata !{null, metadata !14, metadata !15, metadata !462, metadata !17, metadata !97, metadata !6}
!462 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<long>::is_signed, _Bool>::type"}
!463 = metadata !{null, metadata !14, metadata !15, metadata !464, metadata !17, metadata !97, metadata !6}
!464 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<int>::is_signed, _Bool>::type"}
!465 = metadata !{null, metadata !14, metadata !15, metadata !466, metadata !17, metadata !97, metadata !6}
!466 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<short>::is_signed, _Bool>::type"}
!467 = metadata !{null, metadata !14, metadata !15, metadata !468, metadata !17, metadata !97, metadata !6}
!468 = metadata !{metadata !"kernel_arg_type", metadata !"half", metadata !"_Bool", metadata !"typename enable_if<std::numeric_limits<signed char>::is_signed, _Bool>::type"}
!469 = metadata !{metadata !470, [16 x i32]* @pow_num}
!470 = metadata !{metadata !471}
!471 = metadata !{i32 0, i32 31, metadata !472}
!472 = metadata !{metadata !473}
!473 = metadata !{metadata !"pow_num", metadata !474, metadata !"int", i32 0, i32 31}
!474 = metadata !{metadata !475}
!475 = metadata !{i32 0, i32 15, i32 1}
!476 = metadata !{metadata !477, null}
!477 = metadata !{metadata !478}
!478 = metadata !{i32 0, i32 63, metadata !479}
!479 = metadata !{metadata !480}
!480 = metadata !{metadata !"pool_dot", metadata !481, metadata !"double", i32 0, i32 63}
!481 = metadata !{metadata !482, metadata !475, metadata !483, metadata !483}
!482 = metadata !{i32 0, i32 2, i32 1}
!483 = metadata !{i32 0, i32 13, i32 1}
!484 = metadata !{metadata !485, [4 x i32]* @llvm_global_ctors_0}
!485 = metadata !{metadata !486}
!486 = metadata !{i32 0, i32 31, metadata !487}
!487 = metadata !{metadata !488}
!488 = metadata !{metadata !"llvm.global_ctors.0", metadata !489, metadata !"", i32 0, i32 31}
!489 = metadata !{metadata !490}
!490 = metadata !{i32 0, i32 3, i32 1}
!491 = metadata !{metadata !492, null}
!492 = metadata !{metadata !493}
!493 = metadata !{i32 0, i32 63, metadata !494}
!494 = metadata !{metadata !495}
!495 = metadata !{metadata !"in", metadata !496, metadata !"double", i32 0, i32 63}
!496 = metadata !{metadata !497, metadata !497, metadata !498}
!497 = metadata !{i32 0, i32 31, i32 1}
!498 = metadata !{i32 0, i32 9999, i32 1}
!499 = metadata !{metadata !500, null}
!500 = metadata !{metadata !501}
!501 = metadata !{i32 0, i32 63, metadata !502}
!502 = metadata !{metadata !503}
!503 = metadata !{metadata !"fc_weight", metadata !504, metadata !"double", i32 0, i32 63}
!504 = metadata !{metadata !490, metadata !505, metadata !506}
!505 = metadata !{i32 0, i32 399, i32 1}
!506 = metadata !{i32 0, i32 119, i32 1}
!507 = metadata !{metadata !508, [400 x double]* @fc_in}
!508 = metadata !{metadata !509}
!509 = metadata !{i32 0, i32 63, metadata !510}
!510 = metadata !{metadata !511}
!511 = metadata !{metadata !"fc_in", metadata !512, metadata !"double", i32 0, i32 63}
!512 = metadata !{metadata !505}
!513 = metadata !{metadata !514, [3 x [120 x double]]* @fc_dot}
!514 = metadata !{metadata !515}
!515 = metadata !{i32 0, i32 63, metadata !516}
!516 = metadata !{metadata !517}
!517 = metadata !{metadata !"fc_dot", metadata !518, metadata !"double", i32 0, i32 63}
!518 = metadata !{metadata !482, metadata !506}
!519 = metadata !{metadata !520, null}
!520 = metadata !{metadata !521}
!521 = metadata !{i32 0, i32 63, metadata !522}
!522 = metadata !{metadata !523}
!523 = metadata !{metadata !"fc_bias", metadata !524, metadata !"double", i32 0, i32 63}
!524 = metadata !{metadata !490, metadata !506}
!525 = metadata !{metadata !526, double* @f_in}
!526 = metadata !{metadata !527}
!527 = metadata !{i32 0, i32 63, metadata !528}
!528 = metadata !{metadata !529}
!529 = metadata !{metadata !"f_in", metadata !530, metadata !"double", i32 0, i32 63}
!530 = metadata !{metadata !531}
!531 = metadata !{i32 0, i32 0, i32 1}
!532 = metadata !{metadata !533, null}
!533 = metadata !{metadata !534}
!534 = metadata !{i32 0, i32 63, metadata !535}
!535 = metadata !{metadata !536}
!536 = metadata !{metadata !"conv_weight", metadata !537, metadata !"double", i32 0, i32 63}
!537 = metadata !{metadata !482, metadata !475, metadata !538, metadata !539, metadata !539}
!538 = metadata !{i32 0, i32 5, i32 1}
!539 = metadata !{i32 0, i32 4, i32 1}
!540 = metadata !{metadata !541, null}
!541 = metadata !{metadata !542}
!542 = metadata !{i32 0, i32 63, metadata !543}
!543 = metadata !{metadata !544}
!544 = metadata !{metadata !"conv_dot", metadata !545, metadata !"double", i32 0, i32 63}
!545 = metadata !{metadata !482, metadata !475, metadata !546, metadata !546}
!546 = metadata !{i32 0, i32 27, i32 1}
!547 = metadata !{metadata !548, null}
!548 = metadata !{metadata !549}
!549 = metadata !{i32 0, i32 63, metadata !550}
!550 = metadata !{metadata !551}
!551 = metadata !{metadata !"conv_bias", metadata !552, metadata !"double", i32 0, i32 63}
!552 = metadata !{metadata !482, metadata !475}
!553 = metadata !{metadata !477, [9408 x double]* @pool_dot}
!554 = metadata !{metadata !492, [10240000 x double]* @in_r}
!555 = metadata !{metadata !500, [192000 x double]* @fc_weight}
!556 = metadata !{metadata !520, [480 x double]* @fc_bias}
!557 = metadata !{metadata !533, [7200 x double]* @conv_weight}
!558 = metadata !{metadata !541, [37632 x double]* @conv_dot}
!559 = metadata !{metadata !548, [48 x double]* @conv_bias}
!560 = metadata !{metadata !561}
!561 = metadata !{i32 0, i32 31, metadata !562}
!562 = metadata !{metadata !563}
!563 = metadata !{metadata !"index", metadata !564, metadata !"int", i32 0, i32 31}
!564 = metadata !{metadata !565}
!565 = metadata !{i32 0, i32 0, i32 0}
!566 = metadata !{metadata !567}
!567 = metadata !{i32 0, i32 31, metadata !568}
!568 = metadata !{metadata !569}
!569 = metadata !{metadata !"return", metadata !570, metadata !"int", i32 0, i32 31}
!570 = metadata !{metadata !571}
!571 = metadata !{i32 0, i32 1, i32 0}
