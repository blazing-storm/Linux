#!/bin/bash

echo "Enter the first number: " ; read a
echo "Enter the second number: " ; read b
echo "Enter the third number: " ; read c

if [ $a -gt $b -a $a -gt $c ]
then
  echo "$a is greater"

elif (( $b > $c ))
then
  echo "$b is greater"

else
  echo "$c is greater"
fi
