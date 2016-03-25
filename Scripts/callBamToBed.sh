#!/bin/bash


cd /data/rc003/Brittany/intersect/bam/Henmt1mRNAseq_mouse

 sbatch bamToBed.sh

 mv *.bed /data/rc003/Brittany/intersect/bed/
 