# Install Ubuntu MATE 16.04 on a Lattepanda ([source by Ben Davey](https://medium.com/@bendavey/installing-ubuntu-mate-16-04-on-a-lattepanda-45a589ff887a))

Here's a quick and dirty guide on how to get Ubuntu mate working on a Lattepanda 4/64GB board.

You will need 2 USB flash drives for this to work, and a temporary ethernet network connection or usb Wifi device.

### Prepare flash drive

-   On one flash drive, dd over your ubuntu-mate-16.04-desktop-amd64.iso image
-   On the other flash drive, unpack the [rEFInd Boot manager](http://sourceforge.net/projects/refind/files/0.11.2/refind-flashdrive-0.11.2.zip/download)

### Install Ubuntu Mate

Clear off your mmcblk0 device using the installation tools and get the system installed. Once system is installed (it wont reboot properly), power down, remove the ubuntu mate flash drive, and boot with the rEFInd flash drive.

### Update the kernel

The stock Ubuntu uses kernel 4.4. You're going to want to follow [this guide](https://fossbytes.com/install-upgrade-linux-kernel-ubuntu-mint-ukuu/) on how to get the latest kernel installed. This will also update your GRUB configuration, and will enable you to boot from the eMMC.

```
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install ukuu
sudo ukuu-gtk
```

I installed kernel 4.14.13. I had to do it twice for some reason because ukuu complained about cache files missing.
