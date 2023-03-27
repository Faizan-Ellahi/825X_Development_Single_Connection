################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../vendor/b85m_feature_test/feature_phy_conn/app.c \
../vendor/b85m_feature_test/feature_phy_conn/main.c 

OBJS += \
./vendor/b85m_feature_test/feature_phy_conn/app.o \
./vendor/b85m_feature_test/feature_phy_conn/main.o 


# Each subdirectory must supply rules for building sources it contributes
vendor/b85m_feature_test/feature_phy_conn/%.o: ../vendor/b85m_feature_test/feature_phy_conn/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"E:\M_Hassaan_Khalid\Projects\825X_Development_Single_Connection\b85_ble_sdk" -I"E:\M_Hassaan_Khalid\Projects\825X_Development_Single_Connection\b85_ble_sdk\drivers\8258" -I"E:\M_Hassaan_Khalid\Projects\825X_Development_Single_Connection\b85_ble_sdk\vendor\common" -D__PROJECT_8258_FEATURE_TEST__=1 -DCHIP_TYPE=CHIP_TYPE_825x -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


