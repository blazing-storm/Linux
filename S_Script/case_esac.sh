#!/bin/bash

# FRUIT="kiwi"
read FRUIT

case "$FRUIT" in
   "apple") echo "Apple pie is quite tasty." ;;
   "banana") echo "I like banana." ;;
   "kiwi") echo "New Zealand is famous for kiwi." ;;
   *) echo "Default Condition" ;; 
esac
