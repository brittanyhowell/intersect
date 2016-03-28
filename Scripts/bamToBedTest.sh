#!/bin/bash

# Invoked by:
#
# FILEPATH=/data/rc003/Brittany/intersect/bam/Henmt1mRNAseq_mouse OUTPATH=/data/rc003/Brittany/intersect/bed/ sbatch bamToBed.sh
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

# Load the necessary modules
module load BEDTools/2.25.0-foss-2015b



bedtools bamtobed -i Mut-F2-Rep1_CGTACG_L007.tophat2_pe.mm10.bam > ${OUTPATH}/$f.bed