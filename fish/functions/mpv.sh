#!/bin/bash
## mpv wrapper to make it run in the background and disowned by the terminal window
str1='bestvideo[height<='
str2=']+bestaudio/best[height<='
str3=']'
str4='[fps<=?30][vcodec!=?vp9][protocol!=http_dash_segments]+bestaudio/best'
mpv --really-quiet --ytdl-format=$str1$1$str2$1$str3$str4  "$2" "${@:3}" &
disown
