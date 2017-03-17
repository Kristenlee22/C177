#! /bin/bash


cd ~/Desktop/eeb-177/lab-work/exercise-9

#download raw data
wget -O canid_occ.csv "https://paleobiodb.org/data1.2/occs/list.csv?base_name=Canidae&show=acconly"


Rscript process_canid_data.R

# Verify that the data formatting worked, and redirect the output into a file called 
# data_summary.txt so that it may be inspected later.
python ~/PyRate/PyRate.py canid_occ_PyRate.py -data_info > data_summary.txt

# And then, run PyRate!
python ~/PyRate/PyRate.py canid_occ_PyRate.py -n 500000 > run_time.txt
