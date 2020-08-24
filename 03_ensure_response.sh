#!/usr/local/bin/bash

if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires three arguments -- name, ID, and gender.
	EOM
else 
	echo "Name: $1"
	echo "ID: $2"
	echo "Gender: $3"

fi

read -p "Your favorite animal? " a
while [[ -z $a ]]; do
	echo "I need an answer."
	read -p "Your favorite animal? " a
done

echo "You selected $a."