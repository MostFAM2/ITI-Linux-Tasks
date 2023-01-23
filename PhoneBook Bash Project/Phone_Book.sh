#!/bin/bash

# Phone Book Program using bash Script 
# ======================================

# Data Base Section
# =================
Name_Counter=4
Phone_Counter=4
# PreSaved Contacts
Names_Arr=(AhmedAli MohamedAli YasserAli)
Phones_Arr=(01010203010 01120301040 01210203010)
# =================

# =============================================
Exit=1
while [ $Exit -ne 0 ]
do
clear
# =================
echo "===== [Welcome To ITI Phone Book] ====="
echo "======================================="
echo " "
echo "Press [1] To List All Conatcts"
echo "Press [2] To Search For Contact"
echo "Press [3] To Add New Contact"
echo "Press [4] To Edit Contact Information"
echo "Press [5] To Remove Contact"
echo "Press [0] To Quit"
echo "======================================"
read -p "Enter Your Choice: " Choice
# =================

if [[ $Choice ]] && [ $Choice -eq $Choice 2>/dev/null ] 
then

# =============================
# [1] List All Contacts Window
# =============================
if [ $Choice -eq 1 ] 
then

clear
W1=1
while [ $W1 -ne 0 ]
do

echo "==== [All Contacts Informations] ===="
echo "====================================="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[@]}") <(printf "| %s\n" "${Phones_Arr[@]}")
echo "=============================="
read -p "To Go To Main Menu Press [0] >>   " T1

if [[ $T1 ]] && [ $T1 -eq $T1 2>/dev/null ] && [ $T1 -eq 0 ]
then
W1=0
else
clear
fi

done 
# ========================

# =============================
# [2] Search For Contact Window
# =============================

# ===================
elif [ $Choice -eq 2 ]
then
# ===================
clear
W2=0
while [ $W2 -lt 3 ]
do
# ===================
echo "==== [Search For Contact Window] ===="
echo "====================================="
echo " "
echo "Press [1] To Search By Name"
echo "Press [2] To Search By Phone Number"
echo "Press [0] To Return To Main Menu"
echo "==================================="
read -p "Your Choice: " Ch1
if [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 1 ]
then
# ========================
read -p "Enter Name To Search For: " sName

index0=0
while [ $index0 -lt $Name_Counter ]
do
if [ ${Names_Arr[$index0]} = $sName ]
then
clear
echo "Contact Exists"
echo "==============="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$index0]}") <(printf "| %s\n" "${Phones_Arr[$index0]}")
echo "==========================================="
sleep 5
W2=8
break
else
let index0=index0+1
fi

if [ $index0 -eq $Name_Counter ]
then
echo "Not Found"
sleep 1
clear
fi
done

# ========================
elif [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 2 ]
then
# ========================
read -p "Enter Number To Search For: " sNumber

index1=0
while [ $index1 -lt $Phone_Counter ]
do
if [ ${Phones_Arr[$index1]} -eq $sNumber ]
then
clear
echo "Contact Exists"
echo "==============="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$index1]}") <(printf "| %s\n" "${Phones_Arr[$index1]}")
echo "==========================================="
sleep 5
W2=8
break
else
let index1=index1+1
fi

if [ $index1 -eq $Phone_Counter ]
then
echo "Not Found"
sleep 1
clear
fi
done

# ========================
elif [[ $Ch1 ]] && [ $Ch1 -eq $Ch1 2>/dev/null ] && [ $Ch1 -eq 0 ]
then
W2=8
# ========================


# ========================
else
echo "Invalid Choice !"
sleep 1
clear
fi
# ========================

let W2=W2+1
done 
# ========================

# =====================

# ==========================
# [3] Add New Contact Window
# ==========================
elif [ $Choice -eq 3 ]
then
clear
echo "==== [Add New Contact Window] ===="
echo "=================================="
echo " "
read -p "Enter Name [Without Spaces]: " N_Name
Names_Arr[$Name_Counter]=$N_Name
let Name_Counter=Name_Counter+1

read -p "Enter Phone Number : " N_Number
Phones_Arr[$Phone_Counter]=$N_Number
let Phone_Counter=Phone_Counter+1

echo " "
echo "New Contact Information"
echo "======================="
echo "Full Name    : ${Names_Arr[$Name_Counter-1]}"
echo "Phone Number : ${Phones_Arr[$Phone_Counter-1]}"
sleep 4
# =====================
 
# ===================================
# [4] Edit Contact Information Window
# ===================================
elif [ $Choice -eq 4 ]
then

W3=1
while [ $W3 -lt 4 ]
do

