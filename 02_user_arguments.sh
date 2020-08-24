#!/usr/local/bin/bash


# echo $1 # first CLI argument
# echo $2 # second CLI argument

# for each CLI arguments.
for i in $@;
do
	echo $i
done

echo "There were $# arguments."

# echo "USING FLAGS"
# if 'flag' (e.g., a), no parameter needed.
# if 'flag:' (e.g., u:), parameter needed.
# if ':' is used in the front, it can capture it within case statement.
echo 
echo
while getopts :u:p:ab option; do
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "Got the A flag";;
		b) echo "Got the B flag";;
		?) echo "I don't know what $OPTARG is!";;
	esac
done

echo "User: $user / Pass: $pass"
	

echo
echo
echo "=== USER INPUT (plain, secret, and inline) ==="
echo "What is your name?"
read name

echo "What is your password?" 
read -s pass

# inline prompt
read -p "What is you favorite animal? " animal

echo name: $name, pass: $pass, and animal: $animal


echo
echo
echo "=== ENUMERATED LIST USING SELECT ==="
echo "Please select an animal from the list."
select animal in cat dog tiger quit
do 
	echo "You select $animal."
	break
done

echo
echo "Please select an optoin"
select option in cat dog quit
do
	case $option in
		cat) echo "Cat likes to sleep.";;
		dog) echo "Dog likes to play catch.";;
		quit) break;;
		*) echo "I am not sure what it is.";;
	esac
done

