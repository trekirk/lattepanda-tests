###########################################
#!/bin/sh
#Fix TV state when HDMI link is lost.
#By Mario Limonciello <email address hidden>
export XAUTHORITY=/home/user/.Xauthority

OUTPUT="HDMI2"
BAD_MODE="1280x720"
GOOD_MODE="1920x1080"

for MODE in $BAD_MODE $GOOD_MODE; do
 sleep 2
 DISPLAY=:0 xrandr --output $OUTPUT --mode $MODE
 sleep 2
done

#################################