clear
echo "==== [Edit Contact Information Window] ===="
echo "==========================================="
echo " "
read -p "Enter Phone Number: "  eNumber
# ========================

if [[ $eNumber ]] && [ $eNumber -eq $eNumber 2>/dev/null ]
then

index=0
while [ $index -lt $Phone_Counter ]
do

if [ ${Phones_Arr[$index]} -eq $eNumber ]
then

clear
echo "Contact Old Information"
echo "======================="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$index]}") <(printf "| %s\n" "${Phones_Arr[$index]}")
echo "==========================================="
read -p "Enter New Name: " New_Name
Names_Arr[$index]=$New_Name
read -p "Enter New Phone Number: " New_Number
Phones_Arr[$index]=$New_Number
echo "Done ..."
sleep 2
clear
echo "Contact New Information"
echo "======================="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$index]}") <(printf "| %s\n" "${Phones_Arr[$index]}")
echo "==========================================="
sleep 3
W3=8
break
else
let index=index+1
fi

done

if [ $index -eq $Phone_Counter ]
then
clear
echo "Not Found"
sleep 1
fi

else
echo "Not Found ... Must Enter Valid Numbers"
sleep 2
fi 

let W3=W3+1
done
# =====================

# =========================
# [5] Remove Contact Window
# =========================
elif [ $Choice -eq 5 ]
then
# ===================
clear
W2=0
while [ $W2 -lt 3 ]
do
# ===================
echo "==== [Remove Contact Window] ===="
echo "================================="
echo " "
echo "Press [1] To Delete using Name"
echo "Press [2] To Delete using Phone Number"
echo "Press [0] To Return To Main Menu"
echo "==================================="
read -p "Your Choice: " Ch2
if [[ $Ch2 ]] && [ $Ch2 -eq $Ch2 2>/dev/null ] && [ $Ch2 -eq 1 ]
then
# ========================
echo " "

read -p "Enter Name To Delete: " dName

indexD=0
while [ $indexD -lt $Name_Counter ]
do
if [ ${Names_Arr[$indexD]} = $dName ]
then
clear
echo "Contact Information"
echo "==================="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$indexD]}") <(printf "| %s\n" "${Phones_Arr[$indexD]}")
echo "==========================================="
read -p "Are You Really Want To Delete This Contact ? [Y/N] : " del
case $del in
Y | y) 
unset Names_Arr[$indexD]
let Name_Counter=Name_Counter-1
unset Phones_Arr[$indexD]
let Phone_Counter=Phone_Counter-1
echo "Done ..."
sleep 2
W2=8
break
;;
N | n)
W2=8
break 
;;
esac

else
let indexD=indexD+1
fi

if [ $indexD -eq $Name_Counter ]
then
echo "Not Found"
sleep 1
clear
fi
done

# ========================
elif [[ $Ch2 ]] && [ $Ch2 -eq $Ch2 2>/dev/null ] && [ $Ch2 -eq 2 ]
then
# ========================
echo " "

read -p "Enter Number To Delete: " dNumber

indexD=0
while [ $indexD -lt $Phone_Counter ]
do
if [ ${Phones_Arr[$indexD]} -eq $dNumber ]
then
clear
echo "Contact Information"
echo "==================="
echo "Name              Phone Number"
echo "=============================="
paste <(printf "%s\n" "${Names_Arr[$indexD]}") <(printf "| %s\n" "${Phones_Arr[$indexD]}")
echo "==========================================="
read -p "Are You Really Want To Delete This Contact ? [Y/N] : " del
case $del in
Y | y) 
unset Names_Arr[$indexD]
let Name_Counter=Name_Counter-1
unset Phones_Arr[$indexD]
let Phone_Counter=Phone_Counter-1
echo "Done ..."
sleep 2
W2=8
break
;;
N | n)
W2=8
break 
;;
esac

else
let indexD=indexD+1
fi

if [ $indexD -eq $Phone_Counter ]
then
echo "Not Found"
sleep 1
clear
fi

done

# ========================
elif [[ $Ch2 ]] && [ $Ch2 -eq $Ch2 2>/dev/null ] && [ $Ch2 -eq 0 ]
then
W2=8
# ========================


# ========================
else
echo "Invalid Choice !"
sleep 1
clear
fi
# ========================

let W2=W2+1
done 
# ========================

# =====================
# =====================
# [0] Exit The Program
# =====================
elif [ $Choice -eq 0 ]
then 
clear
echo " "
echo "===================="
echo "System is Now Closed"
echo "===================="
echo " "
echo " "
Exit=0
# =====================

# =====================
else
echo "Invlid Choice -- Try Again !"
sleep 2
clear
fi
# =====================

# end of checking if integer or not
fi

done



