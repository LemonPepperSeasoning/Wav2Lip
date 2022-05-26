#! /bin/bash

mkdir -p dataset2/test

files=`ls dataset2/mp4 | grep id`

echo $files

for file in $files; do 
	cp -r dataset2/mp4/"$file"/* dataset2/test 
	#echo -r dataset2/mp4/"$file"*/ dataset2/mp4/test; 
done
	
#cp -r id00817/* test
