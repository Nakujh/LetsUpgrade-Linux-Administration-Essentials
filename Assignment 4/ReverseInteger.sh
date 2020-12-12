#!/bin/bash

read -p "Enter a number: " input_value

[[ "$input_value" == ?(-)+([0-9]) ]] && echo "$input_value is an integer" || { echo "$input_value not an integer"; exit 1; }

string_length=`expr length "$input_value"`

for ((i = "$string_length" - 1; i >= 0; i--))
do
 output_value="$output_value${input_value:$i:1}"
done

echo "$output_value"
