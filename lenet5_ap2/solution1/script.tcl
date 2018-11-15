############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lenet5_ap2
add_files lenet5_ap2/source/define.h
add_files lenet5_ap2/source/extern.h
add_files lenet5_ap2/source/func.cpp
add_files lenet5_ap2/source/init.cpp
add_files lenet5_ap2/source/lenet5_ap2.cpp
add_files -tb lenet5_ap2/source/lenet5_ap2_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./lenet5_ap2/solution1/directives.tcl"
csim_design -clean -O -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
