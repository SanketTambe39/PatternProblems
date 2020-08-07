#!/bin/bash -x

echo "Enter your first name :"

	read firstName

	pattern="^([[:upper:]]{1})([[:lower:]]{2})([a-z]*)$"

	if [[ $firstName =~ $pattern ]]
	then
		echo "First Name is valid"
	else
		echo "First Name is invalid"
	fi
