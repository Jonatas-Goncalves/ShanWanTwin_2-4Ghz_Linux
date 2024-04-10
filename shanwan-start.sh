#!/bin/bash
HIDRAW_DEVICE=$(dmesg | grep -oP '(?<=2563:0555\.\d{4}: input,)\w{6}\d')
SCRIPT_PATH=/usr/share/shanwan-gamepad/shanwan-joystick.py

if [ -n "$HIDRAW_DEVICE" ]
	then
		echo "Found joystick on /dev/$HIDRAW_DEVICE"
		sudo python3 $SCRIPT_PATH /dev/$HIDRAW_DEVICE
fi
