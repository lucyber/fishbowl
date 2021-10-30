#!/bin/bash
interval=5
number=$(cat announcements/slides.md | grep -o "\-\-\-" | wc -l)
while true;
do
	$(sleep $(( $interval*$number )) && pkill patat) & patat announcements/slides.md
done
