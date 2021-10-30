#!/bin/bash
interval=5
number=$(cat {{ DISPLAY_DIRECTORY }}/announcements/slides.md | grep -o "\-\-\-" | wc -l)
while true;
do
	$(sleep $(( $interval*$number )) && pkill patat) & patat {{ DISPLAY_DIRECTORY }}/announcements/slides.md
done
