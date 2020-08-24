i#!/bin/bash
# This is a basic bash script.

greeting="hello"

echo $greeting, World \(planet\)

echo '$greeting, World (planet)'

echo "$greeting, World (planet)"

echo
echo

###### Arithmetic operation ####

echo "=== ARITHMATIC OPERATIONS ==="
echo
d=2
e=$((d + 2))
echo $e

echo "Increment operation"
((e++))
echo $e
echo 

echo "Decrement operation"
((e--))
echo $e
echo 

echo "Increment by 5"
((e+=5))
echo $e
echo 

echo "Multiply by 5"
((e*=5))
echo $e
echo
echo

echo "=== COMPARISION OPERATIONS ==="

echo "String comparision operator"
[[ "cat" ==  "cat" ]]
echo $?

[[ "cat" = "dog" ]]
echo $?

echo
echo "Numerical comparision operator"
[[  20 -lt 100 ]]
echo $?

a=""
b="cat"
[[ -z $a && -n $b ]]
echo $?
echo
echo 

echo "=== STRING MANIPULATION ==="
a="Hello"
b="Prakash"
c=$a$b
echo "The length of \"$c\" is ${#c}"

d=${c:3:4}
echo "Substring of length 4 starting from thrid character of \"$c\" is $d"

echo
fruit="apple banana banana cherry"
echo "Fruits: $fruit"

echo
echo "Replacing first occurance of banana with durian"
echo ${fruit/banana/durian}

echo
echo "Replacing all occurances of banana with durian"
echo ${fruit//banana/durian}

echo
echo "Replace only if the search term is the start of the string"
echo $fruit
echo ${fruit/#apple/durian}
echo ${fruit/#banana/durian}

echo "Replace only if the search term is the end of the string"
echo $fruit
echo ${fruit/%banana/durian}
echo ${fruit/%cherry/durian}

echo
echo "Date: $(date +%H-%M-%S)"


printf "Name:\t%s\nID:\t%04d\n" "Prakash" "12"
