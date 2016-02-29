#!/bin/bash 
name=$1

if [ $# -gt 0 ]; then
  name=$1.png
else
  name="AndroidScreenshot_$(date +"%Y%m%d_%I%M%S")".png
  echo "No name specified. Using $name."
fi

adb shell screencap -p /sdcard/${name}
adb pull /sdcard/${name}
mv ${name} ~/Desktop
adb shell rm /sdcard/${name}
open ~/Desktop/${name}





# echo -e "Name of file: \c"
# read name 

# adb shell screencap -p /sdcard/${name}.png
# adb pull /sdcard/${name}.png
# mv ${name}.png ~/Desktop
# adb shell rm /sdcard/${name}.png
# open ~/Desktop/${name}.png


 # echo -e "Please type your name: \c"
 # read name 
 # echo "Your name is: $name"
 # echo ""
