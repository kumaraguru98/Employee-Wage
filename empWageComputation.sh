welcome!
#! /bin/bash -x
ispresent=1
isfulltime=2
wageperhour=20
randomcheck=$(($RANDOM%2))
if [ $isfulltime -eq $randomcheck ]
then
	wagehour=8
elif [ $isparttime -eq $randomcheck ]
then
	wagehour=4
else
	wagehour=0
fi
wage=$(($wagehour * $wageperhour))

