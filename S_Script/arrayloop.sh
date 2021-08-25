#!/bin/bash

# To declare a static array
arr=(1 12 31 4 5)

i=0
# Loop upto size of array, starting from index, i=0
while [ $i -lt ${#arr[@]} ]
do
  # To print the ith element
  echo ${arr[$i]}

  i=`expr $i + 1`
done
