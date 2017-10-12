#!/bin/bash
echo ""
echo "Here's a list of your AVDs."

cd /home/victor/Android/SDK/tools

touch list.txt

./emulator -list-avds > list.txt

cat -n list.txt

echo ""

read -p 'Which one would you like to open ?  ' avdNumber

selectedAvd=`sed "${avdNumber}q;d" list.txt`

echo "LAUNCHING...$selectedAvd"

./emulator -avd $selectedAvd -netdelay none -netspeed full