#!/bin/bash

# To find the inequality between two numbers

read a
read b

if (( $a == $b ))
then
  echo "Both are equal."

elif (( $a > $b ))
then
  echo "a is greater than b"
  
else
  echo "b is greater than a"
fi
