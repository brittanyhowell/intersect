#!/bin/bash

# Invoked by:
#
# sbatch intersect3.sh
#

#SBATCH -p batch
#SBATCH -N 1 
#SBATCH -n 8  				# Asking for cores
#SBATCH --time=1-00:00  	# Days taken
#SBATCH --mem=30GB 			# memory thought to be required

# Notification configuration 
#SBATCH --mail-type=END                                         
#SBATCH --mail-type=FAIL                                        
#SBATCH --mail-user=brittany.howell@student.adelaide.edu.au      

# Source files
#DATA=/data/rc003/Brittany/Data/Intersect-21-3/source/22-3
#OUT=/data/rc003/Brittany/Data/Intersect-21-3/output

#echo ${DATA}
#echo ${OUT}
#pwd

# Load the necessary modules
module load BEDTools/2.25.0-foss-2015b

# Run bedtools intersect
bedtools intersect -a ${DATA}/Mut-F2-Rep1_CGTACG_L007.tophat2_pe.mm10.bed  -b ${DATA}/L1_Mouse_bothorf.bed  > ${OUT}/intersectData3.bed
2> output.log
