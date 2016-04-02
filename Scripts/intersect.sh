#!/bin/bash

# Invoked by:
#
# REF=/data/rc003/Brittany/intersect/location READ=/data/rc003/Brittany/intersect/bed OUT=/data/rc003/Brittany/intersect/out sbatch intersect.sh 
#

#SBATCH -p batch
#SBATCH -N 1 
#SBATCH -n 8  				
#SBATCH --time=1-00:00  	
#SBATCH --mem=30GB 			

# Notification configuration 
#SBATCH --mail-type=END                                         
#SBATCH --mail-type=FAIL           
#SBATCH --mail-user=brittany.howell@student.adelaide.edu.au      


# Load the necessary modules
module load BEDTools/2.25.0-foss-2015b

# Run bedtools intersect
for iRef in *.bed; do
 for iRead in ${READ}/*; do

 	# Take file names and change them to make a nice file name
 	iNameS=$(echo $iRead | sed 's|.*\/\(.*\)|\1|')
 	iRefEx=${iRef%.bed}
 	iName=$iRefEx-$iNameS
 bedtools intersect -a $iRead  -b $iRef  -f 0.5 > ../out/$iName
 done 
done 
2> output.log
