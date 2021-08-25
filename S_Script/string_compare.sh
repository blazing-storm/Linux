#!/bin/bash

# This script compares the ASCII value of the char turn by turn
read str1
read str2

# if [ $str1 \> $str2 ] // To check for greater
if [ $str1 \< $str2 ]
then
  echo "$str1 is less than $str2"

else
  echo "$str1 is not less than $str2"
fi
