#! /bin/bash -e

TEST_DATE=`date +%H:%M" on "%d"-"%m"-"%Y`

echo $TEST_DATE
echo "Install new kernel image and graphics driver start!"
echo

echo "Install linux-image-4.4.0-*.ts_amd64.deb"
sudo dpkg -i kernel_4.4/linux-image-4.4.0-2017022104_3TS.001_amd64.deb
#sudo dpkg -i kernel_4.4/linux-headers-4.4.0-*.deb
if [ $? -eq 0 ];then
    echo "linux-image-4.4.0 installed OK!"
else
    echo "linux-image-4.4.0 installed failed!"
    exit -1;
fi
echo

echo "Install RTL8723BS BT firmware"
cd wifi_bt/bin
sudo /bin/bash start_bt.sh
if [ $? -eq 0 ];then
echo "RTL8723BS BT firmware installed OK!"
else
    echo "RTL8723BS BT firmware installed failed!"
    exit -1;
fi
cd ../..
echo

cd misc
echo "Add audio and bt config script to /etc/rc.local!"
sudo cp rc.local /etc/
echo

cd ..
echo "Done!"
echo

echo "Config RT5645 audio codec!"
cd audio5645
sudo chmod 777 audio_install.sh
sudo /bin/bash audio_install.sh
cd ..
echo "Done!"
echo

echo
echo "All packages are installed successfully!"
echo $TEST_DATE
echo 

#mv /boot/grub/grub.cfg /boot/grub/grub.cfg.orign
#cp ./grub.cfg /boot/grub/grub.cfg

echo "Please modify /boot/grub/grub.cfg file!!!!!!  later,reboot the system!"
#echo "You can press CTRL+C to stop reboot!"
#sleep 5
#sudo reboot
