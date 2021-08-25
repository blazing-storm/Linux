#!/bin/bash

# Access all the items in an array by using * and @

# name=(Mayank Kris Ishu Riya Sania Lucky)

name[2]=Mayank
name[3]=Kris
echo "First Method: ${name[*]}"

echo "Second Method: ${name[@]}"
