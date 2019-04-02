#!/bin/sh

export DISPLAY=:0

getuser ()
{
     export DISPLAY=`echo $DISPLAY | cut -c -2`
     user=`who | grep " $DISPLAY" | awk '{print $1}' | tail -n1`
     export XAUTHORITY=/home/$user/.Xauthority
     eval $1=$user
}

getuser "$user"

xset dpms force off
#echo "Monitor is Off" $(xset -q | grep -c "Monitor is Off") > /dev/ttyS5


