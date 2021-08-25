#!/bin/bash

arr=(apple bat cat dog elephant snake)

#print first element
echo ${arr[0]}
echo ${arr:0}

#display all elements
echo ${arr[@]}
echo ${arr[@]:0}

#display all elements except first one
echo ${arr[@]:1}

#display elements in a range
echo ${arr[@]:1:4}

#length of first element
echo ${#arr[0]}
echo ${#arr}

#number of elements
echo ${#arr[*]}
echo ${#arr[@]}

#replacing substring
echo ${arr[@]//a/A}
exit 0
