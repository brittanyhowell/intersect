#!/bin/bash



for f in *.bam ; do 

bedtools bamtobed -i $f > $f.bed;

 done
2> out.log


