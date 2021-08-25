#!/bin/bash

# for i //This works, actually i is same as arg :p
# do echo "$i"
# printf '%s\n' "$arg" //This is better than echo
# done

cd
for arg
do
   mkdir "$arg"
   cd "$arg"
   touch "file$arg"
   cd ..
done

# for ((i=1; i<=$#; i++)) //This works as well
# do
# printf '%s\n' "Arg $i: ${!i}"
# done
