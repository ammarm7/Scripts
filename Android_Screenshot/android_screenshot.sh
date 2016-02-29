#!/bin/bash 
# echo -e "Name: \c"
# read name
adb shell screencap -p /name.png
adb pull -p -a /sdcard/name.png
mv name.png ~/Desktop
adb shell rm /sdcard/name.png
open /Users/ammarmohamed/Desktop/name.png 
