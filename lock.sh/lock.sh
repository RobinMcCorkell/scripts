#!/bin/bash

file=/tmp/scrot.$USER.png

scrot $file
convert $file \
	-scale 5% -scale 2000% \
	-modulate 100,20 \
	~/.i3/lock-icon.png -gravity center -composite -matte \
	$file
i3lock -u -i $file
rm $file
