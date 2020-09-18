#!/bin/bash


#FILENAME=/home/gad/Downloads/india_stations_stn.txt

FOLDER='/home/gad/data'
ANOTHER='/home/gad/data'

for X in $(seq 2000 2016); do

	#rmdir $ANOTHER/gsod_$X/$X
	 
	#Y=-$X.op.gz

	OIFS=$IFS 
	IFS=' ' 

	cd $FOLDER/gsod_$X
	mkdir $ANOTHER/gsod_$X/$X

	while read file; do 
		mv "$file"-$X.op.gz $ANOTHER/gsod_$X/$X; done < /home/gad/data/india_stations_stn.txt

done
