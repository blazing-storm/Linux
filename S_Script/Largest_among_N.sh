#!/bin/bash

echo "Enter the number of elements: " ; read n

l=0

for((i=1; i<=n ;i++))
do
  echo "Enter the number: " ; read no
  if [ $no -gt $l ]
  then
   l=$no
  fi
done

echo "The largest number is $l."
