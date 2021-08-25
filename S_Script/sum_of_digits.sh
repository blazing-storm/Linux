#!/bin/bash

echo "Enter a Number:"

read N

ori=$N

sum=0
r=0

while (($N!=0)) # while [ $N -gt 0 ] also works
  do
    r=$(($N%10))
    N=$(($N/10))
    sum=$(($sum + $r))
  done

echo "Sum of digits of $ori is $sum"
