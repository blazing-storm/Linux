#!/bin/bash

echo "The filename is $0."
echo "No. of arguments passed = $#"

# If expression is a shell command, then it will be assumed true
# if returns 0 after execution. If it is a Boolean expression, 
# it would be true if it returns true.
if (( !$? ))
then
  echo "The exit value of last command = $?"
fi

echo "The second argument is $2."

# Variable $* is same as $@ except when it is double quoted.
# When enclosed in double quotes, "$*" expands to $1c$2c$3c...,
# where c is the first character of $IFS, bash's internal field separator
# IFS is used for word splitting, it's default value is space, tab or newline

IFS=", " # space inside "" doesn't have effect, only ,

echo "$*" # echo $*

echo $@

