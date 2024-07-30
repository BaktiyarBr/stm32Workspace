################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F1xx_HAL_Driver/BNO080.c 

OBJS += \
./Drivers/STM32F1xx_HAL_Driver/BNO080.o 

C_DEPS += \
./Drivers/STM32F1xx_HAL_Driver/BNO080.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F1xx_HAL_Driver/%.o Drivers/STM32F1xx_HAL_Driver/%.su Drivers/STM32F1xx_HAL_Driver/%.cyclo: ../Drivers/STM32F1xx_HAL_Driver/%.c Drivers/STM32F1xx_HAL_Driver/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-STM32F1xx_HAL_Driver

clean-Drivers-2f-STM32F1xx_HAL_Driver:
	-$(RM) ./Drivers/STM32F1xx_HAL_Driver/BNO080.cyclo ./Drivers/STM32F1xx_HAL_Driver/BNO080.d ./Drivers/STM32F1xx_HAL_Driver/BNO080.o ./Drivers/STM32F1xx_HAL_Driver/BNO080.su

.PHONY: clean-Drivers-2f-STM32F1xx_HAL_Driver

