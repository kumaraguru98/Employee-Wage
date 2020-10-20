welcome!
#! /bin/bash -x
ispresent=1
isfulltime=2
totalsalary=0
emppperhour=20
noofworkingday=20
for((day=1;day<=$noofworkingday;day++))
do
	empcheck=$(($RANDOM%2))
	case $empcheck in
		$isfulltime)
			emphour=8
		$isparttime)
			emphour=4
		*)
			emphour=0
		esac
	salary=$(($emphour * $empperhour))
	totalsalary=$(($totalsalary * $salary))
done
