#! /bin/bash

#### 
#
# Used to restructure files for the full voxceleb dataset. (on the hard drive)
# Creates symbolic links
#
####

mkdir -p "/media/myuser1/Seagate Expansion Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/test"

files=`ls /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/dev/mp4`
output_path=`ls /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/test`


echo $files | wc 
echo $output_path | wc

for file in $files; do 
	# cp -r dataset2/mp4/"$file"/* dataset2/test 
	ln -s --backup=numbered /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/dev/mp4/"$file"/* /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/test 
	#echo -r dataset2/mp4/"$file"*/ dataset2/mp4/test; 
done

# ln -s /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/dev/mp4/id00012/* /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/test
# ln -s /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/dev/mp4/id00015/* /media/myuser1/Seagate\ Expansion\ Drive/p4p-g24-2022/VoxCeleb2-Dataset/raw_dataset/test

#cp -r id00817/* test
