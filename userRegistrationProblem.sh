#!/bin/bash -x

#read -p "Enter your First name :: " firstName
#read -p "Enter your Last name :: " lastName

read -p "Please Enter vaild email address ::" mail

#nameValidation="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

#if [[ $firstName =~ $nameValidation && $lastName =~ $nameValidation  ]]
#then
#	echo " Your name is perfect "
#else
#	echo " Check your Name both should be start with upper case. "
#fi

mailValidation="^([a-zA-Z_]{1}[a-zA-Z0-9]+)(([_.-+]?[a-zA-Z0-9]+)*)@([a-z0-9]+)\.([a-zA-Z]{2,5})([.]{0,1}([a-zA-Z]{2,5})*)$"

if [[ $mail =~ $mailValidation ]]
then
	echo " You just entered a valid email id "
else
	echo " You just entered a invalid email id "
fi
