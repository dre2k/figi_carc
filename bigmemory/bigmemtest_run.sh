#!/bin/bash
#sbatch --export=chr=22 bigmemtest.sh 

for x in {1..22}
do
	sbatch --export=chr=${x} bigmemtest.sh
done
