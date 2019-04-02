#!/bin/bash
#
# Shell script to install Bluetooth firmware and attach BT part of RTL8723BS
#
mkdir -p /lib/firmware/rtlbt
cp -p rtl8723b_config /lib/firmware/rtlbt/.
cp -p rtl8723b_fw /lib/firmware/rtlbt/.
cp -p rtl8723bs*.bin /lib/firmware/rtlwifi/ 
cp -f hci_uart.ko   /lib/modules/$(uname -r)/kernel/drivers/bluetooth/ 
cp -p rtk8723bu/rtl8723b_fw  /lib/firmware/ 
cp -p rtk8723bu/rtl8723bu_config  /lib/firmware/
cp rtk_hciattach /usr/bin
chmod a+x /usr/bin/rtk_hciattach

