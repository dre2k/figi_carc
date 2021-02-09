#!/bin/bash
#SBATCH --time=23:00:00
#SBATCH --ntasks=1
#SBATCH --mem=16GB
#SBATCH --account=dconti_250

module load gcc/8.3.0
module load openblas/0.3.8
module load r/3.6.3
module load unzip

Rscript bigmemtest.R ${chr}

