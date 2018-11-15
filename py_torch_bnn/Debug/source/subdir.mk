################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../func.cpp \
../init.cpp \
../mnist_nn.cpp 

OBJS += \
./source/func.o \
./source/init.o \
./source/mnist_nn.o 

CPP_DEPS += \
./source/func.d \
./source/init.d \
./source/mnist_nn.d 


# Each subdirectory must supply rules for building sources it contributes
source/func.o: /home/yagiyugo/vivado/py_torch_bnn/func.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2017.2/include -I/opt/Xilinx/Vivado_HLS/2017.2/include/etc -I/home/yagiyugo/vivado -I/opt/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/init.o: /home/yagiyugo/vivado/py_torch_bnn/init.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2017.2/include -I/opt/Xilinx/Vivado_HLS/2017.2/include/etc -I/home/yagiyugo/vivado -I/opt/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/mnist_nn.o: /home/yagiyugo/vivado/py_torch_bnn/mnist_nn.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/auto_cc/include -I/opt/Xilinx/Vivado_HLS/2017.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2017.2/include -I/opt/Xilinx/Vivado_HLS/2017.2/include/etc -I/home/yagiyugo/vivado -I/opt/Xilinx/Vivado_HLS/2017.2/include/ap_sysc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


