#!/bin/bash

FOLDER='/home/gad/data'
ANOTHER='/home/gad/data/stations_file'

cd $ANOTHER
for X in $(seq 2000 2016); do
	while read file; do
		head -1 $FOLDER/gsod_$X/$X/420270-99999-$X.op > $ANOTHER/$file-merge.op; done < /home/gad/india_stations_stn.txt
done
for X in $(seq 2000 2016); do
	while read file; do
		tail -q -n +2 $FOLDER/gsod_$X/$X/$file-$X.op >>  $ANOTHER/$file-merge.op; done < /home/gad/india_stations_stn.txt
done

#cd $ANOTHER

#for i in {001..003}; do cat ../test*/"$i"*.txt > "$i"-merge.txt ; done
