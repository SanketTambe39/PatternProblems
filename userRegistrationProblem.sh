#!/bin/bash

read -p "Enter your First name :: " firstName
read -p "Enter your Last name :: " lastName

read -p "Please Enter vaild email address ::" mail

read -p "Enter Mobile Number (Ex. +91 8467512486 ) ::" num

read -p "Enter password ::" password


nameValidation="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

if [[ $firstName =~ $nameValidation && $lastName =~ $nameValidation  ]]
then
	echo " Your name is perfect "
else
	echo " Check your Name both should be start with upper case. "
fi

mailValidation="^([a-zA-Z_]{1}[a-zA-Z0-9]+)(([_.-+]?[a-zA-Z0-9]+)*)@([a-z0-9]+)\.([a-zA-Z]{2,5})([.]{0,1}([a-zA-Z]{2,5})*)$"

if [[ $mail =~ $mailValidation ]]
then
	echo " You just entered a valid email id "
else
	echo " You just entered a invalid email id "
fi

numberValidation="^[+]{1}[0-9]{1,3}[ ]{1}[0-9]{10}$"

if [[ $num =~ $pattern3 ]]
then
        echo "Mobile number is valid"
else
        echo "Mobile number is invalid"
fi

if [[ ${#password} -ge 8 && "$password" == *[[:lower:]]* && "$password" == *[[:upper:]]* && "$password" == *[0-9]* && "$password" == *([[@#^*%]]{1})* ]]
then
        echo "Password Requriments are fullfilled"
else
        echo "Password Requriments are not completed "
fi
