#!/bin/bash

FINAL_NAME=$(echo "formatted_$1") 

cat $1 | tr "\r" "\n" | sed 's/,\s/ /g' > $FINAL_NAME



python does_something.py $FINAL_NAME

# to run: eeb177-student@eeb177-VirtualBox:~/Desktop/eeb-177/lab-work/exercise-6$ ./ebird_summarizer.sh eBird_Taxonomy_v2016_9Aug2016.csv 

