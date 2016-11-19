BOARD_NAME=nuc97xx
BUILD_DIR=$(shell pwd)
CROSS_COMPILE=/usr/local/arm_linux_4.8/bin/arm-linux-
UBOOT_DIR=$(BUILD_DIR)/../u-boot
OUT_DIR=$(BUILD_DIR)/out
UBOOT_OUT_DIR=$(OUT_DIR)/u-boot
all: uboot
uboot:
	mkdir -p $(UBOOT_OUT_DIR)
	make -C $(UBOOT_DIR) CROSS_COMPILE=$(CROSS_COMPILE) KBUILD_OUTPUT=$(UBOOT_OUT_DIR) $(BOARD_NAME)_defconfig
	make -C $(UBOOT_DIR) CROSS_COMPILE=$(CROSS_COMPILE) KBUILD_OUTPUT=$(UBOOT_OUT_DIR)
uboot-clean:
	rm $(UBOOT_OUT_DIR) -rf
