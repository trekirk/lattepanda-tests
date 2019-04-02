#! /bin/bash
chmod 777 audio_config_rt5645.sh
sleep 1
sudo ./audio_config_rt5645.sh
sleep 1
sudo cp fw_sst_22a8.bin /lib/firmware/intel/
sleep 1
reboot


