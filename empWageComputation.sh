welcome!
#! /bin/bash -x
ispresent=1
randomcheck=$(($RANDOM%2))
if [ $randomcheck -eq 0 ]
then
	echo "employee absent"
else
	echo "employee present"
fi
