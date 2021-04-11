#!/bin/bash

echo Connect to adb
adb devices

echo Starting WhatsApp Business
adb shell am start -n com.whatsapp.w4b/com.whatsapp.Main

echo Waiting to load Whatsapp
sleep 3

echo Opening Menu
adb shell input tap 300 30
sleep 2

echo Opening WhatsApp Web tab
adb shell input tap 160 245
sleep 2

echo Adding new web session
adb shell input tap 160 310
sleep 1

echo Taping to Ok at instruction
adb shell input tap 160 535

echo Waiting to scan code
sleep 8

echo Close WhatsApp Business
adb shell am force-stop com.whatsapp.w4b

echo Done!