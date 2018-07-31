#!/bin/bash
currentuser=`stat -f "%Su" /dev/console`
outputPlist=/Users/$currentuser/Library/LaunchAgents/com.pcclient.launched.pcclientlaunch.plist
mkdir -p /Users/$currentuser/Library/LaunchAgents

echo '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd"><plist version="1.0"><dict><key>Label</key><string>com.pcclient.launched.pcclientlaunch</string><key>ProgramArguments</key><array><string>open</string><string>/Applications/pcclient</string></array><key>RunAtLoad</key><true/></dict></plist>' >> $outputPlist
launchctl load -w $outputPlist