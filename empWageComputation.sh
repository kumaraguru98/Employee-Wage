welcome!
#! /bin/bash -x
ispresent=1
isfulltime=2
wageperhour=20
empcheck=$(($RANDOM%2))
case $empcheck in
$isfulltime)
	wagehour=8
$isparttime)
	wagehour=4
*)
	wagehour=0
esac
wage=$(($wagehour * $wageperhour))

