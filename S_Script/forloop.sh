#!/bin/bash

# {START..END..INCREMENT} or $(seq START INCREMENT END)

# for i in {0..10..2}
for i in $(seq 0 2 10)  #both ways are correct
do
  echo "Welcome $i times"
done
