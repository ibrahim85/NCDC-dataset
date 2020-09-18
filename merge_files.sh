
#Write the header of the first file into the output:
##head -1 file1.txt > all.txt

#-- head -1 gets 1 first lines of the file.

#Add the content of all the files:

##tail -n +2 -q file*.txt >> all.txt

#-------------------------------------------------------------------
#!/bin/bash

FOLDER='/home/gad/data'
ANOTHER='/home/gad/data'

for X in $(seq 2000 2016); do
        cd $ANOTHER/gsod_$X/$X

	for f in $ANOTHER/gsod_$X/$X/*.op.gz
	do 
		gunzip $f
		#echo "done: '"$f"' "
	done 

	list=(*.op)
	head -1 420270-99999-$X.op > all-$X.op;
	tail -q -n +2 "${list[@]}" >> all-$X.op

done


