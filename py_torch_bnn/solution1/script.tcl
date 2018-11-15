############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project py_torch_bnn
add_files py_torch_bnn/define.h
add_files py_torch_bnn/extern.h
add_files py_torch_bnn/func.cpp
add_files py_torch_bnn/init.cpp
add_files py_torch_bnn/mnist_nn.cpp
add_files -tb py_torch_bnn/mnist_nn_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./py_torch_bnn/solution1/directives.tcl"
csim_design -clean -O -compiler gcc
csynth_design
cosim_design
export_design -format ip_catalog
