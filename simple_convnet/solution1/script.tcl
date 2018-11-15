############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project simple_convnet
add_files define.h
add_files simple_convnet/source/extern.h
add_files simple_convnet/source/func.cpp
add_files simple_convnet/source/init.cpp
add_files simple_convnet/source/simple_convnet.cpp
add_files -tb simple_convnet/source/simple_convnet_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./simple_convnet/solution1/directives.tcl"
csim_design -clean -O -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
