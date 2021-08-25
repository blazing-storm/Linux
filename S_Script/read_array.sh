#!/bin/bash
# To read an array
read -a arr

i=0
while [ $i -lt ${#arr[@]} ]
do
  # To print the ith element
  echo ${arr[$i]}

  i=`expr $i + 1`
done
