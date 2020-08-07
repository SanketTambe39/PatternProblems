#!/bin/bash -x

read -p "Enter your First name :" firstName
read -p "Enter your Last name :" lastName

namepattern="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

if [[ $firstName =~ $namepattern && $lastName =~ $namepattern  ]]
then
	echo " Your name is perfect "
else
	echo " Check your Name both should be start with upper case. "
fi

