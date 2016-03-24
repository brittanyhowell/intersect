#!/bin/bash

FILEPATH=/data/rc003/Brittany/intersect/bam
OUTPATH=/data/rc003/Brittany/intersect/bed

for f in (ls ${FILEPATH}); do  (bedtools bamtobed -i $f > ${OUTPATH}/(ls ${FILEPATH}).bed); done