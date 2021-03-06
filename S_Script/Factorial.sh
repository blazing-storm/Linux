#!/bin/bash

fact=1
echo -e "Enter a number: "
read n
#if entered value is less than 0
if [ $n -le 0 ]
then
  echo "Invalid Number"
  exit
fi

#factorial logic
if [ $n -gt 0 ] ; then
  for((i=$n;i>=1;i--))
  do
    fact=`expr $fact \* $i`
  done
fi

echo "The factorial of $n is $fact."
