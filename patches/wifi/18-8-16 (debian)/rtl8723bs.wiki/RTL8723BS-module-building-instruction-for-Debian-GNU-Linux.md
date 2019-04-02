# RTL8723BS module building instruction for Debian GNU Linux

Debian Jessie (8.0) is running kernel 3.16 which is not supported by the latest version of module.  As a result, you may either switch to latest version of kernel, or make an older version of module.  Since there is always support from latest version of kernel and module, while less or no support from older version, it is recommended to use the first method, switch to latest version of kernel.  This instruction will also provide information for this method.

## Switch to latest version of kernel

Assuming existing environment is Debian Jessie (amd64) running kernel 3.16.

1. Add backports support

  `# echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list`

[NOTE: new debian version is [released](https://www.debian.org/News/2017/20170617). Does it serve?]

2. Install backports kernel

  `# apt-get update`

  `# apt-get -t jessie-backports install linux-image-amd64`

3. Reboot the system to run new kernel

  `# reboot`

4. Verify kernel version after reboot

  `# uname -r`

  `4.1.0-0.bpo.2-amd64`

## Make and install the module

1. Install build support packages, note that "4.1.0-0.bpo.2" below should be replaced by the result of running "uname -r"

  `# apt-get install unzip build-essential linux-headers-4.1.0-0.bpo.2-all-amd64`

2. Download the module

  `# cd /usr/local/src`

  `# wget https://github.com/hadess/rtl8723bs/archive/master.zip`

3. Make the module

  `# unzip master`

  `# cd rtl8723bs-xxx`

  `# make`

4. Install the module

  `# sudo make install`

  `# sudo depmod -a`

  `# sudo modprobe r8723bs`
