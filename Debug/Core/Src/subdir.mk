################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/asserts.c \
../Core/Src/backdoor.c \
../Core/Src/boot.c \
../Core/Src/can.c \
../Core/Src/com.c \
../Core/Src/cop.c \
../Core/Src/cpu.c \
../Core/Src/cpu_comp.c \
../Core/Src/file.c \
../Core/Src/flash.c \
../Core/Src/hooks.c \
../Core/Src/led.c \
../Core/Src/main.c \
../Core/Src/mb.c \
../Core/Src/mbrtu.c \
../Core/Src/net.c \
../Core/Src/nvm.c \
../Core/Src/rs232.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c \
../Core/Src/timer.c \
../Core/Src/usb.c \
../Core/Src/xcp.c 

OBJS += \
./Core/Src/asserts.o \
./Core/Src/backdoor.o \
./Core/Src/boot.o \
./Core/Src/can.o \
./Core/Src/com.o \
./Core/Src/cop.o \
./Core/Src/cpu.o \
./Core/Src/cpu_comp.o \
./Core/Src/file.o \
./Core/Src/flash.o \
./Core/Src/hooks.o \
./Core/Src/led.o \
./Core/Src/main.o \
./Core/Src/mb.o \
./Core/Src/mbrtu.o \
./Core/Src/net.o \
./Core/Src/nvm.o \
./Core/Src/rs232.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o \
./Core/Src/timer.o \
./Core/Src/usb.o \
./Core/Src/xcp.o 

C_DEPS += \
./Core/Src/asserts.d \
./Core/Src/backdoor.d \
./Core/Src/boot.d \
./Core/Src/can.d \
./Core/Src/com.d \
./Core/Src/cop.d \
./Core/Src/cpu.d \
./Core/Src/cpu_comp.d \
./Core/Src/file.d \
./Core/Src/flash.d \
./Core/Src/hooks.d \
./Core/Src/led.d \
./Core/Src/main.d \
./Core/Src/mb.d \
./Core/Src/mbrtu.d \
./Core/Src/net.d \
./Core/Src/nvm.d \
./Core/Src/rs232.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d \
./Core/Src/timer.d \
./Core/Src/usb.d \
./Core/Src/xcp.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F405xx -DUSE_FULL_LL_DRIVER -c -I"C:/Users/david/Documents/02Formula/Cat17/bootloader/bootloader/Bootloader" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/asserts.d ./Core/Src/asserts.o ./Core/Src/asserts.su ./Core/Src/backdoor.d ./Core/Src/backdoor.o ./Core/Src/backdoor.su ./Core/Src/boot.d ./Core/Src/boot.o ./Core/Src/boot.su ./Core/Src/can.d ./Core/Src/can.o ./Core/Src/can.su ./Core/Src/com.d ./Core/Src/com.o ./Core/Src/com.su ./Core/Src/cop.d ./Core/Src/cop.o ./Core/Src/cop.su ./Core/Src/cpu.d ./Core/Src/cpu.o ./Core/Src/cpu.su ./Core/Src/cpu_comp.d ./Core/Src/cpu_comp.o ./Core/Src/cpu_comp.su ./Core/Src/file.d ./Core/Src/file.o ./Core/Src/file.su ./Core/Src/flash.d ./Core/Src/flash.o ./Core/Src/flash.su ./Core/Src/hooks.d ./Core/Src/hooks.o ./Core/Src/hooks.su ./Core/Src/led.d ./Core/Src/led.o ./Core/Src/led.su ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/mb.d ./Core/Src/mb.o ./Core/Src/mb.su ./Core/Src/mbrtu.d ./Core/Src/mbrtu.o ./Core/Src/mbrtu.su ./Core/Src/net.d ./Core/Src/net.o ./Core/Src/net.su ./Core/Src/nvm.d ./Core/Src/nvm.o ./Core/Src/nvm.su ./Core/Src/rs232.d ./Core/Src/rs232.o ./Core/Src/rs232.su ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su ./Core/Src/timer.d ./Core/Src/timer.o ./Core/Src/timer.su ./Core/Src/usb.d ./Core/Src/usb.o ./Core/Src/usb.su ./Core/Src/xcp.d ./Core/Src/xcp.o ./Core/Src/xcp.su

.PHONY: clean-Core-2f-Src

