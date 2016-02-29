#!/bin/bash 
adb shell screencap -p /sdcard/ScreenShot1.png
adb pull -p -a /sdcard/ScreenShot1.png
mv ScreenShot1.png ~/Desktop
adb shell rm /sdcard/ScreenShot1.png
open /Users/ammarmohamed/Desktop/Screenshot1.png
