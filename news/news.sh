#!/bin/bash

while true;
do
	cat news/newsfile | ccze -o noscroll -A | pv -qlL1
done
