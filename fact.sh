#!/bin/bash

echo "checking the array and factArray"

read -p "Enter a number :: " num

count=0

for i in $(factor $num)
do
	if [[ $i != "$num:" ]]
	then
		factArray[((count++))]=$i
	fi
done

echo ${factArray[@]}
