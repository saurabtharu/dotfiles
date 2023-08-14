#!/bin/bash
path=~/recordings/ffmpeg

filename=`date | awk 'NR==1{printf "%s-%s-%s-%s.mp4",$1,$2,$3,$4}' | sed 's/:/-/g'`
number=`ls $path | wc -l`
# ffmpeg -v 1 -r 30 -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default $path/$number-$filename.mp4 
ffmpeg -v 1 -r 30 -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default -vcodec libx264 -preset ultrafast -crf 18 -threads 0 $path/$number-$filename
