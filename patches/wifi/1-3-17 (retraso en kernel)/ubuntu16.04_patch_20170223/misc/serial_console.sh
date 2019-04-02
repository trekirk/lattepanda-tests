#!/bin/bash
# The serial script is used to config ttyS5 as serial console.
# To install, run sudo ./serial.sh or sudo ./serial.sh install
# To uninstall, run sudo ./serial.sh remove

if [ $# -le 1 ];then
	if [ $# -eq 0 ] || [ "$1" == "install" ];then
	{
		mypath=/etc/init/ttyS5.conf
		if [ ! -f "$mypath" ];then
        		sudo touch $mypath
		else
        		sudo rm $mypath
        		sudo touch $mypath
		fi
		
		sudo chmod 644 $mypath
		echo "start on stopped rc RUNLEVEL=[12345]" >> $mypath
		echo "stop on runlevel [!12345]" >> $mypath
		echo "respawn" >> $mypath
		echo "exec /sbin/getty -L 115200 ttyS5 vt102" >> $mypath

		mypath=/etc/event.d
		if [ ! -d $mypath ];then
        		sudo mkdir $mypath
		fi
		
		sudo chmod -R 644 $mypath
		if [ ! -f $mypath/ttyS5 ];then
        		touch $mypath/ttyS5
		else
       		 	touch $mypath/ttyS5
		fi
		
		sudo chmod 644 $mypath/ttyS5
		for i in $(seq 5)
		do
        		echo "start on runlevel $i" >> $mypath/ttyS5
		done
		echo "stop on runlevel 0" >> $mypath/ttyS5
		echo "stop on runlevel 6" >> $mypath/ttyS5
		echo "respawn" >> $mypath/ttyS5
		echo "exec /sbin/getty 115200 ttyS5" >> $mypath/ttyS5

		mypath=/etc/inittab
		if [ ! -f $mypath ];then
        		touch $mypath
		else
        		sudo rm $mypath
        		touch $mypath
		fi
		
		sudo chmod 644 $mypath
		echo "T0:123:respawn:/sbin/getty -L ttyS5 115200 vt100" >> $mypath
		/sbin/telinit q

		mypath=/etc/sysctl.conf
		grep -q "kernel.printk" $mypath
		if [ $? -eq 0 ];then
		{
        		sed -i /kernel.printk/d $mypath
        		sed -i '9a kernel.printk = 7 4 1 7' $mypath
		}
		fi
	}
	elif [ "$1" == "remove" ];then
	{
		mypath=/etc/init/ttyS5.conf
                if [ -f $mypath ];then
                        sudo rm $mypath
		fi
		
		mypath=/etc/event.d
		if [ -d $mypath ];then
			if [ -f $mypath/ttyS5 ];then
				sudo rm $mypath/ttyS5
			fi
		fi
		
		mypath=/etc/inittab
		if [ -f $mypath ];then
			sudo rm $mypath
		fi
		
		mypath=/etc/sysctl.conf
                sed -i /kernel.printk/d $mypath
                sed -i '9a kernel.printk = 4 4 1 7' $mypath
	}	
	fi
else
	echo "The number of parameters is invalid! The parameter is just "install" "remove" or none parameter(equal install)"
fi
