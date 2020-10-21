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
empcheck=$(($RANDOM%2))
function workhour() {
localempcheck=$1
case $empcheck in
	$isfulltime)
		emphour=8
	$isparttime)
		emphour=4
	*)
		emphour=0
esac
echo $emphr
}
while [[ $totalemphr -lt $maxhrinmonth -a $totalworkingday -lt $noofworkingday ]]
do
	((totalworkingday++))
	empcheck="$( workhour $empcheck )"
	totalemphr=$(( totalemphr+emphour ))
	dailywage=$(( $emphr * $emprateperhour ))
	monthlywage=$(( monthwage+dailywage ))
done
totalwage=$(( totalemphr * emprateperhour ));
echo dailywage of employee $dailywage
echo monthwage of employee $monthlywage
echo totalwage of emp;oyee $totalwage
echo dailwage of alldays : ${dailywage[@]}
