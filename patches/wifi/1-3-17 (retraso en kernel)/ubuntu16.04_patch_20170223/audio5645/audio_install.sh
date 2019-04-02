#! /bin/bash
sudo chmod 777 audio_config_rt5645.sh
sleep 1
sudo /bin/bash audio_config_rt5645.sh
sleep 1
sudo cp fw_sst_22a8.bin /lib/firmware/intel/
sleep 1
#sudo reboot


