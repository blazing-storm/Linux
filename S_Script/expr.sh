#!/bin/bash

x=5
y=8

#z=$(($x+$y)) #Right way, Better way

z=`expr $x + $y` #Right way

echo "$x + $y = $z" #prints 5 + 8 = 13

#let command x=( 1 + 3 ) is also right, no space issue
let x=(1+3)

echo "x = $x"
