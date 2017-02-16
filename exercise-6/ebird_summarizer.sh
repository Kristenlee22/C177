#!/bin/bash

FINAL_NAME=$(echo "formatted_$1") 

cat $1 | tr "\r" "\n" | sed 's/,\s/ /g' > $FINAL_NAME



python does_something.py $FINAL_NAME


