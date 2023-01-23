#!/bin/bash
clear 
echo "Hello, This is Script To Run Audio every 5 Seconds"
echo "=================================================="
echo 
Counter=0
while [ $Counter -lt 2 ]
do
	echo now Playing
	echo "=========="
	play GOT.mp3
	clear
	echo will sleep
	sleep 5
	clear
	let Counter=Counter+1
done

