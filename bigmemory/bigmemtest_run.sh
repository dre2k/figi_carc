#!/bin/bash
#sbatch --export=chr=22 bigmemtest.sh 

for x in {1..9}
do
	sbatch --export=chr=${x} bigmemtest.sh
done
