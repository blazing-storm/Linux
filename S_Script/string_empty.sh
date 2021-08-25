#!/bin/bash

# -n to check if string is not NULL, -z to check if string is NULL
# Doubt -n is always giving true
str=0 ;

if [ -n $str ]
then
  echo "String is not empty"
else
  echo "String is empty"
fi
