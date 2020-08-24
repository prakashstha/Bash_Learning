#!/usr/local/bin/bash
# This is a basic bash script.

function greet {
	echo "Hi, $1! What a nice $2!"
}

echo "And now, a greeting!"

greet Prakash Shrestha

function numberthings {
	i=1
	for f in $@; do  # all arguments passed
		echo $i: $f
		((i+=1))
	done
}

numberthings $(ls)

