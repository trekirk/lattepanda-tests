The .img file in this archive should be bootable on any EFI-based computer.
It launches the rEFInd boot manager, which in turn should be able to locate
boot loaders on the computer's EFI System Partition (ESP) or on other
partitions.

To use this disk image, you must copy it to a USB flash drive or similar
medium. Under Linux or Mac OS X, you can do this with dd as root, as in:

dd if=refind-flashdrive-{version}.img of=/dev/sdx

You must change {version} to the version number and set the target disk
(specified by "of=") correctly. BE VERY CAREFUL! If you set the output disk
incorrectly, you can seriously damage the data on your hard disk! (If this
happens, and if it's a GPT disk, you may be able to recover most of your
data by using GPT fdisk. See http://www.rodsbooks.com/gdisk/repairing.html
for details.)

Be aware that the disk image file uses GPT, and the GPT data structures are
sized for the disk image, which is very small by today's standards. Thus,
the backup GPT data structures will be placed early on the disk. Most OSes
cope well with this, but you may want to correct the problem if you want to
use the disk for other purposes in the future. You can do this with the "e"
option on the experts' menu of gdisk (http://www.rodsbooks.com/gdisk/). GNU
parted can also correct this problem; it will prompt you when you try to
view the partitions on the disk.

You can also install rEFInd from this disk image; however, it doesn't
contain an EFI/refind directory like the other installation files available
from the rEFInd Sourceforge page. Instead, you must copy the contents of
EFI/BOOT, and the rEFInd binary is called EFI/boot/bootx64.efi or
EFI/boot/bootia32.efi, depending on your architecture.
