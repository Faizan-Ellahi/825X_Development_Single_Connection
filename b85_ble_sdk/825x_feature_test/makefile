################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include vendor/common/subdir.mk
-include vendor/b85m_feature_test/feature_smp_security/subdir.mk
-include vendor/b85m_feature_test/feature_slave_dle/subdir.mk
-include vendor/b85m_feature_test/feature_phy_test/subdir.mk
-include vendor/b85m_feature_test/feature_phy_extend_adv/subdir.mk
-include vendor/b85m_feature_test/feature_phy_conn/subdir.mk
-include vendor/b85m_feature_test/feature_ota_hid/subdir.mk
-include vendor/b85m_feature_test/feature_ota_big_pdu/subdir.mk
-include vendor/b85m_feature_test/feature_misc/subdir.mk
-include vendor/b85m_feature_test/feature_master_dle/subdir.mk
-include vendor/b85m_feature_test/feature_ll_state/subdir.mk
-include vendor/b85m_feature_test/feature_gatt_security/subdir.mk
-include vendor/b85m_feature_test/feature_extend_adv/subdir.mk
-include vendor/b85m_feature_test/feature_backup/subdir.mk
-include vendor/b85m_feature_test/feature_adv_power/subdir.mk
-include vendor/b85m_feature_test/subdir.mk
-include drivers/8258/subdir.mk
-include drivers/8258/flash/subdir.mk
-include common/subdir.mk
-include boot/8278/subdir.mk
-include boot/8271/subdir.mk
-include boot/8258/subdir.mk
-include boot/8253/subdir.mk
-include boot/8251/subdir.mk
-include application/usbstd/subdir.mk
-include application/print/subdir.mk
-include application/keyboard/subdir.mk
-include application/audio/subdir.mk
-include application/app/subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LST += \
825x_feature_test.lst \

FLASH_IMAGE += \

SIZEDUMMY += \
sizedummy \


# All Target
all: b85m_ble_single_connection_sdk.elf secondary-outputs

# Tool invocations
b85m_ble_single_connection_sdk.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: TC32 C Linker'
	tc32-elf-ld --gc-sections -L"E:\M_Hassaan_Khalid\Projects\825X_Development_Single_Connection\b85_ble_sdk\proj_lib" -T ../boot.link -o"b85m_ble_single_connection_sdk.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

825x_feature_test.lst: b85m_ble_single_connection_sdk.elf
	@echo 'Invoking: TC32 Create Extended Listing'
	tc32-elf-objdump -x -D -l -S b85m_ble_single_connection_sdk.elf  >"825x_feature_test.lst"
	@echo 'Finished building: $@'
	@echo ' '

: b85m_ble_single_connection_sdk.elf
	@echo 'Create Flash image (binary format)'
	tc32-elf-objcopy b85m_ble_single_connection_sdk.elf
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: b85m_ble_single_connection_sdk.elf
	@echo 'Invoking: Print Size'
	tc32-elf-size -t b85m_ble_single_connection_sdk.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(LST)$(SIZEDUMMY) b85m_ble_single_connection_sdk.elf
	-@echo ' '

post-build:
	-"E:\M_Hassaan_Khalid\Projects\825X_Development_Single_Connection\b85_ble_sdk/tl_check_fw.sh"   825x_feature_test   b85m_ble_single_connection_sdk
	-@echo ' '

secondary-outputs: $(LST) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets
