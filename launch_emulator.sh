#!/bin/bash
ANDROID_SDK_PATH=~/Android/SDK

echo ""
echo "Here's a list of your AVDs."

# cd ${ANDROID_SDK_PATH}/tools/
cd ${ANDROID_SDK_PATH}/tools/

touch .list

./emulator -list-avds > .list

cat -n .list

echo ""

read -p 'Which one would you like to open ?  ' avdNumber

selectedAvd=`sed "${avdNumber}q;d" list.txt`

echo "LAUNCHING...$selectedAvd"

./emulator -avd $selectedAvd -netdelay none -netspeed full