#!/bin/sh
hostname=`hostname`
export PWD=`i3-msg -t get_tree | sed 's/{/{\n/g' | grep -A 5 "\"focused\":true" | sed 's/,/\n/g' | grep $hostname | sed 's/\"//g' | awk 'BEGIN {FS=":"};{print $3}' | sed 's/\~/\/root/g' | head -1` 

cd "$PWD"
exec urxvt &
disown
#exec urxvt -e /bin/sh -c 'cd "$PWD" && /bin/bash'
