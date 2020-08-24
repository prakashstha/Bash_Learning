#!/usr/local/bin/bash
# This is a basic bash script.

echo "== NUMERICAL COMPARISION"
a=5
if [ $a -gt 10 ]; then
	echo "$a is greater than 10"
else
	echo "$a is not greater than 10"
fi

echo
echo "=== REGULAR EXPRESSION ==="
a="This is my string #1."
if [[ $a =~ [0-9]+ ]]; then
	echo "There are numbers in string \"$a\"."
else
	echo "There is no numbers in the string \"$a\"."
fi

echo 
echo "=== WHILE LOOP ==="
i=0
while [ $i -le 10 ]; do
	echo "i:$i"
	((i++))
done

echo 
echo "=== UNTIL LOOP ==="
j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j++))
done

echo 
echo "=== FOR LOOP ==="
for i in 1 2 3
do
	echo $i
done

echo
echo "Using braces expansion."
for i in {1..10};
do
	echo i:$i;
done

echo 
echo "Using C/C++ like structure."
for (( i=1; i<=10; i++ ));
do 
	echo $i;
done

echo
echo "Using array."
arr=("apple" "banana" "cherry")
for i in ${arr[@]};
do 
	echo $i;
done

echo 
echo "Using Associative Array, i.e., key-value typed, array."

declare -A arr1
arr1["name"]="Prakash"
arr1["id"]="1234"

for i in "${!arr1[@]}";
do 
	echo "$i: ${arr1[$i]}";
done

echo 
echo "Using command substitution."

for i in $(ls);
do
	echo "$i"
done


echo 
echo "=== CASE STATEMENT ==="
a="cat"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No Match!";;
esac