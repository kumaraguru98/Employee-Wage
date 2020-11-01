
#! /bin/bash -x

echo "welcome to employeewage computation"
ispresent=1
randomcheck=$(($RANDOM%2))
if [ $randomcheck -eq 0 ]
then
	echo "employee absent"
else
	echo "employee present"
fi
