#!/bin/bash

min_string_length=8

read -sp "Enter password string: " input_string
echo

string_length=`expr length "$input_string"`

if [ $string_length -lt $min_string_length ]
then
{
  echo "Password length must be greater than or equal to $min_string_length";
  exit 1;
}
fi

if [[ "$input_string"  =~ [a-z] ]] && [[ "$input_string"  =~ [0-9] ]] && [[ "$input_string" =~ [A-Z] ]]
then
  echo "Password validated!!!"
else
  echo "Password must contain numbers, lower case letters and upper case letters"
fi
