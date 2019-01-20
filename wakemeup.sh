#!/bin/bash

clear
echo "What time do you wanna wake up?\n"
echo "Enter the hour (24 hour format):"
read wake1
echo "Enter the minute:"
read wake2
echo "Okay, you will be woken up at $wake1:$wake2 AM\n"

while true
do

file=`date`
echo $file | nano /Users/ashwin/Documents/terminal/Shell\ Scripts/file.txt
time=`awk '{print $4;}' /Users/ashwin/Documents/terminal/Shell\ Scripts/file.txt.save`
echo $time | nano /Users/ashwin/Documents/terminal/Shell\ Scripts/time.txt
clear

hour=`awk -F":" '{print $1;}' /Users/ashwin/Documents/terminal/Shell\ Scripts/time.txt.save`
min=`awk -F":" '{print $2;}' /Users/ashwin/Documents/terminal/Shell\ Scripts/time.txt.save`

rm /Users/ashwin/Documents/terminal/Shell\ Scripts/file.txt.save
rm /Users/ashwin/Documents/terminal/Shell\ Scripts/time.txt.save

if [ "$hour" == "$wake1" ] && [ "$min" == "$wake2" ] ;
then  
clear
open "/Users/ashwin/Music/Songs/ARCTIC MONKEYS - DISCOGRAPHY (2005-13) [CHANNEL NEO]/[2013] AM/01 - Do I Wanna Know.mp3"
echo "\n\nIt's $hour:$min bitch, wake the fuck up!\n\n\n"
sleep 5
open /Applications/Utilities/Terminal.app
sleep 300
open /Users/ashwin/Music/Songs/tumblr_mdf8s0D0iy1rfam3no1.mp3

exit
fi

sleep 45

done 
 
