welcome!
#! /bin/bash -x
ispresent=1
isfulltime=2
totalsalary=0
emprateperhour=20
noofworkingday=20
monthwage=0
totalworkingday=0
totalemphr=0
maxhrinmonth=100
function workhour() {
local empcheck=$1
case $empcheck in
	$isfulltime)
		emphour=8
	$isparttime)
		emphour=4
	*)
		emphour=0
esac
rcho $emphour
while [[ $totalemphr -lt $maxhrinmonth -a $totalworkingday -lt $noofworkingday ]]
do
	((totalworkingday++))
	empcheck=$(($RANDOM%2));
	emphr="$( workhour $empcheck )"
	totalemphr=$(( totalemphr+emphour ))
	dailywage=$(( $emphr * $emprateperhour ))
	monthlywage=$(( monthwage+dailywage ))
done
echo dailywage of employee $dailywage
echo monthwage of employee $monthlywage
