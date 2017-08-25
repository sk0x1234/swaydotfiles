#!/bin/bash

youtube-dl -F $@
echo -e "Enter the number or Format you want to play video+audio : \n"
read s

mpv  --ytdl-format=$s "$@"
