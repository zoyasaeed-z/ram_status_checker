#!/bin/bash

echo "-------------------- CHECKING RAM STATUS ---------------------"
echo "THE FREE RAM SPACE IS IS "
free -mt
echo "-------------------------------------------------------------"

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')


#default_threshold
default_threshold=6000
echo "THE DEFAULT THRESHOLD IS $default_threshold"

echo "YOU WANT TO ENTER THE THRESHOLD "
echo "IF YOU WANT TO ENTER CHOSE Y OTHERWISE PRESS N SO BY DEFAULT THRESHOLD IS CHOSE"
read -p " CHOSE Y(YES)/N(NO) : " ans


if [[ "$ans" == "Y" || "$ans" == "y" ]];then
	read -p "ENTER THE THRESHOLD : " threshold
else
	threshold=$default_threshold
fi

if [[ "$FREE_SPACE" -lt "$threshold" ]];then
	echo " WARNING THE RAM  SPACE IS RUNNING LOW "
	echo " THE REMAING RAM SPACE IS $FREE_SPACE"
else
	echo "THE REMAING RAM SPACE IS $FREE_SPACE"
fi
echo "---------------------------------------------------"

