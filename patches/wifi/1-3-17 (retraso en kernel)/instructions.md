**Activating WiFi/Bluetooth drivers under Ubuntu 16.04 LTS**

We are experimenting with a full port of Ubuntu for the LattePanda. We have seen some success getting WiFi working, so hopefully this should give somebody a clue. If I have missed out anything or need to clarify details please let me know and I will do my best.

This was my method using a 4GB x64 LattePanda with Z8350 Processor

**Note:** Installing Ubuntu will wipe Windows from your LattePanda. After wiping it is not straightforward to restore it!!

Download the following to get started:

[Ubuntu 16.04-desktop-amd64 Image](http://releases.ubuntu.com/16.04/)\
[Kernel Patch Kit](https://drive.google.com/open?id=0BzUYTecbiooHZHpxcEhTaTA1b1E)

**1\. Edit BIOS Settings**

Boot the LattePanda with a USB keyboard and mouse.\
Hit esc repeatedly to get in to the BIOS\
Navigate to:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
chipset > south bridge > LPSS & SCC configuration > SCC SDIO support
```

Change SCC SDIO support from ACPI Mode to PCI Mode\
Press F4 to save settings and exit

**2\. Install Ubuntu**

Create a bootable drive with a tool of your choice. We used Universal-USB-Installer-1.9.6.9.

When the grub prompt appears, select Install Ubuntu\
Click through with all default settings for now, you can download updates later.\
(If the LattePanda locks up during the install, stick a fan on the underside and see if that helps)

**3\. After Successful Install**

Dump the ubuntu16.04_patch_20170223.tar somewhere. In this example I stored it on the root of a USB stick that was mounted to the filesystem.

e.g.

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
cd /media/lattepanda/usbstick/
```

Drop in to a shell (**Tip:** ctrl+alt+t opens one in Ubuntu)

Run the following commands:

**Tip:** Hitting the tab key will auto predict filenames to save you typing them all out

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
sudo su
cd /<stick/directory> (in my case this was /media/lattepanda/usbstick/)
unzip tar xf ubuntu16.04_patch.tar.gz
```

When it has unzipped, change to the directory it has created and run the provided install script (make sure you are running as root):

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
cd ubuntu.16.04_patch
bash ./install1210.sh

```

Wait for the process to complete.

**4\. Edit the Grub**

Still running as root, navigate to grub directory

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
cd /boot/grub/
```\
Backup grub.cfg in case of any problems:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
cp grub.cfg grub.cfg.old
```

Now you have a version to revert to if you run in to issues.

Next, change permissions of the grub file so you can read, write and execute

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
chmod 777 /boot/grub/grub.cfg
```

Next, we can edit the grub file. I will use nano for this, but you can use something else if you wish.

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
sudo nano /boot/grub/grub.cfg
```

**Tip:** In Nano you can press ctrl+w and type part of the name to find matching entries

1\. Search for the following section:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
export linux_gfx_mode
menuentry 'Ubuntu' --class ubuntu --class gnu-linux --class gnu --class os $menuentry_id_option 'gnulinux-simple-3a08ec07-2677-499e-9638-aea4af1c9d0d' {
	recordfail
	load_video
	gfxmode $linux_gfx_mode
	insmod gzio
	if [ x$grub_platform = xxen ]; then insmod xzio; insmod lzopio; fi
	insmod part_gpt
	insmod ext2
	if [ x$feature_platform_search_hint = xy ]; then
	  search --no-floppy --fs-uuid --set=root  3a08ec07-2677-499e-9638-aea4af1c9d0d
	else
	  search --no-floppy --fs-uuid --set=root 3a08ec07-2677-499e-9638-aea4af1c9d0d
	fi
	linux	/boot/vmlinuz-4.4.0-21-generic.efi.signed root=UUID=3a08ec07-2677-499e-9638-aea4af1c9d0d ro  quiet splash $vt_handoff
	initrd	/boot/initrd.img-4.4.0-21-generic
}
```

Search for this line within the section:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
vmlinuz-4.4.0-21-generic.efi.signed
```

And change to:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
vmlinuz-4.4.0-2017022104
```

Search for this in the same section:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
initrd.img-4.4.0-21-generic
```

Change to:

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
initrd.img-4.4.0-2017022104
```

(Please note that the UUIDs will vary for your system, just leave them as they are, they do not need to be changed.

Press ctrl X and then Y to save and exit, and then reboot your system

Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&p=4807#)

```
reboot
```

When the system boots again you should now have working WiFi and Bluetooth

**Troubleshooting**

If you should get stuck in a bootloop and need to revert to the grub.cfg.old file, you can boot in to recovery mode, navigate to /boot/grub/ delete or rename grub.cfg and replace with your backup file, which should make everything work properly again.

**Porting Linux**

We are using this version of Ubuntu as our official port. If we could do a roll call of all working hardware from the community that would be useful. So far we have cracked:

- WiFi\
- Bluetooth\
- USB 2\
- USB 3\
- HDMI\
- DSI Display\
- Arduino

Still working on:

- Ethernet\
- SD\
- Audio Out\
- Touch Overlay

Feedback is appreciated, so let me know your results and findings.
