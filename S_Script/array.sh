#!/bin/bash

# Array Declarations

# Method 1 Indirect Declaration
# arr[1]=10
# echo ${arr[1]}

#Method 2 Explicit Declaration
# declare -a arr
# arr[5]=10
# echo ${arr[5]}

#Method 3 Compound Assignment
arr=(10 20 30 40 50)
# arr=([1]=10 [2]=20 [3]=30) To assign values as per indexing
echo ${arr[2]}  # indexing starts from 0

# Using ksh shell
# set -A arr 10 20 30 40 50
