#!/bin/bash

while true;
do
	cat {{ DISPLAY_DIRECTORY }}/news/newsfile | ccze -o noscroll -A | pv -qlL1
done
