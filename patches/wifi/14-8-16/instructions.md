**UPDATE:**

Thanks to [/u/grotgrot on the lattepanda subreddit](https://www.reddit.com/r/LattePanda/comments/4w2bk1/wifi_under_linux/), WiFi is finally woring under Linux! ![:mrgreen:](https://www.lattepanda.com/forum/images/smilies/icon_mrgreen.gif "Mr. Green")

Below is a set of steps for enabling wireless:

Step 1: Setting SDIO PCI mode in UEFI:

1.  1\. Reboot machine and press the DEL key to enter UEFI Setup.

-   2\. Select the **Chipset** tab and select the **South Bridge** option.

-   3\. Select the **LPSS & SCC Configuration** option.

-   4\. Select **SCC SDIO Support** and select **PCI Mode** form the SSC SDIO Support list.

-   5\. Save Changes and Exit.

Step 2: Obtaining BCM4334 WLAN settings

1.  1\. Verify that /lib/firmware/brcm/brcmfmac43340-sdio.bin exists. If it doesn't, download it from the [linux-firmware project](http://git.kernel.org/cgit/linux/kernel/git/firmware/linux-firmware.git/tree/brcm).

-   2\. As root, run the following command to download the BCM4334 WLAN settings and save it to the right location:

    Code: [Select all](http://www.lattepanda.com/forum/viewtopic.php?f=6&t=58&start=90#)

    ```
    curl -L0 https://raw.githubusercontent.com/LattePandaTeam/LattePanda-Win10-Software/master/Drivers/LattePanda_4G64GB_Drivers/MRD-64bit-Intel-Driver-Release/Drivers/WIFI/bcm943341wlagb.txt -o /lib/firmware/brcm/brcmfmac43340-sdio.txt
    ```

-   3\. Reboot your LattePanda. You should now have working WiFI.

These steps were tested on a 64GB Emmc/4GB RAM Latepanda running Fedora 24, but the same process should work for the 32GB Emmc/2GB RAM version.

P.S.

Bluetooth is still a WIP, I need some more time to firgure out how to get it working.
