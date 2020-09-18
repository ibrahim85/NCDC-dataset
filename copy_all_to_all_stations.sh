#!/bin/bash


#FILENAME=/home/gad/Downloads/india_stations_stn.txt

FOLDER='/home/gad/data'
ANOTHER='/home/gad/data/all_stations_per_year'

for X in $(seq 2000 2016); do

	OIFS=$IFS 
	IFS=' ' 

	cd $FOLDER/gsod_$X/$X
	
	cp all-$X.op $ANOTHER || cp all.op $ANOTHER

done
