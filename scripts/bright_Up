#!/bin/bash
#tee /sys/class/backlight/acpi_video0/brightness <<< $1
brightness=$(cat /sys/class/backlight/acpi_video0/brightness) 



if (($brightness >= 0)); then
  let brightness=$brightness+1
fi
if (($brightness >8)); then
	let brightness=8
fi
  echo "echo $brightness > /sys/class/backlight/acpi_video0/brightness" | sudo bash
