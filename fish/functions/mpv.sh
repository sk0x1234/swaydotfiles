#!/bin/bash
## mpv wrapper to make it run in the background and disowned by the terminal window
str1='bestvideo[height<='
str2=']+bestaudio/best[height<='
str3=']'
mpv --really-quiet --ytdl-format=$str1$1$str2$1$str3  "$2" &
disown
