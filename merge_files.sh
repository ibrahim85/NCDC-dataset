
#Write the header of the first file into the output:
##head -1 file1.txt > all.txt

#-- head -1 gets 1 first lines of the file.

#Add the content of all the files:

##tail -n +2 -q file*.txt >> all.txt

#-------------------------------------------------------------------
#!/bin/bash

	list=(*.op)
	head -1 all-2000.op > india_all_stations.op;
	tail -q -n +2 "${list[@]}" >> india_all_stations.op

