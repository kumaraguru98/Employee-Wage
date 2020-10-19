welcome!
#! /bin/bash -x
ispresent=1
randomcheck=$(($RANDOM%2))
wageperhour=20
fulldayhour=8
if [ $randomcheck -eq 0 ]
then
	echo "employee absent"
	wage=0
else
	echo "employee present"
	wage=$(($wageperhour * $fulldayhour))

fi
