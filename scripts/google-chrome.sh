#!/bin/bash

chromium \
	--disable \
	--disable-translate \
	--disable-infobars \
	--disable-suggestions-service \
	--start-maximized \
	--kiosk https://encrypted.google.com/ 2>/dev/null & 
disown

