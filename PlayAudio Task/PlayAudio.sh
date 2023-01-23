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


# ==============================
# [2] Search For Contacts Window
# ==============================
elif [ $Choice -eq 2 ]
then
clear

W2=1
while [ $W2 -ne 0 ]
do
echo "==== [Search For Contact Window] ===="
echo "====================================="
echo "Press [1] To Search By Name"
echo "Press [2] To Search By Phone Number"
echo "Press [0] To Return To Main Menu"
echo "==================================="
read "Your Choice: " Ch1
# ========================
if [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 1 ]
then
# ========================
echo " "
read -p "Enter Name To Search For: " sName
for i in ${Names_Arr[@]}
do
if [ $sName -eq $i ]
then 
clear
printf "Contact Exists\nFull Contact Information\n"
paste <(printf "%s\n" "${Names_Arr[$i]}") <(printf " |  %i\n" "${Phones_Arr[$i]}")
break
else
n=2
let n=n+1
fi
done
if [ $n -gt $Name_Counter ]
then
clear
echo "This Name '$sName' is not in the Book"
fi
# ========================
elif if [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 2 ]
then 
# ========================
echo " "
read -p "Enter Phone Number To Search For: " sNumber
for i in ${Phones_Arr[@]}
do
if [ $sNumber -eq $i ]
then 
clear
printf "Contact Exists\nFull Contact Information\n"
paste <(printf "%s\n" "${Names_Arr[$i]}") <(printf " |  %i\n" "${Phones_Arr[$i]}")
break
else
n=2
let n=n+1
fi
done
if [ $n -gt $Phone_Counter ]
then
clear
echo "This Number '$sNumber' is not in the Book"
fi
# ========================
elif if [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 0 ]
then
W2=0
fi

# =====================


